<?php

/**
 * All rights reserved.
 * User : Solonitskiy Alex
 * Skype: htc_storm
 * Date : 28.05.2016
 * Time : 20:46
 */
class ControllerModuleFastorder extends Controller
{

    public function index($setting)
    {

        static $module = 0;
        $this->load->language('module/fastorder');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_fastorder'] = $this->language->get('text_fastorder');
        $data['text_privacy'] = $this->language->get('text_privacy');
        $data['text_number'] = $this->language->get('text_number');
        $data['text_number'] = $this->language->get('text_number');
        $data['text_graff'] = $this->language->get('text_graff');
        $data['module'] = $module++;

        if (file_exists(DIR_TEMPLATE.$this->config->get('config_template').'/template/module/fastorder.tpl')) {
            return $this->load->view($this->config->get('config_template').'/template/module/fastorder.tpl', $data);
        } else {
            return $this->load->view('default/template/module/fastorder.tpl', $data);
        }
    }

    public function getform()
    {
        static $module = 0;
        $this->load->language('module/fastorder');
        $this->load->model('setting/setting');
        $this->load->model('extension/module');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_fastorder'] = $this->language->get('text_fastorder');
        $data['text_description'] = $this->language->get('text_description');
        $data['text_privacy'] = $this->language->get('text_privacy');
        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_phone'] = $this->language->get('entry_phone');
        $data['entry_photo'] = $this->language->get('entry_photo');
        $data['entry_comments'] = $this->language->get('entry_comments');
        $data['button_send'] = $this->language->get('button_send');
        $data['sub'] = $this->request->get['sub'];
        $data['module'] = $module++;

        $this->send();
		
		if(isset($this->request->post['form'])) {
            $form = $this->request->post['form'];
			if($form == 'order'){
				$this->response->setOutput(
					$this->load->view($this->config->get('config_template').'/template/module/fastorder_form.tpl', $data)
				);
			}
			if($form == 'calc'){
				$this->response->setOutput(
					$this->load->view($this->config->get('config_template').'/template/module/fastorder_calc_form.tpl', $data)
				);
			}
			if($form == 'gift'){
				$this->response->setOutput(
					$this->load->view($this->config->get('config_template').'/template/module/gift_form.tpl', $data)
				);
			}
        }else{
			$this->response->setOutput(
					$this->load->view($this->config->get('config_template').'/template/module/fastorder_form.tpl', $data)
				);
		}

        

    }

    public function send()
    {
        $sub  = '';
        if(isset($this->request->post['sub'])) {
            $sub = $this->request->post['sub'];
        }

        $this->load->language('module/fastorder');
        $data['text_success'] = $this->language->get('text_success');
        $data['error_phone'] = $this->language->get('error_phone');
        $data['error_photo'] = $this->language->get('error_photo');
        $data['error_comments'] = $this->language->get('error_comments');

        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {

            $name = $this->request->post['filter_name'];

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

            $photo = '';
            if ((isset($this->request->post['filter_photo'])) && (!empty($this->request->post['filter_photo']))) {
                $photo = HTTP_SERVER.'system/storage/upload/'.$this->request->post['filter_photo'];
            }

            $comments = '';
            if (isset($this->request->post['filter_comments'])) {
                $comments = $this->request->post['filter_comments'];
            }

            if (isset($name) || isset($phone) || isset($url) || isset($photo)) {
                $json = array();

                $pattern_name = "/[\'|\/|\>|\[|\]|\!|\?|\;|\`]/";
                //$pattern_phone = "/^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/";
                $pattern_phone = "(.*?)";

                if ((utf8_strlen($name) > 64)) {
                    $json['error']['name'] = $this->language->get('error_leng_name');
                } else {
                    if (preg_match($pattern_name, $name)) {
                        $json['error']['name'] = $this->language->get('error_symvol_name');
                    } else {
                        $json['success'] = $this->language->get('text_success');
                    }
                }

                if (($phone == '') || (empty($phone))) {
                    $json['error']['phone'] = $this->language->get('error_empty_phone');
                } else {
                    if ((utf8_strlen($phone) < 3) || (utf8_strlen($phone) > 64)) {
                        $json['error']['phone'] = $this->language->get('error_leng_phone');
                    } else {
                        $json['success'] = $this->language->get('text_success');
                    }
                }

                //BEGIIN ROISTAT
                Roistat::sendLead([
                    'title' => "Новая заявка через форму {$sub}",
                    'name' => $name,
                    'phone' => $phone,
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
                //     array(
                //         'photo' => $photo,
                //         'url' => $url,
                //         'name' => $name,
                //         'phone' => $phone,
                //         'comments' => $comments,
                //         'mail' => $mail,
                //     )
                // );

                $this->response->addHeader('Content-Type: application/json');
                $this->response->setOutput(json_encode($json));

                if (isset($json['success'])) {
                    $this->addCall($name, $phone, $url, $photo, $comments);
                    $this->sends($name, $phone, $url, $photo, $comments);
                }
            }
        }
    }

    public function addCall($name, $phone, $url, $photo = '', $comments = '')
    {

        if (isset($name) || isset ($phone) || isset($url) || isset($comments)) {
            $today = date("Y-m-d H:i:s");
            $sql = "INSERT INTO  `".DB_PREFIX."callback`"."(`id`, `name`, `phone`, `url`, `date_added`, `comments`,`photo`) VALUES ".
                "('','".$this->db->escape($name)."','".$this->db->escape($phone)."','".
                $this->db->escape($url)."','".$this->db->escape($today)."','".$this->db->escape(
                    $comments
                )."','".$this->db->escape($photo)."')";
            $this->db->query($sql);
        }
    }

    public function sends($name, $phone, $url, $photo, $comments)
    {
        $this->load->language('module/fastorder');
        $status = $this->config->get('umemail_email_status');
        if (isset ($phone) && $status) {
            $this->mail_send($name, $phone, $url, $photo, $comments);
        }
    }

    protected function mail_filter($value)
    {
        $pattern = array("/\n/", "/\r/", "/content-type:/i", "/to:/i", "/from:/i", "/cc:/i");
        $value = preg_replace($pattern, "", $value);

        return $value;
    }

    protected function mail_send($name, $phone, $url, $photo, $comments)
    {
        $this->load->language('module/fastorder');

        $text_name = $this->language->get('email_name');
        $text_phone = $this->language->get('email_phone');
        $text_photo = $this->language->get('email_photo');
        $text_date = $this->language->get('email_date');
        $text_url = $this->language->get('email_url');
        $text_comments = $this->language->get('email_comments');
        $text_description = $this->language->get('email_description');
        $subject = $this->language->get('email_heading');

        $name = $this->mail_filter($name);
        $subject = $this->mail_filter($subject);
        $phone = $this->mail_filter($phone);
        $photo = $this->mail_filter($photo);
        //$url = $this->mail_filter($url);
        $comments = $this->mail_filter($comments);
        $to = $this->config->get('umemail_email_to');//'zakaz@uvelirmoscow.ru';
        $frome = 'noreplay@uvelirmoscow.ru';
        $today = date("Y-m-d H:i:s");
        //$message = "<html><body>$text_description <br/> $text_name: $name <br/> $text_phone: $phone <br/> $text_photo: $photo <br/> $text_comments: $comments <br/> $text_date: $today <br/> $text_url: $url</body></html>";
        $body = "$text_description \n\n";
        $body .= "$text_name: $name\n";
        $body .= "$text_phone: $phone\n";
        $body .= "$text_comments: $comments\n";
        $body .= "$text_date: $today\n";
        $body .= "$text_url: $url\n";
        $body = wordwrap($body, 100);
        $headers = "From: $frome\n";
        $headers .= "MIME-Version: 1.0\n";
        $headers .= "Content-type: text/plain; charset=utf-8\n";
        $headers .= "Content-Transfer-Encoding: quoted-printable\n";
        mail($to, $subject, $body, $headers) or
        die('$die');
    }
}
