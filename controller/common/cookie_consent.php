<?php
class ControllerCommonCookieConsent extends Controller {
    public function accept() {
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        if ($this->request->server['REQUEST_METHOD'] !== 'POST' || !isset($this->request->server['HTTP_X_REQUESTED_WITH']) || $this->request->server['HTTP_X_REQUESTED_WITH'] !== 'XMLHttpRequest') {
            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 405 Method Not Allowed');
            $this->response->setOutput(json_encode(array('error' => 'Method not allowed')));
            return;
        }

        if ($this->config->get('site_cookie_consent_enabled') === '0') {
            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 403 Forbidden');
            $this->response->setOutput(json_encode(array('error' => 'Consent window disabled')));
            return;
        }

        $saved_text = $this->config->get('site_cookie_consent_text');
        $text = is_string($saved_text) && $saved_text !== ''
            ? $saved_text
            : html_entity_decode('Мы&nbsp;используем cookie-файлы. Дальнейшая работа с&nbsp;сайтом означает ваше согласие на&nbsp;работу с&nbsp;ними', ENT_QUOTES, 'UTF-8');
        $posted_text = isset($this->request->post['text']) && is_scalar($this->request->post['text'])
            ? html_entity_decode((string)$this->request->post['text'], ENT_QUOTES, 'UTF-8') : '';
        if ($posted_text !== $text) {
            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 400 Bad Request');
            $this->response->setOutput(json_encode(array('error' => 'Consent text mismatch')));
            return;
        }

        $existing = isset($this->request->cookie['site_cookie_consent']) ? $this->request->cookie['site_cookie_consent'] : '';
        if (is_string($existing) && preg_match('/^[a-f0-9]{32}$/', $existing)) {
            $existing_hash = hash('sha256', $existing);
            $active = $this->db->query("SELECT id FROM " . DB_PREFIX . "site_cookie_consent WHERE cookie_id_hash = '" . $existing_hash . "' AND status = 'active' AND consent_text = '" . $this->db->escape($text) . "' LIMIT 1");
            if ($active->num_rows) {
                $this->response->setOutput(json_encode(array('success' => true)));
                return;
            }
        }

        $cookie_id = bin2hex(random_bytes(16));
        $cookie_id_hash = hash('sha256', $cookie_id);
        $ip = isset($this->request->server['REMOTE_ADDR']) ? substr($this->request->server['REMOTE_ADDR'], 0, 45) : '';
        $session_id_hash = hash('sha256', $this->session->getId());
        if (!$this->db->query("INSERT INTO " . DB_PREFIX . "site_cookie_consent SET consent_text = '" . $this->db->escape($text) . "', ip_address = '" . $this->db->escape($ip) . "', session_id_hash = '" . $session_id_hash . "', cookie_id_hash = '" . $cookie_id_hash . "', accepted_at = NOW(6)")) {
            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 500 Internal Server Error');
            $this->response->setOutput(json_encode(array('error' => 'Failed to save consent')));
            return;
        }

        $secure = !empty($this->request->server['HTTPS']) && $this->request->server['HTTPS'] !== 'off';
        setcookie('site_cookie_consent', $cookie_id, time() + 365 * 24 * 60 * 60, '/', '', $secure, true);
        $this->response->setOutput(json_encode(array('success' => true)));
    }
}
