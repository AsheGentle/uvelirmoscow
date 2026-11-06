<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$consent_text = $this->config->get('site_cookie_consent_text');
		$data['cookie_consent_text'] = is_string($consent_text) && $consent_text !== ''
			? $consent_text
			: html_entity_decode('Мы&nbsp;используем cookie-файлы. Дальнейшая работа с&nbsp;сайтом означает ваше согласие на&nbsp;работу с&nbsp;ними', ENT_QUOTES, 'UTF-8');
		$cookie_id = isset($this->request->cookie['site_cookie_consent']) ? $this->request->cookie['site_cookie_consent'] : '';
		$data['show_cookie_consent'] = $this->config->get('site_cookie_consent_enabled') !== '0';
		if ($data['show_cookie_consent'] && is_string($cookie_id) && preg_match('/^[a-f0-9]{32}$/', $cookie_id)) {
			$cookie_hash = hash('sha256', $cookie_id);
			$consent = $this->db->query("SELECT id FROM " . DB_PREFIX . "site_cookie_consent WHERE cookie_id_hash = '" . $cookie_hash . "' AND status = 'active' AND consent_text = '" . $this->db->escape($data['cookie_consent_text']) . "' LIMIT 1");
			$data['show_cookie_consent'] = !$consent->num_rows;
		}
		$this->load->language('common/footer');
    $this->load->model('setting/setting');

		$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
		$data['header_contacts_footer_logo'] = (string)$this->config->get('header_contacts_footer_logo');
		$data['header_contacts_phone'] = (string)$this->config->get('header_contacts_phone');
		$data['header_contacts_work_weekdays'] = (string)$this->config->get('header_contacts_work_weekdays');
		$data['header_contacts_work_weekend'] = (string)$this->config->get('header_contacts_work_weekend');
		$data['header_contacts_socials'] = array();
		$header_contacts = $this->model_setting_setting->getSetting('header_contacts');
		$socials = isset($header_contacts['header_contacts_socials']) ? $header_contacts['header_contacts_socials'] : array();
		if (is_array($socials)) {
			$sort_orders = array();
			$positions = array();
			foreach ($socials as $social) {
				$position = count($positions);
				$positions[] = $position;
				$sort_orders[] = isset($social['sort_order']) ? (int)$social['sort_order'] : $position;
			}
			array_multisort($sort_orders, SORT_ASC, SORT_NUMERIC, $positions, SORT_ASC, SORT_NUMERIC, $socials);
			foreach ($socials as $social) {
				$icon = isset($social['icon']) ? str_replace('\\', '/', trim($social['icon'])) : '';
				$link = isset($social['link']) ? trim($social['link']) : '';
				$image_position = strpos($icon, '/image/');
				if ($image_position !== false) {
					$icon = substr($icon, $image_position + 7);
				}
				$icon = preg_replace('~^image/~i', '', ltrim($icon, '/'));
				if ($link && !preg_match('~^[a-z][a-z0-9+.-]*://~i', $link)) {
					$link = 'https://' . ltrim($link, '/');
				}
				if ($icon && $link && preg_match('~^(https?://|tg://)~i', $link)) {
					$data['header_contacts_socials'][] = array(
						'icon' => rtrim($server, '/') . '/image/' . ltrim($icon, '/'),
						'link' => $link
					);
				}
			}
		}

		$phone_digits = preg_replace('/\D+/', '', $data['header_contacts_phone']);
		if (strlen($phone_digits) === 11 && $phone_digits[0] === '8') {
			$phone_digits = '7' . substr($phone_digits, 1);
		}

		$data['header_contacts_phone_href'] = $phone_digits ? 'tel:+' . $phone_digits : '';
		$data['header_contacts_footer_logo_url'] = $data['header_contacts_footer_logo'] && is_file(DIR_IMAGE . $data['header_contacts_footer_logo'])
			? $server . 'image/' . $data['header_contacts_footer_logo']
			: $server . 'catalog/view/theme/uvelirmoscow_new/assets_new/images/design/logo-white.svg';

		//scripts in footer
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/jquery.maskedinput.min.js','footer','defer');
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/slick.min.js','footer','defer');
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/jquery.magnific-popup.min.js','footer','defer');
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/owlcarus2/libs/owlcarusel2/owl.carousel.min.js','footer','defer');
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/tcal.min.js','footer','defer');
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/main.min.js','footer','defer');
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/main-new.min.js','footer','defer');
		// if(isset($this->request->get['route']) && $this->request->get['route'] == 'product/category'){
			// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/catalog.min.js','footer','defer');
		// }elseif(isset($this->request->get['route']) && $this->request->get['route'] == 'product/product'){
			// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/product.min.js','footer','defer');
		// }elseif(isset($this->request->get['route']) && $this->request->get['route'] == 'promo/promo_single'){
			// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/sale.min.js','footer','defer');
		// }elseif(isset($this->request->get['route']) && ($this->request->get['route'] == 'information/information' || $this->request->get['route'] == 'information/contact')){
			// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/information.min.js','footer','defer');
		// }elseif(isset($this->request->get['route']) && ($this->request->get['route'] == 'product/our_project' || $this->request->get['route'] == 'product/project')){
			// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/project.min.js','footer','defer');
		// }elseif(isset($this->request->get['route']) && $this->request->get['route'] == 'product/search'){
			// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/search.min.js','footer','defer');
		// }
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/bootstrap.min.js','footer','defer');
		// $this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/awesomeRating.min.js','footer','defer');

		$data['scripts'] = $this->document->getScripts('footer');

        $this->load->model('setting/setting');

        $data['config'] = $this->model_setting_setting->getSetting('config');
				$data['analytics'] = array();
				$this->load->model('extension/extension');
				$analytics = $this->model_extension_extension->getExtensions('analytics');

				foreach ($analytics as $analytic) {
					if ($this->config->get($analytic['code'] . '_status')) {
						$data['analytics'][] = $this->load->controller('analytics/' . $analytic['code']);
					}
				}
		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_our_project'] = $this->language->get('text_our_project');
    $data['text_video_review'] = $this->language->get('text_video_review');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['our_project'] = $this->url->link('product/our_project');
        $data['video_review'] = $this->url->link('product/video_review');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$wishlist_product_ids = array();
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');
			foreach ($this->model_account_wishlist->getWishlist() as $wishlist_product) {
				$wishlist_product_ids[] = (int)$wishlist_product['product_id'];
			}
		} elseif (!empty($this->session->data['wishlist'])) {
			$wishlist_product_ids = array_map('intval', $this->session->data['wishlist']);
		}
		$data['wishlist_product_ids'] = implode(',', array_unique($wishlist_product_ids));
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');
        $data['config'] = $this->model_setting_setting->getSetting('config');

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}
