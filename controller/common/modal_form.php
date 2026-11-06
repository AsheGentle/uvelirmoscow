<?php
class ControllerCommonModalForm extends Controller {
    private function checkField($field, $value) {
        if ($field === 'name') {
            $value = preg_replace('/\s+/u', ' ', trim(html_entity_decode((string)$value, ENT_QUOTES, 'UTF-8')));
            if ($value === '') {
                return array('value' => $value, 'error' => 'Пожалуйста, укажите ваше имя');
            }
            if (utf8_strlen($value) > 64 || !preg_match('/^[А-Яа-яЁёA-Za-z]+(?: [А-Яа-яЁёA-Za-z]+)*$/u', $value)) {
                return array('value' => $value, 'error' => 'Имя может содержать только буквы и пробелы');
            }
        } elseif ($field === 'phone') {
            $value = preg_replace('/\D+/', '', (string)$value);
            if (strlen($value) === 11 && ($value[0] === '7' || $value[0] === '8')) {
                $value = substr($value, 1);
            }
            if (strlen($value) !== 10) {
                return array('value' => $value, 'error' => 'Введите номер в формате +7 (XXX) XXX-XX-XX');
            }
        }

        return array('value' => $value, 'error' => '');
    }

    public function validateField() {
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $field = isset($this->request->post['field']) ? $this->request->post['field'] : '';
        if ($this->request->server['REQUEST_METHOD'] !== 'POST' || !in_array($field, array('name', 'phone'), true)) {
            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 400 Bad Request');
            $this->response->setOutput(json_encode(array('error' => 'Недопустимый запрос.')));
            return;
        }

        $value = isset($this->request->post['value']) ? $this->request->post['value'] : '';
        $this->response->setOutput(json_encode($this->checkField($field, $value), JSON_UNESCAPED_UNICODE));
    }

    public function send() {
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        if ($this->request->server['REQUEST_METHOD'] !== 'POST') {
            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 405 Method Not Allowed');
            $this->response->setOutput(json_encode(array('error' => 'Недопустимый запрос.')));
            return;
        }

        $post = $this->request->post;
        $name_result = $this->checkField('name', isset($post['name']) ? $post['name'] : '');
        $phone_result = $this->checkField('phone', isset($post['phone']) ? $post['phone'] : '');
        $name = $name_result['value'];
        $phone_digits = $phone_result['value'];

        $errors = array();
        if ($name_result['error']) $errors['name'] = $name_result['error'];
        if ($phone_result['error']) $errors['phone'] = $phone_result['error'];
        if (!isset($post['consent']) || (string)$post['consent'] !== '1') {
            $errors['consent'] = 'Пожалуйста, дайте согласие на обработку персональных данных';
        }

        $kinds = array('callback' => 'Заказать звонок', 'cost' => 'Рассчитать стоимость', 'idea' => 'Обсудить идею', 'photo' => 'Прислать фото');
        $kind = isset($post['form_kind']) ? (string)$post['form_kind'] : '';
        if (!isset($kinds[$kind])) {
            $this->response->setOutput(json_encode(array('error' => 'Недопустимый запрос.')));
            return;
        }

        $file = isset($this->request->files['photo']) ? $this->request->files['photo'] : array();
        $upload = !empty($file) && isset($file['error']) && (int)$file['error'] !== UPLOAD_ERR_NO_FILE;
        $extension = '';
        if ($upload) {
            if ((int)$file['error'] !== UPLOAD_ERR_OK || (int)$file['size'] > 5 * 1024 * 1024 || !is_uploaded_file($file['tmp_name'])) {
                $errors['photo'] = 'Не удалось загрузить фото (максимум 5 МБ)';
            } else {
                $types = array('image/jpeg' => 'jpg', 'image/png' => 'png', 'image/webp' => 'webp');
                $mime = (new finfo(FILEINFO_MIME_TYPE))->file($file['tmp_name']);
                if (!isset($types[$mime])) {
                    $errors['photo'] = 'Допустимы только JPG, PNG и WebP';
                } else {
                    $extension = $types[$mime];
                }
            }
        }
        if ($errors) {
            $this->response->setOutput(json_encode(array('errors' => $errors), JSON_UNESCAPED_UNICODE));
            return;
        }

        $ip = isset($this->request->server['REMOTE_ADDR']) ? $this->request->server['REMOTE_ADDR'] : '';
        $photo = '';
        if ($upload) {
            $photo = bin2hex(random_bytes(16)) . '.' . $extension;
            if (!move_uploaded_file($file['tmp_name'], DIR_UPLOAD . $photo)) {
                $this->response->setOutput(json_encode(array('errors' => array('photo' => 'Не удалось загрузить фото')), JSON_UNESCAPED_UNICODE));
                return;
            }
        }

        $phone = '+7 (' . substr($phone_digits, 0, 3) . ') ' . substr($phone_digits, 3, 3) . '-' . substr($phone_digits, 6, 2) . '-' . substr($phone_digits, 8, 2);
        $material_names = array('1' => 'Золото', '2' => 'Серебро', '3' => 'Платина', '4' => 'Драгоценные камни', '5' => 'Полудрагоценные камни');
        $material = isset($post['material'], $material_names[$post['material']]) ? $material_names[$post['material']] : '';
        $weight = isset($post['weight']) ? utf8_substr(html_entity_decode((string)$post['weight'], ENT_QUOTES, 'UTF-8'), 0, 64) : '';
        $description = isset($post['description']) ? utf8_substr(html_entity_decode((string)$post['description'], ENT_QUOTES, 'UTF-8'), 0, 2000) : '';
        $comments = $kinds[$kind] . "\n";
        if ($material !== '') $comments .= 'Материал: ' . $material . "\n";
        if ($weight !== '') $comments .= 'Вес: ' . $weight . "\n";
        if ($description !== '') $comments .= 'Описание: ' . $description . "\n";
        $comments .= 'Рассылка: ' . (!empty($post['newsletter']) ? 'да' : 'нет');
        $url = isset($post['page_url']) ? utf8_substr((string)$post['page_url'], 0, 500) : '';

        $photo_url = $photo ? HTTP_SERVER . 'system/storage/upload/' . $photo : '';
        $session_hash = hash('sha256', $this->session->getId());
        $cookie_hash = hash('sha256', isset($this->request->server['HTTP_COOKIE']) ? $this->request->server['HTTP_COOKIE'] : '');
        $user_agent = isset($this->request->server['HTTP_USER_AGENT']) ? utf8_substr((string)$this->request->server['HTTP_USER_AGENT'], 0, 1024) : '';
        $consent_text = html_entity_decode('Я&nbsp;даю согласие на&nbsp;обработку персональных данных', ENT_QUOTES, 'UTF-8');
        $consent_url = rtrim(HTTP_SERVER, '/') . '/soglasie-na-obrabotku-dannyh';
        $this->db->query('START TRANSACTION');
        if (!$this->db->query("INSERT INTO " . DB_PREFIX . "callback SET name = '" . $this->db->escape($name) . "', phone = '" . $this->db->escape($phone) . "', url = '" . $this->db->escape($url) . "', comments = '" . $this->db->escape($comments) . "', photo = '" . $this->db->escape($photo_url) . "', date_added = NOW(), ip_address = '" . $this->db->escape($ip) . "', user_agent = '" . $this->db->escape($user_agent) . "', consent_at = NOW(6), consent_checked = 1, consent_text = '" . $this->db->escape($consent_text) . "', consent_url = '" . $this->db->escape($consent_url) . "', session_id_hash = '" . $session_hash . "', cookie_hash = '" . $cookie_hash . "'")) {
            $this->db->query('ROLLBACK');
            throw new RuntimeException('Failed to save callback');
        }

        $request_id = $this->db->getLastId();
        $amo_comment = $comments . "\nСтраница: " . $url;
        if ($photo_url) $amo_comment .= "\nФото: " . $photo_url;
        $amo_data = json_encode(array(
            'request_id' => $request_id,
            'name' => $name,
            'phone' => $phone,
            'title' => $kinds[$kind],
            'email' => '',
            'comments_amo' => $amo_comment,
            'tg_message' => ''
        ), JSON_UNESCAPED_UNICODE);
        if ($amo_data === false || !$this->db->query("INSERT INTO cron_data SET data = '" . $this->db->escape($amo_data) . "'")) {
            $this->db->query('ROLLBACK');
            throw new RuntimeException('Failed to queue callback for amoCRM');
        }
        $this->db->query('COMMIT');

        $this->response->setOutput(json_encode(array('success' => 'Заявка отправлена.'), JSON_UNESCAPED_UNICODE));
    }
}
