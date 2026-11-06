<?php

class ControllerProductOcdViewed extends Controller {
    public function index() {
        $this->load->language('product/ocd_viewed');
		$pages = (array)$this->config->get('site_service_pages');
		$page = isset($pages['viewed']) && is_array($pages['viewed']) ? $pages['viewed'] : array();
		$title = !empty($page['title']) ? $page['title'] : $this->language->get('heading_title');

        $this->document->setTitle($title);
		if (!empty($page['description'])) {
			$this->document->setDescription($page['description']);
		}
        $this->document->addLink(html_entity_decode($this->url->link('product/ocd_viewed', '', true), ENT_QUOTES, 'UTF-8'), 'canonical');

        $data['heading_title'] = !empty($page['h1']) ? $page['h1'] : $this->language->get('heading_title');
		$data['breadcrumb_title'] = !empty($page['breadcrumb']) ? $page['breadcrumb'] : $this->language->get('heading_title');
        $data['home_href'] = html_entity_decode($this->url->link('common/home', '', true), ENT_QUOTES, 'UTF-8');
        $data['limit'] = 8;
        $data['header'] = $this->load->controller('common/header');
        $data['footer'] = $this->load->controller('common/footer');

        $template = $this->config->get('config_template') . '/template/product/ocd_viewed.tpl';
        if (!file_exists(DIR_TEMPLATE . $template)) {
            $template = 'default/template/product/ocd_viewed.tpl';
        }

        $this->response->setOutput($this->load->view($template, $data));
    }

    public function getProducts() {
        $this->load->language('product/ocd_viewed');
        $this->load->model('catalog/ocd_viewed');
        $this->load->model('tool/image');

        $page = isset($this->request->post['page']) ? max(1, (int)$this->request->post['page']) : 1;
        $limit = 8;
        $session_token = isset($this->request->cookie['viewed_product']) ? $this->request->cookie['viewed_product'] : false;
        $product_total = (int)$this->model_catalog_ocd_viewed->getTotalViewedProduct($session_token);
        $page_count = max(1, (int)ceil($product_total / $limit));
        $page = min($page, $page_count);

        $results = $this->model_catalog_ocd_viewed->getViewedProduct(array(
            'start' => ($page - 1) * $limit,
            'limit' => $limit
        ), $session_token);

        $data['products'] = array();
        foreach ($results as $result) {
            if (!$result) {
                continue;
            }

            $image = !empty($result['image']) ? $result['image'] : 'placeholder.png';
            if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                $price_works = (float)$result['price_works'] > 0
                    ? $this->currency->format($this->tax->calculate($result['price_works'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency'])
                    : false;
            } else {
                $price = false;
                $price_works = false;
            }

            $special = (float)$result['special'] > 0
                ? $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency'])
                : false;

            $data['products'][] = array(
                'product_id' => $result['product_id'],
                'thumb' => $this->model_tool_image->resize($image, 235, 235),
                'name' => html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'),
                'price' => $price,
                'price_works' => $price_works,
                'special' => $special,
                'href' => html_entity_decode($this->url->link('product/product', 'product_id=' . (int)$result['product_id'], true), ENT_QUOTES, 'UTF-8')
            );
        }

        $data['page'] = $page;
        $data['page_count'] = $page_count;
        $data['text_empty'] = $this->language->get('text_empty');

        $template = $this->config->get('config_template') . '/template/product/ocd_viewed_products.tpl';
        if (!file_exists(DIR_TEMPLATE . $template)) {
            $template = 'default/template/product/ocd_viewed_products.tpl';
        }

        $this->response->addHeader('Cache-Control: no-store');
        $this->response->setOutput($this->load->view($template, $data));
    }

    public function delete() {
        $this->load->language('product/ocd_viewed');
        $this->load->model('catalog/ocd_viewed');

        $json = array();
        if ($this->request->server['REQUEST_METHOD'] == 'POST' && isset($this->request->post['product_id'])) {
            $this->model_catalog_ocd_viewed->deleteViewedProduct($this->request->post['product_id']);
            $json['success'] = $this->language->get('text_success');
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }
}
