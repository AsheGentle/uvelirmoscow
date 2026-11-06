<?php

/**
 * All rights reserved.
 * User : Solonitskiy Alex
 * Skype: htc_storm
 * Date : 28.05.2016
 * Time : 20:46
 */
class ControllerModuleCallback extends Controller
{

    private function sendtg($chat_id,$message) {

        $token = '8680799167:AAHvUmVTQV6535nxoK5B-7alSY6uXduOu5Y'; // Замени на свой токен от @BotFather
        $url = "https://api.telegram.org/bot$token/sendMessage";


        $params = [
            'chat_id' => $chat_id,
            'text' => $message,
            'parse_mode' => 'Markdown'

        ];

        $options = [
            'http' => [
                'method'  => 'POST',
                'header'  => 'Content-Type: application/x-www-form-urlencoded',
                'content' => http_build_query($params),
            ]
        ];

        $context  = stream_context_create($options);
        $result = file_get_contents($url, false, $context);
        print_r($result);


    }

    public function chatids() {

        $token = '8680799167:AAHvUmVTQV6535nxoK5B-7alSY6uXduOu5Y'; // Замени на свой токен от @BotFather
        $url = "https://api.telegram.org/bot$token/getUpdates";

// Инициализируем curl
        $ch = curl_init();

// Настройки curl-запроса
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

// Выполняем запрос
        $response = curl_exec($ch);
        curl_close($ch);

// Декодируем JSON-ответ
        $data = json_decode($response, true);

// Показываем весь ответ (для отладки)

     echo '<pre>';
     print_r($data);
     echo '</pre>';


    }


    public function index($setting)
    {

        static $module = 0;
        $this->load->language('module/callback');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_callback'] = $this->language->get('text_callback');
        $data['text_number'] = $this->language->get('text_number');
        $data['text_mail'] = $this->language->get('text_mail');
        $data['text_graff'] = $this->language->get('text_graff');
        $data['module'] = $module++;

        if (file_exists(DIR_TEMPLATE.$this->config->get('config_template').'/template/module/callback.tpl')) {
            return $this->load->view($this->config->get('config_template').'/template/module/callback.tpl', $data);
        } else {
            return $this->load->view('default/template/module/callback.tpl', $data);
        }
    }

    public function getform()
    {
        static $module = 0;
        $this->load->language('module/callback');
        $this->load->model('setting/setting');
        $this->load->model('extension/module');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_callback'] = $this->language->get('text_callback');
        $data['text_description'] = $this->language->get('text_description');
        $data['text_privacy'] = $this->language->get('text_privacy');
        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_mail'] = $this->language->get('entry_mail');
        $data['entry_file'] = $this->language->get('entry_file');
        $data['entry_phone'] = $this->language->get('entry_phone');
        $data['entry_photo'] = $this->language->get('entry_photo');
        $data['entry_comments'] = $this->language->get('entry_comments');
        $data['button_send'] = $this->language->get('button_send');
        $data['module'] = $module++;

        //$this->send();
		
		if(isset($this->request->post['form'])) {
            $form = $this->request->post['form'];
			if($form == 'calendar'){
				$this->response->setOutput(
					$this->load->view($this->config->get('config_template').'/template/module/calendar_form.tpl', $data)
				);
			}
        }else{
			$this->response->setOutput(
				$this->load->view($this->config->get('config_template').'/template/module/callback_form.tpl', $data)
			);	
		}


    }

    private function getCaptcha($SecretKey) {
        define('SITE_KEY', '6Le9RngsAAAAAKIxRJwRE2S7Vf9Sk7Y8Bg2WbTRd');
        define('SECRET_KEY', '6Le9RngsAAAAAOkIAk4Fq3yLgVuJRLYS5hj4OFTG');

        $Response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".SECRET_KEY."&response={$SecretKey}");
        $Return = json_decode($Response);


        return $Return;
    }


	public function captcha($token){
		$secretKey = '6LfLoBAmAAAAAFAg-UF0uEKWC61aU9yBSXpMjWB4';
		$url = 'https://www.google.com/recaptcha/api/siteverify';
		$data = array('secret' => $secretKey, 'response' => $token);
		$options = array(
			'http' => array(
			  'header'  => 'Content-type: application/x-www-form-urlencoded\r\n',
			  'method'  => 'POST',
			  'content' => http_build_query($data)
			)
		);
		$context  = stream_context_create($options);
		$response = file_get_contents($url, false, $context);
		$responseKeys = json_decode($response,true);
		if($responseKeys['success']) {
			return true;
		} else {
			return false;
		}
	}
		
    public function send()
    {

        $this->load->language('module/callback');
        $data['text_success'] = $this->language->get('text_success');
        $data['error_phone'] = $this->language->get('error_phone');
        $data['error_photo'] = $this->language->get('error_photo');
        $data['error_comments'] = $this->language->get('error_comments');
        $data['error_mail'] = $this->language->get('error_mail');


        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
            $Return = $this->getCaptcha($this->request->post['grecaptcharesponse']);

            /*ЕСЛИ ЗАПРОС УДАЧНО ОТПРАВЛЕН И ЗНАЧЕНИЕ score БОЛЬШЕ 0,5 ВЫПОЛНЯЕМ КОД*/
            $f = 0;
            if($Return->success == true && $Return->score > 0.5){
            //if($f==0) {
            $name = $this->request->post['filter_name'];
            $sub  = '';
            if(isset($this->request->post['filter_type'])) {
                $sub = $this->request->post['filter_type'];
            }

            $phone = '';
            if (isset($this->request->post['filter_phone'])) {
                $phone = $this->request->post['filter_phone'];



            }

            $url = '';
            if (isset($this->request->post['url'])) {
                $url = $this->request->post['url'];
                preg_match('(route=product\/project)', $url, $matches);
                if (count($matches) > 0) {
                    $url .= '&project_id='.$this->request->post['project_id'];
                }
            }

            $mail = '';
            if (isset($this->request->post['filter_mail'])) {
                $mail = $this->request->post['filter_mail'];
            }

            $photo = '';
            if ((isset($this->request->post['filter_photo'])) && (!empty($this->request->post['filter_photo']))) {
                $photo = HTTP_SERVER.'system/storage/upload/'.$this->request->post['filter_photo'];
            }

            $comments = '';
            $tg_message = '';
                $comments_amo = '';

                if(isset($this->request->post['calc_form_field'])) {
                if (isset($this->request->post['filter_stone'])) {
                    $comments_amo .= 'Свой камень : да'.PHP_EOL;
                } else {
                    $comments_amo .= 'Свой камень : нет'.PHP_EOL;
                }

                if (isset($this->request->post['filter_my_metall'])) {
                    $comments_amo .= 'Свой металл : да'.PHP_EOL;
                } else {
                    $comments_amo .= 'Свой металл : нет'.PHP_EOL;
                }

                if (isset($this->request->post['filter_metall'])) {
                    $comments_amo .= 'Материал золота : '.$this->request->post['filter_metall'].PHP_EOL;
                }
                }


                if (isset($this->request->post['filter_comments'])) {
                    $comments_amo .= 'Комментарий : '.$this->request->post['filter_comments'].PHP_EOL;
                }

            if (isset($this->request->post['filter_comments'])) {
                $comments = $this->request->post['filter_comments'];
            }
			
			if (isset($this->request->post['filter_to-name'])) {
                $to_name = $this->request->post['filter_to-name'];

            }
			if (isset($this->request->post['filter_to-mail'])) {
                $to_mail = $this->request->post['filter_to-mail'];

            }
			if (isset($this->request->post['filter_from-name'])) {
                $from_name = $this->request->post['filter_from-name'];
            }
			if (isset($this->request->post['filter_from-mail'])) {
                $from_mail = $this->request->post['filter_from-mail'];
            }
			if($sub == 'Намекнуть о подарке'){
				if (isset($to_name) && isset($to_mail) && isset($from_name) && isset($from_mail)){
					if (!filter_var($to_mail, FILTER_VALIDATE_EMAIL) && !filter_var($from_mail, FILTER_VALIDATE_EMAIL)) {
							$json['error']['mail'] = $this->language->get('error_mail');
						}else{
							$json['success'] = $this->language->get('text_success');
						}
						
					if (isset($json['error'])) {
						unset($json['success']);
					}
					
					$this->response->addHeader('Content-Type: application/json');
					$this->response->setOutput(json_encode($json));

					if (isset($json['success'])) {
						$comments = 'Форма: Намекнуть о подарке. От: '.$from_name.' '.$from_mail.'. Кому: '.$to_name.' '.$to_mail.'. Подарок: '.$url;
						$this->addCall($from_name, $phone, $url, $from_mail, $photo, $comments);
						$this->sends($from_name, $phone, $url, $from_mail, $photo, $comments);
						$this->mail_send_gift($from_name, $from_mail, $to_name, $to_mail, $url);
					}
				}
			}elseif($sub == 'Контакты'){
				if (isset($name) || isset($url) || isset($mail) || isset($photo)) {
					$json = array();

					$pattern_name = "/[\'|\/|\>|\[|\]|\!|\?|\;|\`]/";
					if ((utf8_strlen($name) > 64)) {
						$json['error']['name'] = $this->language->get('error_leng_name');
					} else {
						$json['success'] = $this->language->get('text_success');
					}

					if (!empty($mail)) {
						if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
							$json['error']['mail'] = $this->language->get('error_mail');
						}
					}

					//BEGIN ROISTAT
					// Roistat::sendLead([
					//     'title' => "Новая заявка через форму: {$sub}",
					//     'name' => $name,
					//     'phone' => $phone,
					//     'email' => $mail,
					//     'comment' => $comments,
					//     'fields' => [
					//         '953787' => $sub,
					//         'responsible_user_id' => Roistat::MANAGER_ID
					//     ]
					// ]);
					Roistat::sendLead([
						'title' => "Форма: {$sub}",
						'name' => $name,
						'phone' => $phone,
						'email' => $mail,
						'comment' => $comments,
						'fields' => [
							'966381' => '{city}',
							'1498095' => '{region}',
							'1498097' => '{country}',
							'966379' => '{orderCreationMethod}',
							'966397' => '{ip}',
							'966395' => '{orderPage}',
							'966393' => '{landingPage}',
							'1498101' => '{facebookClientId}',
							'960409' => '{source}',
							'935065' => '{utmMedium}',
							'936325' => '{utmCampaign}',
							'948583' => '{utmTerm}',
							'935059' => '{utmContent}',
							'965681' => '{referrer}',
							'966401' => '{metrikaClientId}',
							'966399' => '{googleClientId}',
							'651773' => '{sourceLevel1}',
							'1515719' => $sub,
							'responsible_user_id' => ''
						]
					]);
					//END ROISTAT

					if (isset($json['error'])) {
						unset($json['success']);
					}

					// $this->load->model('module/amo');
					// $this->model_module_amo->send(
						// array(
							// 'photo' => $photo,
							// 'url' => $url,
							// 'name' => $name,
							// 'phone' => $phone,
							// 'comments' => $comments,
							// 'mail' => $mail,
						// )
					// );

					$this->response->addHeader('Content-Type: application/json');
					$this->response->setOutput(json_encode($json));

					if (isset($json['success'])) {
						$this->addCall($name, $phone, $url, $mail, $photo, $comments);
						$this->sends($name, $phone, $url, $mail, $photo, $comments);
					}
				}
			}else{
				if (isset($name) || isset($phone) || isset($url) || isset($mail) || isset($photo)) {
					$json = array();

					$pattern_name = "/[\'|\/|\>|\[|\]|\!|\?|\;|\`]/";
	//              $pattern_phone = "/^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/";
					$pattern_phone = "(.*?)";


					if (!empty($mail)) {
						if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
							$json['error']['mail'] = $this->language->get('error_mail');
						}
					}

					if (($phone == '') || (empty($phone))) {
						$json['error']['phone'] = $this->language->get('error_empty_phone');
					} else {
						if ((utf8_strlen($phone) < 17) || (utf8_strlen($phone) > 64)) {
							$json['error']['phone'] = $this->language->get('error_leng_phone');
						} else {
							$json['success'] = $this->language->get('text_success');
						}
					}

                    if ((utf8_strlen($name) > 64)) {
                        $json['error']['name'] = $this->language->get('error_leng_name');
                    } else {
                        $json['success'] = $this->language->get('text_success');
                    }






                    if (($phone == '') || (empty($phone))) {
                        $json['error']['phone'] = 'Введите номер телефона';
                    }

                    if (($name == '') || (empty($name))) {
                        $json['error']['name'] = 'Введите Ваше имя';
                    }



                    if ((utf8_strlen($phone) < 17) || (utf8_strlen($phone) > 64)) {
                        $json['error']['phone'] = 'Введите корректный номер телефона';
                    }

if($json['error'] and isset($json['success'])) {
    unset($json['success']);
}


					$this->response->addHeader('Content-Type: application/json');
					$this->response->setOutput(json_encode($json));

					if (isset($json['success'])) {
						$this->addCall($name, $phone, $url, $mail, $photo, $comments);
						$this->sends($name, $phone, $url, $mail, $photo, $comments);
					}
				}
			}


if(isset($json['success'])) {

if($name and $name!='') {
                $tg_message .='Имя: '.$name.PHP_EOL;
}
                if($phone and $phone!='') {
                    $tg_message .='Телефон: '.$phone.PHP_EOL;
                }
                if($mail and $mail!='') {
                    $tg_message .='Email: '.$mail.PHP_EOL;
                }

                $tg_message.=$comments_amo;




                $data_bd = array(
                    'name'=>$name,
                    'phone'=>$phone,
                    'email'=>$mail,
                    'tg_message'=>$tg_message,
                    'comments_amo'=>$comments_amo
                );
                $data_bd = json_encode($data_bd,true);

                $sql = 'insert into cron_data set data="'.$this->db->escape($data_bd).'"';

                $this->db->query($sql);
}


		}else{
			$json['error']['mail'] = 'captcha error';
					
			$this->response->addHeader('Content-Type: application/json');
			$this->response->setOutput(json_encode($json));
		}
        }
    }
    function sendapi4()
    {
        if($this->request->get['code']=='viol-estated-outflush') {


            $sql = 'select * from cron_data';
            $query =  $this->db->query($sql);


            foreach ($query->rows as $row) {




                $data_id = $row['id'];

                $data = json_decode($row['data'], true);
                if (!is_array($data) || empty($data['name']) || empty($data['phone']) || $data['phone'] === '+7(') {
                    $this->log->write('amoCRM: invalid queue item #' . $data_id);
                    continue;
                }

                if (empty($data['lead_id'])) {
                    $fields = array(array('field_code' => 'PHONE', 'values' => array(array('value' => $data['phone']))));
                    if (!empty($data['email'])) {
                        $fields[] = array('field_code' => 'EMAIL', 'values' => array(array('value' => $data['email'])));
                    }
                    $contact = $this->amoRequest('POST', 'contacts', array(array(
                        'name' => $data['name'],
                        'custom_fields_values' => $fields
                    )));
                    if (empty($contact['_embedded']['contacts'][0]['id'])) {
                        $this->log->write('amoCRM: contact failed for queue item #' . $data_id);
                        continue;
                    }

                    $title = !empty($data['title']) ? 'Заявка с сайта: ' . $data['title'] : 'Заявка с сайта';
                    $lead = $this->amoRequest('POST', 'leads', array(array(
                        'name' => $title,
                        '_embedded' => array('contacts' => array(array('id' => (int)$contact['_embedded']['contacts'][0]['id']))),
                        'custom_fields_values' => array(array(
                            'field_id' => 1544905,
                            'values' => array(array('value' => isset($data['comments_amo']) ? $data['comments_amo'] : ''))
                        ))
                    )));
                    if (empty($lead['_embedded']['leads'][0]['id'])) {
                        $this->log->write('amoCRM: lead failed for queue item #' . $data_id);
                        continue;
                    }
                    $data['lead_id'] = (int)$lead['_embedded']['leads'][0]['id'];
                    $this->db->query("UPDATE cron_data SET data = '" . $this->db->escape(json_encode($data, JSON_UNESCAPED_UNICODE)) . "' WHERE id = " . (int)$data_id);
                }

                if (!empty($data['request_id'])) {
                    $request = $this->db->query('SELECT photo FROM ' . DB_PREFIX . 'callback WHERE id = ' . (int)$data['request_id']);
                    $photo_url = !empty($request->row['photo']) ? $request->row['photo'] : '';
                    $filename = basename(parse_url($photo_url, PHP_URL_PATH) ?: '');
                    if ($photo_url && preg_match('/^[a-f0-9]{32}\.(jpg|png|webp)$/', $filename)) {
                        $path = DIR_UPLOAD . $filename;
                        if (!is_file($path)) {
                            $this->log->write('amoCRM: photo missing for queue item #' . $data_id);
                            continue;
                        }
                        if (empty($data['amo_file'])) {
                            $data['amo_file'] = $this->amoUploadFile($path, $filename);
                            if (!$data['amo_file']) {
                                $this->log->write('amoCRM: photo upload failed for queue item #' . $data_id);
                                unset($data['amo_file']);
                                continue;
                            }
                            $this->db->query("UPDATE cron_data SET data = '" . $this->db->escape(json_encode($data, JSON_UNESCAPED_UNICODE)) . "' WHERE id = " . (int)$data_id);
                        }
                        $fields = $this->amoRequest('GET', 'leads/custom_fields?filter[type][0]=file&limit=250');
                        $field_id = 0;
                        foreach (isset($fields['_embedded']['custom_fields']) ? $fields['_embedded']['custom_fields'] : array() as $field) {
                            if ($field['name'] === 'Файл к заявке' && $field['type'] === 'file') {
                                $field_id = (int)$field['id'];
                                break;
                            }
                        }
                        if (!$field_id) {
                            $this->log->write('amoCRM: file field not found for queue item #' . $data_id);
                            continue;
                        }
                        $updated = $this->amoRequest('PATCH', 'leads/' . (int)$data['lead_id'], array(
                            'custom_fields_values' => array(array(
                                'field_id' => $field_id,
                                'values' => array(array('value' => array(
                                    'file_uuid' => $data['amo_file']['uuid'],
                                    'version_uuid' => $data['amo_file']['version_uuid'],
                                    'file_name' => $filename,
                                    'file_size' => (int)$data['amo_file']['size']
                                )))
                            ))
                        ));
                        if (!$updated) {
                            $this->log->write('amoCRM: photo field update failed for queue item #' . $data_id);
                            continue;
                        }
                    }
                }

                $this->db->query('DELETE FROM cron_data WHERE id = ' . (int)$data_id);

            }

        }



    }
    private function amoUploadFile($path, $filename)
    {
        $account = $this->amoRequest('GET', 'account?with=drive_url');
        if (empty($account['drive_url'])) return false;
        $drive = rtrim($account['drive_url'], '/');
        $size = filesize($path);
        $mime = array('jpg' => 'image/jpeg', 'png' => 'image/png', 'webp' => 'image/webp');
        $extension = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
        if (!isset($mime[$extension])) return false;
        $session = $this->amoRequest('POST', $drive . '/v1.0/sessions', array(
            'file_name' => $filename,
            'file_size' => $size,
            'content_type' => $mime[$extension]
        ));
        if (empty($session['upload_url']) || empty($session['max_part_size'])) return false;

        $file = fopen($path, 'rb');
        if (!$file) return false;
        $url = $session['upload_url'];
        $uploaded = false;
        while (!feof($file)) {
            $part = fread($file, (int)$session['max_part_size']);
            if ($part === false || $part === '') break;
            $response = $this->amoRequest('POST', $url, $part, 'application/octet-stream');
            if (!$response) break;
            if (!empty($response['uuid']) && !empty($response['version_uuid'])) {
                $uploaded = $response;
                break;
            }
            if (empty($response['next_url'])) break;
            $url = $response['next_url'];
        }
        fclose($file);
        return $uploaded;
    }
    function sendapi3()
    {
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);

        if($this->request->get['code']=='viol-estated-outflush') {


            $sql = 'select * from cron_data';
            $query =  $this->db->query($sql);


            foreach ($query->rows as $row) {




                $data_id = $row['id'];

                $data = json_decode($row['data'],true);

                $name = $data['name'];
                $phone = $data['phone'];
                $mail = $data['email'];

                if($name!='' and $phone!='+7(') {
                    print_r($data);
                    $tg_message = $data['tg_message'];
                    $comments_amo = $data['comments_amo'];




                    $contact = $this->amoRequest('POST', 'contacts', [
                        [
                            'name' => $name,
                            'custom_fields_values' => [
                                [
                                    'field_code' => 'PHONE',
                                    'values' => [
                                        ['value' => $phone]
                                    ]
                                ],
                                [
                                    'field_code' => 'EMAIL',
                                    'values' => [
                                        ['value' => $mail]
                                    ]
                                ]
                            ]
                        ]
                    ]);


                    $contact_id = $contact['_embedded']['contacts'][0]['id'];




                    $lead = $this->amoRequest('POST', 'leads', [
                        [
                            'name' => 'Заявка с сайта',

                            // привязка контакта
                            '_embedded' => [
                                'contacts' => [
                                    [
                                        'id' => (int)$contact_id
                                    ]
                                ]
                            ],

                            // поле "Комментарий"
                            'custom_fields_values' => [
                                [
                                    'field_id' => 1544905, // ID поля комментарий
                                    'values' => [
                                        [
                                            'value' => $comments_amo
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]);



                    $lead_id = $lead['_embedded']['leads'][0]['id'];
                    echo '<pre>';
                    print_r($lead);
                    echo '</pre>';


                    /*
                                                      $users = array(343193247,344561438,-1003848829086,563479120);

                                                      foreach ($users as $user) {

                                                          $this->sendtg($user,$tg_message);
                                                      }
                    */

                }

                $sql = 'delete from cron_data where id='.$data_id;

              //  $this->db->query($sql);

            }

        }



    }
    function sendapi2()
    {
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);

        if($this->request->get['code']=='viol-estated-outflush') {


                    $sql = 'select * from cron_data';
                    $query =  $this->db->query($sql);


                    foreach ($query->rows as $row) {




                        $data_id = $row['id'];

                        $data = json_decode($row['data'],true);

                        $name = $data['name'];
                        $phone = $data['phone'];
                        $mail = $data['email'];

                        if($name!='' and $phone!='+7(') {
                            print_r($data);
                        $tg_message = $data['tg_message'];
                        $comments_amo = $data['comments_amo'];




                     $contact = $this->amoRequest('POST', 'contacts', [
                         [
                             'name' => $name,
                             'custom_fields_values' => [
                                 [
                                     'field_code' => 'PHONE',
                                     'values' => [
                                         ['value' => $phone]
                                     ]
                                 ],
                                 [
                                     'field_code' => 'EMAIL',
                                     'values' => [
                                         ['value' => $mail]
                                     ]
                                 ]
                             ]
                         ]
                     ]);


                                  $contact_id = $contact['_embedded']['contacts'][0]['id'];

                                  echo '<pre>';
                                  print_r($contact);
                                  echo '</pre>';



                                  $lead = $this->amoRequest('POST', 'leads', [
                                      [
                                          'name' => 'Заявка с сайта',

                                          // привязка контакта
                                          '_embedded' => [
                                              'contacts' => [
                                                  [
                                                      'id' => (int)$contact_id
                                                  ]
                                              ]
                                          ],

                                          // поле "Комментарий"
                                          'custom_fields_values' => [
                                              [
                                                  'field_id' => 1544905, // ID поля комментарий
                                                  'values' => [
                                                      [
                                                          'value' => $comments_amo
                                                      ]
                                                  ]
                                              ]
                                          ]
                                      ]
                                  ]);



                                  $lead_id = $lead['_embedded']['leads'][0]['id'];


/*
                                  $users = array(343193247,344561438,-1003848829086,563479120);

                                  foreach ($users as $user) {

                                      $this->sendtg($user,$tg_message);
                                  }
*/

                }

                        $sql = 'delete from cron_data where id='.$data_id;

                       $this->db->query($sql);

                    }

        }



    }

    public function send3() {
        $tg_message = 12;
        $users = array(343193247);

        foreach ($users as $user) {

            $this->sendtg($user,$tg_message);
        }
    }

    function sendapi()
    {

        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);



        if($this->request->get['code']=='viol-estated-outflush') {

/*
        $sql = 'select * from cron_data';
        $query =  $this->db->query($sql);


        foreach ($query->rows as $row) {




            $data_id = $row['id'];

            $data = json_decode($row['data'],true);

            $name = $data['name'];
            $phone = $data['phone'];
            $mail = $data['email'];

            if($name!='' and $phone!='+7(') {
                print_r($data);
            $tg_message = $data['tg_message'];
            $comments_amo = $data['comments_amo'];




         $contact = $this->amoRequest('POST', 'contacts', [
             [
                 'name' => $name,
                 'custom_fields_values' => [
                     [
                         'field_code' => 'PHONE',
                         'values' => [
                             ['value' => $phone]
                         ]
                     ],
                     [
                         'field_code' => 'EMAIL',
                         'values' => [
                             ['value' => $mail]
                         ]
                     ]
                 ]
             ]
         ]);


                      $contact_id = $contact['_embedded']['contacts'][0]['id'];

                      echo '<pre>';
                      print_r($contact);
                      echo '</pre>';



                      $lead = $this->amoRequest('POST', 'leads', [
                          [
                              'name' => 'Заявка с сайта',

                              // привязка контакта
                              '_embedded' => [
                                  'contacts' => [
                                      [
                                          'id' => (int)$contact_id
                                      ]
                                  ]
                              ],

                              // поле "Комментарий"
                              'custom_fields_values' => [
                                  [
                                      'field_id' => 1544905, // ID поля комментарий
                                      'values' => [
                                          [
                                              'value' => $comments_amo
                                          ]
                                      ]
                                  ]
                              ]
                          ]
                      ]);



                      $lead_id = $lead['_embedded']['leads'][0]['id'];



                      $users = array(343193247,344561438,-1003848829086,563479120);

                      foreach ($users as $user) {

                          $this->sendtg($user,$tg_message);
                      }


    }

            $sql = 'delete from cron_data where id='.$data_id;

           $this->db->query($sql);

        }
            */
        }

    }

    public function amoRequest($method, $endpoint, $data = null, $content_type = 'application/json')
    {

        $access_token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjUyOGM0N2ZiNGFhMDAzY2M1NjM1ZWY0NjYzMTFiNmVhMjBjODVjMDFmYWM4ODBmMWJkZDU1NGQwNzc4OWJhZGRlN2Q0MjFhZTIxOTJjMTBiIn0.eyJhdWQiOiJmZDhjNWFkMS05OGQ2LTRiOGMtYmE1Ni00ZjE4NDE5MGQ5NjQiLCJqdGkiOiI1MjhjNDdmYjRhYTAwM2NjNTYzNWVmNDY2MzExYjZlYTIwYzg1YzAxZmFjODgwZjFiZGQ1NTRkMDc3ODliYWRkZTdkNDIxYWUyMTkyYzEwYiIsImlhdCI6MTc3NDMzODMxOCwibmJmIjoxNzc0MzM4MzE4LCJleHAiOjE4NTIyNDMyMDAsInN1YiI6IjE2NTgxMTAiLCJncmFudF90eXBlIjoiIiwiYWNjb3VudF9pZCI6OTYzMTE2MSwiYmFzZV9kb21haW4iOiJhbW9jcm0ucnUiLCJ2ZXJzaW9uIjoyLCJzY29wZXMiOlsicHVzaF9ub3RpZmljYXRpb25zIiwiZmlsZXMiLCJjcm0iLCJmaWxlc19kZWxldGUiLCJub3RpZmljYXRpb25zIl0sImhhc2hfdXVpZCI6IjcyMzU2Yzg2LTBiNzUtNDNkZC1iMjE0LWY0NmRiNDI1OWFkNiIsImFwaV9kb21haW4iOiJhcGktYi5hbW9jcm0ucnUifQ.SMisc7JNRUHGPK3uuVNuf74vY5CqKsZV11Wb59lhB6m-uW3BCkPKwBUXmmGShc_G4_rcQJeE2VRIemo0I7JMoZhHTqKJh7QfmuojDYep2hXn2MsDpaDHJOB5He4sRTx1QTJSh481TVd15SKS98A-wjch-tGoYAsJQdFn__w64EYakZBf7OQQiji71cZ8EmmSYjeQ8bItjsnsoP6II6NZzXavRJOKCrIHcFgXVJgnHZpRzF8hw1Qm2IUfLdrLiM2ctq41awejQgsj0peQo74u9rY4k8kNSD6_AqNOwTaOF-XLe0YKiEbSbuDA8q6rFWFhtrFaDuY_uSJAJbACF8DZDg';
        $subdomain = 'uvelirmoscow';





        $url = strpos($endpoint, 'https://') === 0 ? $endpoint : "https://{$subdomain}.amocrm.ru/api/v4/" . $endpoint;
        $host = parse_url($url, PHP_URL_HOST);
        if (!$host || !preg_match('/^[a-z0-9-]+\.amocrm\.ru$/', $host)) return false;

        $curl = curl_init($url);

        curl_setopt_array($curl, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CONNECTTIMEOUT => 5,
            CURLOPT_TIMEOUT => 12,
            CURLOPT_CUSTOMREQUEST  => $method,
            CURLOPT_HTTPHEADER => [
                'Authorization: Bearer ' . $access_token,
                'Content-Type: ' . $content_type
            ]
        ]);

        if ($data !== null) {
            curl_setopt($curl, CURLOPT_POSTFIELDS, $content_type === 'application/json' ? json_encode($data) : $data);
        }

        $response = curl_exec($curl);
        $status = curl_getinfo($curl, CURLINFO_HTTP_CODE);
        curl_close($curl);

        if ($response === false || $status < 200 || $status >= 300) {
            return false;
        }

        return trim($response) === '' ? true : json_decode($response, true);
    }

    public  function testt() {

        $name = 1;
        $phone = 2;
        $message = 3;
        $email = 'asdasd@adad.ru';
        $contact = $this->amoRequest('POST', 'contacts', [
            [
                'name' => $name,
                'custom_fields_values' => [
                    [
                        'field_code' => 'PHONE',
                        'values' => [
                            ['value' => $phone]
                        ]
                    ],
                    [
                        'field_code' => 'EMAIL',
                        'values' => [
                            ['value' => $email]
                        ]
                    ]
                ]
            ]
        ]);

        $contact_id = $contact['_embedded']['contacts'][0]['id'];





        $lead = $this->amoRequest('POST', 'leads', [
            [
                'name' => 'Заявка с сайта',
                //'responsible_user_id'=>

                '_embedded' => [
                    'contacts' => [
                        ['id' => $contact_id]
                    ]
                ]
            ]
        ]);

        $lead_id = $lead['_embedded']['leads'][0]['id'];



        echo 'OK';

}





    public function authamo() {





        $client_id = 'fd8c5ad1-98d6-4b8c-ba56-4f184190d964';
        $client_secret = 'ZtW3xtwp4EafUACDrWEbd8jf8NRGsmdwcjMNS6cW5rJZWErx8IxC0MKWz3yMPMhg';
        $redirect_uri = 'https://uvelirmoscow.ru/callbackamo';
        $code = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImJjMWFlNWZiMmYyY2QzMWNjZmQ1ZmJiNDJlMjFkOTllNmM0YTQ2ODY0MDM2Mjc2MjJiYzAxNjhhNDgxNDkxYTQ2NGZjNjMyZjUzNDEyOGVhIn0.eyJhdWQiOiJmZDhjNWFkMS05OGQ2LTRiOGMtYmE1Ni00ZjE4NDE5MGQ5NjQiLCJqdGkiOiJiYzFhZTVmYjJmMmNkMzFjY2ZkNWZiYjQyZTIxZDk5ZTZjNGE0Njg2NDAzNjI3NjIyYmMwMTY4YTQ4MTQ5MWE0NjRmYzYzMmY1MzQxMjhlYSIsImlhdCI6MTc3MjQ0MjAxNywibmJmIjoxNzcyNDQyMDE3LCJleHAiOjE5MjMyNjQwMDAsInN1YiI6IjE2NTgxMTAiLCJncmFudF90eXBlIjoiIiwiYWNjb3VudF9pZCI6OTYzMTE2MSwiYmFzZV9kb21haW4iOiJhbW9jcm0ucnUiLCJ2ZXJzaW9uIjoyLCJzY29wZXMiOlsiY3JtIl0sImhhc2hfdXVpZCI6ImIyZTFmNTg5LTgwMzAtNDcwYy1iZWExLTI4OTU1N2E0NDVhNyIsImFwaV9kb21haW4iOiJhcGktYi5hbW9jcm0ucnUifQ.HbD07GAYUiCiue_NLCJwzN6pweeiEYyoPKuB9j87bi6rtpGqj5ALRogzVkb2RAxnxpG9BER6Z8CY6NgjF5yZj0QEZog4Hg1YFrazPUs7CPsInib1OGKyP1tuKHS-t8ZhD1aZAkN-GT8PYfXDzZoL_6u5A1Oy0PfKUi8MwhmZyIGDFuj0yBK6BE3vXWfnJgSzLEQV6Vg-TPYmDpTQQ0YMTVIMg2wHTTb9qCsGbKOezRB4d5r-YykpvUocWKFPJGb6i-UIBRYrB2BueHwd3f0DOaD0ENKfGnSpanK4v-m5fU6KmxSqjbjwM8dU1Yg1VdP7dfqDGybI48RHrLa_6kJ2sw';
        $subdomain = 'uvelirmoscow';

        $link = "https://$subdomain.amocrm.ru/oauth2/access_token";

        $data = [
            'client_uuid' => $client_id,
            'client_secret' => $client_secret,
            'grant_type' => 'authorization_code',
            'code' => $code,
            'redirect_uri' => $redirect_uri,
        ];

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_URL, $link);
        curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
        curl_setopt($curl, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);

        $response = curl_exec($curl);
        curl_close($curl);

        file_put_contents('tokens.json', $response);

        echo $response;
    }



    public function addCall($name, $phone, $url, $mail, $photo = '', $comments = '')
    {

        if (isset($name) || isset ($phone) || isset($url) || isset($mail) || isset($comments)) {
            $today = date("Y-m-d H:i:s");
            $sql = "INSERT INTO  `".DB_PREFIX."callback`"."(`id`, `name`, `phone`, `url`, `mail`, `date_added`, `comments`,`photo`) VALUES ".
                "('','".$this->db->escape($name)."','".$this->db->escape($phone)."','".
                $this->db->escape($url)."','".$this->db->escape($mail)."','".$this->db->escape(
                    $today
                )."','".$this->db->escape($comments)."','".$this->db->escape($photo)."')";
            $this->db->query($sql);
        }
    }

    public function sends($name, $phone, $url, $mail, $photo, $comments)
    {
        $this->load->language('module/callback');
		    $status = $this->config->get('umemail_email_status');
        if (isset ($phone) && $status) {
            $this->mail_send($name, $phone, $url, $mail, $photo, $comments);
        }
    }

    protected function mail_filter($value)
    {
        $pattern = array("/\n/", "/\r/", "/content-type:/i", "/to:/i", "/from:/i", "/cc:/i");
        $value = preg_replace($pattern, "", $value);

        return $value;
    }

    protected function mail_send($name, $phone, $url, $mail, $photo, $comments)
    {
        $this->load->language('module/callback');

        $text_name = $this->language->get('email_name');
        $text_phone = $this->language->get('email_phone');
        $text_photo = $this->language->get('email_photo');
        $text_date = $this->language->get('email_date');
        $text_url = $this->language->get('email_url');
        $text_mail = $this->language->get('email_mail');
        $text_comments = $this->language->get('email_comments');
        $text_description = $this->language->get('email_description');
        $subject = $this->language->get('email_heading');

        $name = $this->mail_filter($name);
        $subject = $this->mail_filter($subject);
        $phone = $this->mail_filter($phone);
        $photo = $this->mail_filter($photo);
        $photo = str_replace(" ", "%20", $photo);
        $photo_link = '<a href="'.$photo.'">'.$text_photo.'</a>';
        $mail = $this->mail_filter($mail);
        //$url = $this->mail_filter($url);
        $comments = $this->mail_filter($comments);
        $to = $this->config->get('umemail_email_to');
        $frome = 'no-reply@uvelirmoscow.ru';
        $today = date("Y-m-d H:i:s");
        //$message = "<html><body>$text_description <br/> $text_name: $name <br/> $text_phone: $phone <br/> $text_photo: $photo <br/> $text_comments: $comments <br/> $text_date: $today <br/> $text_url: $url</body></html>";
        $body = "$text_description<br><br>";
        $body .= "$text_name: $name<br>";
        $body .= "$text_phone: $phone<br>";
        if ($mail) {
            $body .= "$text_mail: $mail<br>";
        }
        if ($photo) {
            $body .= "$photo_link<br>";
        }
        if ($comments) {
            $body .= "$text_comments: $comments<br>";
        }
        $body .= "$text_date: $today<br>";
        $body .= "$text_url: $url<br>";
        $body = '<html><body>'.$body.'</body></html>';
        $headers = "From: $frome\n";
		$headers .= 'Reply-To: '.$this->config->get('umemail_email_from'). "\n";
        $headers .= "MIME-Version: 1.0\n";
        $headers .= "Content-Type: text/html; charset=utf-8\n";
        $headers .= "Content-Transfer-Encoding: quoted-printable\n";
        mail($to, $subject, $body, $headers) or
        die('$die');
    }
	
	protected function mail_send_gift($from_name, $from_mail, $to_name, $to_mail, $url)
    {
        $this->load->language('module/callback');

        $subject = 'Намек о подарке';

        $name = $this->mail_filter($name);
        $subject = $this->mail_filter($subject);
        $phone = $this->mail_filter($phone);
        $mail = $this->mail_filter($mail);
        $comments = $this->mail_filter($comments);
        $to = $to_mail;
        $frome = 'no-reply@uvelirmoscow.ru';
        $body = '<html><body>Здравствуйте '.$to_name.'. <a href="mailto:'.$from_mail.'">'.$from_name.'</a> намекает Вам о подарке. </br><a href="'.$url.'">Ссылка на подарок</a></body></html>';
        $headers = "From: $frome\n";
		$headers .= 'Reply-To: '.$this->config->get('umemail_email_from'). "\n";
        $headers .= "MIME-Version: 1.0\n";
        $headers .= "Content-Type: text/html; charset=utf-8\n";
        $headers .= "Content-Transfer-Encoding: quoted-printable\n";
        mail($to, $subject, $body, $headers) or
        die('$die');
    }
}
