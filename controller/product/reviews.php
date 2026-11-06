<?php
class ControllerProductReviews extends Controller {
	public function index() {
		$this->load->language('product/reviews');
		$this->load->language('common/header');
		$this->load->model('catalog/information');
		$this->load->model('catalog/reviews');
		$this->load->model('tool/image');

		$page = isset($this->request->get['page']) ? max(1, (int)$this->request->get['page']) : 1;
		$limit = 4;
		$video_total = $this->model_catalog_reviews->getTotalReviews('video');

		$data['heading_title'] = $this->language->get('heading_title');
		$this->document->setTitle($data['heading_title']);
		$data['breadcrumbs'] = array(array('text' => $this->language->get('text_home'), 'href' => $this->url->link('common/home')));
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('product/reviews'));
		$data['breadcrumbs'][] = array('text' => $data['heading_title'], 'href' => $this->url->link('product/reviews'));
		$this->document->addLink(html_entity_decode($this->url->link('product/reviews', $page > 1 ? 'page=' . $page : ''), ENT_QUOTES, 'UTF-8'), 'canonical');

		$data['video_reviews'] = array();
		foreach ($this->model_catalog_reviews->getVideoReviews(($page - 1) * $limit, $limit) as $review) {
			$data['video_reviews'][] = array(
				'video' => $this->getVkEmbedUrl($review['video']),
				'preview' => $this->model_tool_image->resize($review['preview'], 698, 300),
				'text' => trim(strip_tags(html_entity_decode($review['text'], ENT_QUOTES, 'UTF-8')))
			);
		}

		$data['text_reviews'] = array();
		foreach ($this->model_catalog_reviews->getReviews(0, 20) as $review) {
			$data['text_reviews'][] = array(
				'author' => $review['author'],
				'text' => $review['text'],
				'rating' => max(0, min(5, (int)$review['rating'])),
				'date_added' => date('d.m.Y', strtotime($review['date_added']))
			);
		}

		$data['page'] = $page;
		$data['page_count'] = (int)ceil($video_total / $limit);
		$data['pagination_url'] = html_entity_decode($this->url->link('product/reviews', 'page={page}'), ENT_QUOTES, 'UTF-8');
		$data['write_url'] = html_entity_decode($this->url->link('product/reviews/write'), ENT_QUOTES, 'UTF-8');
		$data['text_no_reviews'] = $this->language->get('text_no_reviews');
		$data['captcha'] = '';
		if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
			$data['captcha'] = $this->load->controller('captcha/' . $this->config->get('config_captcha'));
		}

		$data['header'] = $this->load->controller('common/header');
		$data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('uvelirmoscow_new/template/product/reviews.tpl', $data));
	}

	public function write() {
		$this->load->language('product/reviews');
		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			$name = isset($this->request->post['name']) ? trim($this->request->post['name']) : '';
			$email = isset($this->request->post['email']) ? trim($this->request->post['email']) : '';
			$text = isset($this->request->post['text']) ? trim($this->request->post['text']) : '';
			$rating = isset($this->request->post['rating']) ? (int)$this->request->post['rating'] : 0;

			if (utf8_strlen($name) < 2 || utf8_strlen($name) > 64) {
				$json['error'] = $this->language->get('error_name');
			} elseif ($email !== '' && (utf8_strlen($email) > 64 || !filter_var($email, FILTER_VALIDATE_EMAIL))) {
				$json['error'] = $this->language->get('error_email');
			} elseif (utf8_strlen($text) < 25 || utf8_strlen($text) > 2000) {
				$json['error'] = $this->language->get('error_text');
			} elseif ($rating < 1 || $rating > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			if (!isset($json['error']) && $this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');
				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('catalog/reviews');
				$this->model_catalog_reviews->addReview(array('name' => $name, 'email' => $email, 'text' => $text, 'rating' => $rating));
				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	private function getVkEmbedUrl($url) {
		$url = html_entity_decode($url, ENT_QUOTES, 'UTF-8');
		if (preg_match('~<iframe[^>]+src=["\']([^"\']+)~i', $url, $match)) {
			$url = html_entity_decode($match[1], ENT_QUOTES, 'UTF-8');
		}
		if (strpos($url, 'video_ext.php') !== false) {
			parse_str((string)parse_url($url, PHP_URL_QUERY), $query);
			if (!empty($query['oid']) && !empty($query['id'])) {
				$query['autoplay'] = 1;
				return 'https://vkvideo.ru/video_ext.php?' . http_build_query($query, '', '&');
			}
		}
		if (preg_match('~(?:vk\.(?:ru|com)|vkvideo\.ru)/video(-?\d+)_(\d+)~i', $url, $match)) {
			return 'https://vkvideo.ru/video_ext.php?oid=' . $match[1] . '&id=' . $match[2] . '&autoplay=1';
		}
		return $url;
	}
}
