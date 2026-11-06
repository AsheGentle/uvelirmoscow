<?php
class ControllerInformationOverviews extends Controller {
	public function index() {
		$this->load->language('common/header');
		$this->load->model('catalog/information');
		$this->load->model('tool/image');
		$page = isset($this->request->get['page']) ? max(1, (int)$this->request->get['page']) : 1;
		$limit = 5;
		$items = (array)$this->config->get('site_overviews_items');
		usort($items, function($a, $b) {
			return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
		});
		$items = array_values(array_filter($items, function($item) {
			return !empty($item['video']) && !empty($item['preview']);
		}));

		$data['items'] = array();
		foreach (array_slice($items, ($page - 1) * $limit, $limit) as $item) {
			$preview = isset($item['preview']) ? str_replace('\\', '/', trim($item['preview'])) : '';
			$preview = preg_replace('~^.*?/image/~', '', $preview);
			$data['items'][] = array(
				'video' => $this->getVkEmbedUrl($item['video']),
				'preview' => $this->model_tool_image->resize($preview, 282, 505)
			);
		}

		$data['heading_title'] = 'Хотите такое же украшение? Узнайте, как мы его создаём!';
		$this->document->setTitle('Обзоры');
		$data['breadcrumbs'] = array(array('text' => $this->language->get('text_home'), 'href' => $this->url->link('common/home')));
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('information/overviews'));
		$data['breadcrumbs'][] = array('text' => $this->document->getTitle(), 'href' => $this->url->link('information/overviews'));
		$this->document->addLink(html_entity_decode($this->url->link('information/overviews', $page > 1 ? 'page=' . $page : ''), ENT_QUOTES, 'UTF-8'), 'canonical');
		$data['page'] = $page;
		$data['page_count'] = (int)ceil(count($items) / $limit);
		$data['pagination_url'] = html_entity_decode($this->url->link('information/overviews', 'page={page}'), ENT_QUOTES, 'UTF-8');
		$data['header'] = $this->load->controller('common/header');
		$data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('uvelirmoscow_new/template/information/overviews.tpl', $data));
	}

	private function getVkEmbedUrl($url) {
		$url = html_entity_decode($url, ENT_QUOTES, 'UTF-8');
		if (preg_match('~<iframe[^>]+src=["\']([^"\']+)~i', $url, $match)) {
			$url = html_entity_decode($match[1], ENT_QUOTES, 'UTF-8');
		}
		if (strpos($url, 'clip_ext.php') !== false) {
			parse_str((string)parse_url($url, PHP_URL_QUERY), $query);
			if (!empty($query['oid']) && !empty($query['id'])) {
				$query['autoplay'] = 1;
				return 'https://vk.ru/clip_ext.php?' . http_build_query($query, '', '&');
			}
		}
		if (preg_match('~(?:vk\.(?:ru|com)|vkvideo\.ru)/clip(-?\d+)_(\d+)~i', $url, $match)) {
			return 'https://vk.ru/clip_ext.php?oid=' . $match[1] . '&id=' . $match[2] . '&autoplay=1';
		}
		return $url;
	}
}
