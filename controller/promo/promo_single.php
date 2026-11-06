<?php
class ControllerPromoPromoSingle extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('promo/promo_single');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

        $data['breadcrumbs'][] = array(
            'text' => $this->config->get('easy_promo_home_page_name'),
            'href' => '/akciya'
        );

        // $this->document->addScript('catalog/view/javascript/slick/slick.min.js?v1');
        $this->document->addStyle('catalog/view/javascript/slick/slick.css');
        $this->document->addStyle('catalog/view/javascript/slick/slick-theme.css');

		if (isset($this->request->get['search'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('promo/search', $url)
			);
		}

		if (isset($this->request->get['promo_single_id'])) {
			$promo_single_id = (int)$this->request->get['promo_single_id'];
		} else {
			$promo_single_id = 0;
		}

		$this->load->model('promo/promo_single');

		$promo_single_info = $this->model_promo_promo_single->getPromoSingle($promo_single_id);

		if ($promo_single_info) {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $promo_single_info['name'],
				'href' => $this->model_promo_promo_single->getSeoUrl($this->request->get['promo_single_id'])
			);

			$this->document->setTitle($promo_single_info['meta_title']);
			$this->document->setDescription($promo_single_info['meta_description']);
			$this->document->setKeywords($promo_single_info['meta_keyword']);
			$this->document->addLink($this->url->link('promo/promo_single', 'promo_single_id=' . $this->request->get['promo_single_id']), 'canonical');

            $data['text_closed'] = $this->language->get('text_closed');
            $data['text_current'] = $this->language->get('text_current');

			$data['heading_title'] = $promo_single_info['name'];
            $data['date'] = date($this->language->get('date_format_short'), strtotime($promo_single_info['date_added']));
			$data['promo_single_id'] = (int)$this->request->get['promo_single_id'];
            $data['thumb'] = $promo_single_info['image'];

			$data['description'] = html_entity_decode($promo_single_info['description'], ENT_QUOTES, 'UTF-8');


			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/promo/promo_single.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/promo/promo_single.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/promo/promo_single.tpl', $data));
			}
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}


			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('promo/promo_single', $url . '&promo_single_id=' . $promo_single_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			return $this->load->controller('error/not_found');
		}
	}

}
