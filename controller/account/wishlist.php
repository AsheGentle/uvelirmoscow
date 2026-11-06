<?php
class ControllerAccountWishList extends Controller {
	public function index() {
		/* if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/wishlist', '', 'SSL');

			$this->response->redirect($this->url->link('account/login', '', 'SSL'));
		} */

		$this->load->language('account/wishlist');
		$pages = (array)$this->config->get('site_service_pages');
		$page = isset($pages['wishlist']) && is_array($pages['wishlist']) ? $pages['wishlist'] : array();
		$title = !empty($page['title']) ? $page['title'] : $this->language->get('heading_title');
		$heading_title = !empty($page['h1']) ? $page['h1'] : $this->language->get('heading_title');
		$breadcrumb_title = !empty($page['breadcrumb']) ? $page['breadcrumb'] : $this->language->get('heading_title');

		$this->document->setTitle($title);
		$this->document->addLink(html_entity_decode($this->url->link('account/wishlist'), ENT_QUOTES, 'UTF-8'), 'canonical');
		if (!empty($page['description'])) {
			$this->document->setDescription($page['description']);
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $breadcrumb_title,
			'href' => $this->url->link('account/wishlist')
		);

		$data['heading_title'] = $heading_title;

		$data['text_empty'] = $this->language->get('text_empty');

		$data['column_image'] = $this->language->get('column_image');
		$data['column_name'] = $this->language->get('column_name');
		$data['column_model'] = $this->language->get('column_model');
		$data['column_stock'] = $this->language->get('column_stock');
		$data['column_price'] = $this->language->get('column_price');
		$data['column_action'] = $this->language->get('column_action');

		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_remove'] = $this->language->get('button_remove');

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$data['continue'] = $this->url->link('account/account', '', 'SSL');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/wishlist.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/wishlist.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/wishlist.tpl', $data));
		}
	}

	public function getProducts() {
		$this->load->language('account/wishlist');
		$this->load->model('account/wishlist');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');

		$limit = 8;
		$page = isset($this->request->post['page']) ? max(1, (int)$this->request->post['page']) : 1;
		if ($this->customer->isLogged()) {
			$total = (int)$this->model_account_wishlist->getTotalWishlist();
			$page_count = max(1, (int)ceil($total / $limit));
			$page = min($page, $page_count);
			$results = $this->model_account_wishlist->getWishlist(($page - 1) * $limit, $limit);
		} else {
			$wishlist = isset($this->session->data['wishlist']) ? array_values($this->session->data['wishlist']) : array();
			$total = count($wishlist);
			$page_count = max(1, (int)ceil($total / $limit));
			$page = min($page, $page_count);
			$results = array_slice($wishlist, ($page - 1) * $limit, $limit);
		}

		$data['products'] = array();
		foreach ($results as $result) {
			$product_id = is_array($result) ? (int)$result['product_id'] : (int)$result;
			$product_info = $this->model_catalog_product->getProduct($product_id);
			if (!$product_info) {
				continue;
			}

			$show_price = ($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price');
			$data['products'][] = array(
				'product_id' => $product_id,
				'thumb' => $this->model_tool_image->resize($product_info['image'] ? $product_info['image'] : 'placeholder.png', 235, 235),
				'name' => html_entity_decode($product_info['name'], ENT_QUOTES, 'UTF-8'),
				'price' => $show_price ? $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']) : false,
				'price_works' => $show_price && (float)$product_info['price_works'] > 0 ? $this->currency->format($this->tax->calculate($product_info['price_works'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']) : false,
				'price_materials' => $show_price && (float)$product_info['price_materials'] > 0 ? $this->currency->format($this->tax->calculate($product_info['price_materials'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']) : false,
				'special' => $show_price && (float)$product_info['special'] > 0 ? $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']) : false,
				'href' => html_entity_decode($this->url->link('product/product', 'product_id=' . $product_id, true), ENT_QUOTES, 'UTF-8')
			);
		}

		$data['page'] = $page;
		$data['page_count'] = $page_count;
		$data['text_empty'] = $this->language->get('text_empty');
		$template = $this->config->get('config_template') . '/template/account/wishlist_products.tpl';
		if (!file_exists(DIR_TEMPLATE . $template)) {
			$template = 'default/template/account/wishlist_products.tpl';
		}

		$this->response->addHeader('Cache-Control: no-store');
		$this->response->setOutput($this->load->view($template, $data));
	}

	public function add() {
		$this->load->language('account/wishlist');

		$json = array();

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		$this->load->model('catalog/product');

		$product_info = $this->model_catalog_product->getProduct($product_id);

		if ($product_info) {
			if ($this->customer->isLogged()) {
				$this->load->model('account/wishlist');
				$exists = false;

				foreach ($this->model_account_wishlist->getWishlist() as $wishlist_product) {
					if ((int)$wishlist_product['product_id'] === (int)$product_id) {
						$exists = true;
						break;
					}
				}

				if (!$exists) {
					$this->model_account_wishlist->addWishlist($product_id);
					$json['success'] = sprintf($this->language->get('text_success'), $this->url->link('product/product', 'product_id=' . (int)$product_id), $product_info['name'], $this->url->link('account/wishlist'));
				}

				$json['total'] =$this->model_account_wishlist->getTotalWishlist();
			} else {
				if (!isset($this->session->data['wishlist'])) {
					$this->session->data['wishlist'] = array();
				}

				if (!in_array($product_id, $this->session->data['wishlist'])) {
					$this->session->data['wishlist'][] = $product_id;
					$json['success'] = sprintf($this->language->get('text_success'), $this->url->link('product/product', 'product_id=' . (int)$product_id), $product_info['name'], $this->url->link('account/wishlist'));
				}

				$json['total'] = count($this->session->data['wishlist']);
				//$json['total'] = 0;
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function remove() {
		$product_id = isset($this->request->post['product_id']) ? (int)$this->request->post['product_id'] : 0;

		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');
			$this->model_account_wishlist->deleteWishlist($product_id);
			$total = $this->model_account_wishlist->getTotalWishlist();
		} else {
			if (!empty($this->session->data['wishlist'])) {
				foreach ($this->session->data['wishlist'] as $key => $wishlist_product_id) {
					if ((int)$wishlist_product_id === $product_id) {
						unset($this->session->data['wishlist'][$key]);
					}
				}
				$this->session->data['wishlist'] = array_values($this->session->data['wishlist']);
			}
			$total = isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0;
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode(array('removed' => true, 'total' => $total)));
	}

	public function getProductAttributes($product_id) {
		$product_attribute_group_data = array();

		$product_attribute_group_query = $this->db->query("SELECT ag.attribute_group_id, agd.name FROM " . DB_PREFIX . "product_attribute pa LEFT JOIN " . DB_PREFIX . "attribute a ON (pa.attribute_id = a.attribute_id) LEFT JOIN " . DB_PREFIX . "attribute_group ag ON (a.attribute_group_id = ag.attribute_group_id) LEFT JOIN " . DB_PREFIX . "attribute_group_description agd ON (ag.attribute_group_id = agd.attribute_group_id) WHERE pa.product_id = '" . (int)$product_id . "' AND agd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY ag.attribute_group_id ORDER BY ag.sort_order, agd.name");

		foreach ($product_attribute_group_query->rows as $product_attribute_group) {
			$product_attribute_data = array();

			$product_attribute_query = $this->db->query("SELECT a.attribute_id, a.attribute_hide, ad.name, pa.text FROM " . DB_PREFIX . "product_attribute pa LEFT JOIN " . DB_PREFIX . "attribute a ON (pa.attribute_id = a.attribute_id) LEFT JOIN " . DB_PREFIX . "attribute_description ad ON (a.attribute_id = ad.attribute_id) WHERE pa.product_id = '" . (int)$product_id . "' AND a.attribute_group_id = '" . (int)$product_attribute_group['attribute_group_id'] . "' AND ad.language_id = '" . (int)$this->config->get('config_language_id') . "' AND pa.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY a.sort_order, ad.name");

			foreach ($product_attribute_query->rows as $product_attribute) {
				$product_attribute_data[] = array(
					'attribute_id' => $product_attribute['attribute_id'],
					'attribute_hide' => $product_attribute['attribute_hide'],
					'name'         => $product_attribute['name'],
					'text'         => $product_attribute['text']
				);
			}

			$product_attribute_group_data[] = array(
				'attribute_group_id' => $product_attribute_group['attribute_group_id'],
				'name'               => $product_attribute_group['name'],
				'attribute'          => $product_attribute_data
			);
		}

		return $product_attribute_group_data;
	}
}
