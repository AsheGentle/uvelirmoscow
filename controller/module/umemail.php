<?php
class ControllerModuleUmEmail extends Controller {
  public function index() {

  }

  public function sendForm(){
    $status = $this->config->get('umemail_email_status');
    $address = $this->config->get('umemail_email_to');
$subject = 'Заявка с сайта uvelirmoscow.ru.';
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
$headers .= 'From: Заказы uvelirmoscow.ru <no-reply@uvelirmoscow.ru>' . "\r\n";
$headers .= 'Reply-To: '.$this->config->get('umemail_email_from'). "\r\n";
	if (isset($this->request->post['name']) && isset($this->request->post['phone'])) {
	$dt = date("d.m.y");
	$time = date("H:i:s");
	$number = 0;

	$f = fopen("numbervar.txt", "r");
	$number = intval(fgets($f));
	fclose($f);
  $roistat_text = '';
	$message = '';
	$message .= '<table width="100%">';

	$message .= '<tr>';
	$message .= '<td width="20%"><b>Заявка</b></td>';
	$message .= '<td>' . $dt . ' — ' . $number .'</td>';
	$message .= '</tr>';

	$message .= '<tr>';
	$message .= '<td width="20%"><b>Время заявки</b></td>';
	$message .= '<td>' . $time .'</td>';
	$message .= '</tr>';

	if ($this->request->post['form'] != ''){
	$message .= '<tr>';
	$message .= '<td width="20%"><b>'. 'Форма' . '</b></td>';
	$message .= '<td>' .  $this->request->post['form'] . '</td>';
	$message .= '</tr>';
	$subject .= ' Форма: '.$this->request->post['form'];
	}

	$message .= '<tr>';
	$message .= '<td width="20%"><b>'. 'Имя' . '</b></td>';
	$message .= '<td>' .  $this->request->post['name'] . '</td>';
	$message .= '</tr>';

	$message .= '<tr>';
	$message .= '<td width="20%"><b>'. 'Телефон' . '</b></td>';
	$message .= '<td>'  . ' <a href="tel:' . $this->request->post['phone']  . '">' . $this->request->post['phone']  . "</a>" .  '</td>';
	$message .= '</tr>';

	if ($this->request->post['mail'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Адрес электронной почты' . '</b></td>';
		$message .= '<td>' .  $this->request->post['mail'] . '</td>';
		$message .= '</tr>';
	}

	if ($this->request->post['city'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Город' . '</b></td>';
		$message .= '<td>' .  $this->request->post['city'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Город: '.$this->request->post['city'];
	}

	if ($this->request->post['comment'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Комментарий' . '</b></td>';
		$message .= '<td>' .  $this->request->post['comment'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Комментарий: '.$this->request->post['comment'];
	}

	if ($this->request->post['size'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Размер изделия' . '</b></td>';
		$message .= '<td>' .  $this->request->post['size'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Размер изделия: '.$this->request->post['size'];
	}

	if ($this->request->post['msize'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Размер мужского кольца' . '</b></td>';
		$message .= '<td>' .  $this->request->post['msize'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Размер мужского кольца: '.$this->request->post['msize'];
	}

	if ($this->request->post['wsize'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Размер женского кольца' . '</b></td>';
		$message .= '<td>' .  $this->request->post['wsize'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Размер женского кольца: '.$this->request->post['wsize'];
	}

	if ($this->request->post['item'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Изделие' . '</b></td>';
		$message .= '<td>' .  $this->request->post['item'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Изделие: '.$this->request->post['item'];
	}

	if ($this->request->post['type-stone'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Тип камня' . '</b></td>';
		$message .= '<td>' .  $this->request->post['type-stone'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Тип камня: '.$this->request->post['type-stone'];
	}

	if ($this->request->post['time-limit'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Срок выполнения' . '</b></td>';
		$message .= '<td>' .  $this->request->post['time-limit'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Срок выполнения: '.$this->request->post['time-limit'];
	}

	if ($this->request->post['date'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Дата' . '</b></td>';
		$message .= '<td>' .  $this->request->post['date'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Дата: '.$this->request->post['date'];
	}

	if ($this->request->post['time'] != ''){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Время' . '</b></td>';
		$message .= '<td>' .  $this->request->post['time'] . '</td>';
		$message .= '</tr>';
    $roistat_text .= ' Время: '.$this->request->post['time'];
	}

	if ($this->request->post['parking'] == 'yes'){
		$message .= '<tr>';
		$message .= '<td width="20%"><b>'. 'Парковка' . '</b></td>';
		$message .= '<td>Да</td>';
		$message .= '</tr>';
    $roistat_text .= ' Парковка: Да';
	}

	$message .= '<tr>';
	$message .= '<td width="20%"><b>'. 'Страница' . '</b></td>';
	$message .= '<td>' .  $_SERVER['HTTP_REFERER'] . '</td>';
	$message .= '</tr>';

	$message .= '</table>';

	if (!empty($this->request->files['file']['tmp_name'])){
      $path = 'image/mail-img/'.$this->request->files['file']['name'];
      if (move_uploaded_file($this->request->files['file']['tmp_name'], $path)) $attach = $path;
      $roistat_text .= ' Файл: https://uvelirmoscow.ru/'.$attach;
    }
	$json = array();
  if($status){
    if(empty($attach)) {
  		if(mail($address, $subject, $message, $headers)){
  			$f = fopen("numbervar.txt", "w");
  			$next = $number + 1;
  			fwrite($f, $next);
  			fclose($f);
  			$json['status'] = 'success';
  			$json['data'] = '<div class="text-left box-success"><div class="heading">Ваша заявка принята!</div> Мы свяжемся с вами в ближайшее время.<br> Спасибо!</div>';


  		}else{
        $json['status'] = 'error';
      	$json['data'] = "Ошибка отправки";


  		}
  	} else {
        $json = $this->send_mail($address, $subject, $message, $attach);
  	}
  }else{
  	$json['status'] = 'success';
  	$json['data'] = '<div class="text-left box-success"><div class="heading">Ваша заявка принята!</div> Мы свяжемся с вами в ближайшее время.<br> Спасибо!</div>';
  }
  // ROISTAT

  Roistat::sendLead([
      'title' => "Форма: {$this->request->post['form']}",
      'name' => $this->request->post['name'],
      'phone' => $this->request->post['phone'],
      'email' => $this->request->post['mail'],
      'comment' => $roistat_text,
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
}else{
  $json['status'] = 'error';
  $json['data'] = "Вы заполнили не все поля, вернитесь назад и заполните необходимые поля!";
}

  $this->response->addHeader('Content-Type: application/json');
  $this->response->setOutput(json_encode($json));
  }
  function send_mail($to, $thm, $html, $path){
  $fp = fopen($path,"r");

  if (!$fp){
    $json['status'] = 'error';
    $json['data'] = "Файл ".$path." не может быть прочитан";


  }

  $file = fread($fp, filesize($path));
  fclose($fp);
  $boundary = "--".md5(uniqid(time()));
  $headers .= "MIME-Version: 1.0\n";
  $headers .="Content-Type: multipart/mixed; boundary=\"$boundary\"\n";
  $multipart .= "--$boundary\n";
  $kod = 'utf-8';
  $multipart .= "Content-Type: text/html; charset=$kod\n";
  $headers .= 'From: Заказы uvelirmoscow.ru <no-reply@uvelirmoscow.ru>' . "\r\n";
  $headers .= 'Reply-To: '.$this->config->get('umemail_email_from'). "\r\n";
  $multipart .= "Content-Transfer-Encoding: Quot-Printed\n\n";
  $multipart .= "$html\n\n";
  $message_part = "--$boundary\n";
  $message_part .= "Content-Type: application/octet-stream\n";
  $message_part .= "Content-Transfer-Encoding: base64\n";
  $message_part .= "Content-Disposition: attachment; filename = \"".$path."\"\n\n";
  $message_part .= chunk_split(base64_encode($file))."\n";
  $multipart .= $message_part."--$boundary--\n";

  if(mail($to, $thm, $multipart, $headers)){
    $f = fopen("numbervar.txt", "w");
	$next = $number + 1;
	fwrite($f, $next);
	fclose($f);
	$json['status'] = 'success';
	$json['data'] = "<div class='text-left box-success'><div class='heading'>Ваша заявка принята!</div> Мы свяжемся с вами в ближайшее время.<br> Спасибо!</div>";


  }else{
    $json['status'] = 'error';
  	$json['data'] = "Ошибка отправки";


  }

  return $json;
}
}
