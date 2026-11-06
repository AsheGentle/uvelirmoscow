<?php
class ControllerErrorNotFound extends Controller {
	public function index() {
		$this->load->language('error/not_found');
		$page = (array)$this->config->get('site_service_pages');
		$page = isset($page['not_found']) && is_array($page['not_found']) ? $page['not_found'] : array();
		$title = !empty($page['title']) ? $page['title'] : $this->language->get('heading_title');
		$heading_title = !empty($page['h1']) ? $page['h1'] : 'Упс! Страница не найдена';
		$breadcrumb_title = !empty($page['breadcrumb']) ? $page['breadcrumb'] : 'Ошибка 404';

		$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

		$this->document->setTitle($title);
		if (!empty($page['description'])) {
			$this->document->setDescription($page['description']);
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['route'])) {
			$url_data = $this->request->get;

			unset($url_data['_route_']);

			$route = $url_data['route'];

			unset($url_data['route']);

			$url = '';

			if ($url_data) {
				$url = '&' . urldecode(http_build_query($url_data, '', '&'));
			}

			$data['breadcrumbs'][] = array(
				'text' => $breadcrumb_title,
				'href' => $this->url->link($route, $url, $this->request->server['HTTPS'])
			);
		}

		$data['heading_title'] = $heading_title;
		$data['breadcrumb_title'] = $breadcrumb_title;

		$data['text_error'] = $this->language->get('text_error');

		$data['button_catalog'] = $this->language->get('button_catalog');
        $data['text_callback'] = $this->language->get('text_callback');
        $data['text_description'] = $this->language->get('text_description');
        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_phone'] = $this->language->get('entry_phone');
        $data['entry_photo'] = $this->language->get('entry_photo');
        $data['entry_comments'] = $this->language->get('entry_comments');
        $data['button_send'] = $this->language->get('button_send');
        $data['text_search'] = $this->language->get('text_search');
        $data['text_keyword'] = $this->language->get('text_keyword');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
		}
	}
}
