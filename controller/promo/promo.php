<?php
class ControllerPromoPromo extends Controller {
	public function index($setting) {

		$this->load->model('promo/promo_single');
        $this->load->language('promo/promo');

        $this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('easy_promo_global_promo_single_limit');
		}
		
		$status = $this->config->get('easy_promo_global_status');
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		
		
		if ($status) {
			$this->document->setTitle($this->config->get('easy_promo_home_page_meta_title'));
			$this->document->setDescription($this->config->get('easy_promo_home_page_meta_description'));
			$this->document->setKeywords($this->config->get('easy_promo_home_page_meta_keyword'));
			$this->document->addLink($this->url->link('promo/promo'),'');

			$data['heading_title'] = $this->config->get('easy_promo_home_page_meta_title');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $this->config->get('easy_promo_home_page_name'),
				'href' => $this->model_promo_promo_single->getUrl()
			);
			
			$data['name'] = $this->config->get('easy_promo_home_page_name');
			
			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['promo_singles'] = array();

			$filter_data = array(
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			$promo_single_total = $this->model_promo_promo_single->getTotalPromoSingles($filter_data);

			$results = $this->model_promo_promo_single->getPromoSingles($filter_data);
			foreach ($results as $result) {

//                if (isset($result['image'])) {
//                    $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_category_height'));
//                } else {
//                    $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_popup_width'), $this->config->get('config_image_category_height'));
//                }
                $image = $result['image'];

				$data['promo_singles'][] = array(
					'promo_single_id'  => $result['promo_single_id'],
                    'thumb'       => $image,
                    'name'        => $result['name'],
                    'date_added'  => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                    'intro_text' => html_entity_decode($result['intro_text'], ENT_QUOTES, 'UTF-8'),
					'href'        => $this->model_promo_promo_single->getSeoUrl($result['promo_single_id'])
				);

			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('promo/promo', '&sort=p.sort_order&order=ASC' . $url)
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get('easy_promo_global_promo_single_limit'), 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('promo/promo', $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $promo_single_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('promo/promo', $url . '&page={page}');

			$data['pagination'] = $pagination->render();
            $data['button_read_more'] = $this->language->get('button_read_more');
            $data['text_empty'] = $this->language->get('text_empty');
            $data['text_closed'] = $this->language->get('text_closed');
            $data['text_current'] = $this->language->get('text_current');
			$data['results'] = sprintf($this->language->get('text_pagination'), ($promo_single_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($promo_single_total - $limit)) ? $promo_single_total : ((($page - 1) * $limit) + $limit), $promo_single_total, ceil($promo_single_total / $limit));

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;




			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/promo/promo.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/promo/promo.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/promo/promo.tpl', $data));
			}
		} else {
			
			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('promo/promo', $url)
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
