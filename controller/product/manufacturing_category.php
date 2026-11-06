<?php
class ControllerProductManufacturingCategory extends Controller {
	public function index() {
		$category_id = isset($this->request->get['category_id']) ? (int)$this->request->get['category_id'] : 0;
		$this->load->model('catalog/manufacturing_category');
		$category = $this->model_catalog_manufacturing_category->getCategory($category_id);

		if (!$category) {
			return $this->load->controller('error/not_found');
		}

		$this->document->setTitle($category['manufacturing_meta_title'] ?: ($category['meta_title'] ?: $category['name']));
		$this->document->setDescription($category['manufacturing_meta_description'] ?: $category['meta_description']);
		$this->document->setKeywords($category['meta_keyword']);
		$this->document->addLink(html_entity_decode($this->url->link('product/manufacturing_category', 'category_id=' . $category_id), ENT_QUOTES, 'UTF-8'), 'canonical');

		$this->load->model('tool/image');
		$this->load->language('common/header');
		$this->load->model('catalog/information');
		$this->load->model('catalog/our_project');
		$this->load->model('catalog/product');
		$this->load->model('catalog/reviews');

		$data['category_id'] = $category_id;
		$data['name'] = $category['name'];
		$data['breadcrumb_text'] = !empty($category['breadcrumb']) ? $category['breadcrumb'] : $category['name'];
		$data['heading_title'] = $category['meta_h1'] ?: $category['name'];
		$data['description'] = $category['description'];
		$data['short_description'] = $category['short_description'];
		$data['seo_text'] = $category['manufacturing_seo_text'];
		$category_breadcrumbs = $this->model_catalog_manufacturing_category->getBreadcrumbs($category_id);
		$data['breadcrumbs'] = array(array('text' => $this->language->get('text_home'), 'href' => $this->url->link('common/home')));
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('information/manufacturing'));
		$data['breadcrumbs'][] = array(
			'text' => trim((string)$this->config->get('site_manufacturing_breadcrumb')) ?: $this->config->get('site_manufacturing_meta_title'),
			'href' => $this->url->link('information/manufacturing')
		);
		$data['manufacturing_href'] = html_entity_decode($this->url->link('information/manufacturing'), ENT_QUOTES, 'UTF-8');
		foreach ($category_breadcrumbs as $breadcrumb) {
			$data['breadcrumbs'][] = array(
				'text' => (int)$breadcrumb['category_id'] === $category_id ? $data['breadcrumb_text'] : $breadcrumb['name'],
				'href' => html_entity_decode($this->url->link('product/manufacturing_category', 'category_id=' . (int)$breadcrumb['category_id']), ENT_QUOTES, 'UTF-8')
			);
		}

		$data['category_wall'] = array();
		foreach ($category['manufacturing_category_wall'] as $group) {
			$items = isset($group['items']) ? $group['items'] : array();
			$this->sortRows($items);
			$prepared = array();
			foreach ($items as $item) {
				$image = $this->imagePath(isset($item['image']) ? $item['image'] : '');
				if ($image) {
					$item['image_url'] = $this->model_tool_image->resize($image, 198, 198);
					$prepared[] = $item;
				}
			}
			if ($prepared) {
				$data['category_wall'][] = array('name' => isset($group['name']) ? $group['name'] : '', 'items' => $prepared);
			}
		}

		$data['certificates'] = array();
		$certificates = !empty($category['manufacturing_certificates_use_main']) ? (array)$this->config->get('site_manufacturing_certificates') : $category['manufacturing_certificates'];
		$this->sortRows($certificates);
		foreach ($certificates as $item) {
			$image = $this->imagePath(isset($item['image']) ? $item['image'] : '');
			if ($image) {
				$data['certificates'][] = array(
					'full' => $this->absoluteImage($image),
					'thumb' => $this->model_tool_image->resize($image, 228, 323)
				);
			}
		}

		$data['cost_labels'] = array('no_tabs' => 'Без табов');
		$data['cost_segments'] = array('no_tabs' => array());
		$cost_tabs = array();
		foreach ((array)$this->config->get('site_menu_tabs') as $tab) {
			if (is_array($tab) && !empty($tab['id']) && isset($tab['target']) && $tab['target'] === 'categories') {
				$cost_tabs[] = $tab;
			}
		}
		$this->sortRows($cost_tabs);
		foreach ($cost_tabs as $tab) {
			$segment = 'tab_' . (int)$tab['id'];
			$data['cost_labels'][$segment] = isset($tab['name']) ? $tab['name'] : '';
			$data['cost_segments'][$segment] = array();
		}
		$costs = $category['manufacturing_costs'];
		$this->sortRows($costs);
		foreach ($costs as $cost) {
			$segment = isset($cost['segment'], $data['cost_segments'][$cost['segment']]) ? $cost['segment'] : 'no_tabs';
			$product = !empty($cost['is_product']) && !empty($cost['product_id']) ? $this->model_catalog_product->getProduct((int)$cost['product_id']) : array();
			$image = $this->imagePath(!empty($cost['image']) ? $cost['image'] : ($product ? $product['image'] : ''));
			$data['cost_segments'][$segment][] = array(
				'title' => !empty($cost['title']) ? $cost['title'] : ($product ? $product['name'] : ''),
				'image' => $image ? $this->model_tool_image->resize($image, 296, 296) : '',
				'product_price' => $this->formatCostPrice($product ? $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax'))) : (isset($cost['product_price']) ? $cost['product_price'] : ''), true),
				'work_price' => $this->formatCostPrice($product && !empty($product['price_works']) ? $this->currency->format($this->tax->calculate($product['price_works'], $product['tax_class_id'], $this->config->get('config_tax'))) : (isset($cost['work_price']) ? $cost['work_price'] : ''), false),
				'href' => !empty($cost['active_link']) ? ($product ? html_entity_decode($this->url->link('product/product', 'product_id=' . (int)$product['product_id']), ENT_QUOTES, 'UTF-8') : html_entity_decode(isset($cost['link']) ? $cost['link'] : '', ENT_QUOTES, 'UTF-8')) : ''
			);
		}

		$projects = array();
		$project_rows = $category['manufacturing_projects'];
		$this->sortRows($project_rows);




		foreach ($project_rows as $row) {
			if (isset($row['mode']) && $row['mode'] === 'manual') {
				$name = isset($row['name']) ? $row['name'] : '';
				$image = $this->imagePath(isset($row['image']) ? $row['image'] : '');
				$href = html_entity_decode(isset($row['link']) ? $row['link'] : '', ENT_QUOTES, 'UTF-8');
			} else {
				$project = $this->model_catalog_our_project->getProject(isset($row['project_id']) ? (int)$row['project_id'] : 0);
				if (!$project) continue;
				$name = $project['name'];
				$image = $this->imagePath($project['photo']);
				$href = $this->projectHref($project);
			}
			if ($image) $projects[] = array('name' => $name, 'image' => $this->model_tool_image->resize($image, 490, 490), 'href' => $href);
		}
		$data['project_slides'] = $this->groupProjectSlides($projects);

		$reviews = !empty($category['manufacturing_reviews_use_home']) ? $this->model_catalog_reviews->getReviewsByIds((array)$this->config->get('site_home_reviews')) : $this->model_catalog_reviews->getReviewsByIds($category['manufacturing_reviews']);
		$data['reviews'] = $this->prepareMedia($reviews, 'video');
		$data['shorts'] = $this->prepareMedia($category['manufacturing_shorts'], 'clip');
		$data['faq'] = $category['manufacturing_faq'];

		$data['employees'] = $this->load->controller('common/employees');
		$data['header'] = $this->load->controller('common/header');
		$data['footer'] = $this->load->controller('common/footer');
		$template = $this->model_catalog_manufacturing_category->getTemplate($category_id);
		$template_file = 'uvelirmoscow_new/template/product/manufacturing_category_' . $template . '.tpl';
		if (!$template || !preg_match('/^[a-z0-9_-]+$/', $template) || !is_file(DIR_TEMPLATE . $template_file)) {
			$template_file = 'uvelirmoscow_new/template/product/manufacturing_category.tpl';
		}
		$this->response->setOutput($this->load->view($template_file, $data));
	}

	private function prepareMedia($rows, $type) {
		$this->sortRows($rows);
		$result = array();
		foreach ($rows as $row) {
			$image = $this->imagePath(isset($row['preview']) ? $row['preview'] : '');
			$video = $this->getVkEmbedUrl(isset($row['video']) ? $row['video'] : '', $type);
			if ($image && $video) $result[] = array('video' => $video, 'preview' => $this->absoluteImage($image), 'text' => trim(strip_tags(isset($row['text']) ? $row['text'] : '')));
		}
		return $result;
	}

	private function imagePath($image) {
		$image = preg_replace('~^.*?/image/~', '', str_replace('\\', '/', trim($image)));
		return $image && is_file(DIR_IMAGE . $image) ? $image : '';
	}

	private function absoluteImage($image) {
		$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
		return rtrim($server, '/') . '/image/' . ltrim($image, '/');
	}

	private function sortRows(&$rows) {
		usort($rows, function($a, $b) { return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0); });
	}

	private function groupProjectSlides($projects) {
		$slides = array();

		foreach (array_chunk($projects, 15) as $page) {
			for ($column = 0; $column < 3; $column++) {
				$slide = array();

				for ($index = $column; $index < count($page); $index += 3) {
					$slide[] = $page[$index];
				}

				if ($slide) {
					$slides[] = $slide;
				}
			}
		}

		return $slides;
	}

	private function formatCostPrice($value, $from) {
		$value = trim(strip_tags(html_entity_decode((string)$value, ENT_QUOTES, 'UTF-8')));
		$value = preg_replace($from ? '/^от\s+/ui' : '/\s+с\s+материалами заказчика$/ui', '', $value);
		$number = preg_replace('/\s*(?:руб\.?|р\.?|₽)\s*$/ui', '', $value);
		$number = str_replace(array(' ', "\xC2\xA0", ','), array('', '', '.'), $number);

		if ($number === '' || !is_numeric($number)) {
			return preg_replace('/\s+/u', "\xC2\xA0", $value);
		}

		$decimals = floor((float)$number) == (float)$number ? 0 : 2;
		$price = number_format((float)$number, $decimals, ',', "\xC2\xA0") . "\xC2\xA0руб.";

		return $from ? "от\xC2\xA0" . $price : $price . "\xC2\xA0с\xC2\xA0материалами заказчика";
	}

	private function projectHref($project) {
		$category_link = $this->model_catalog_our_project->getProjectCats((int)$project['id']);
		if (!empty($project['url']) && !empty($category_link['category_project_id'])) {
			$category = $this->model_catalog_our_project->getProjectCategory((int)$category_link['category_project_id']);
			if (!empty($category['alias'])) {
				return rtrim($this->config->get('config_ssl'), '/') . '/nasha-rabota/' . trim($category['alias'], '/') . '/' . ltrim($project['url'], '/');
			}
		}
		return html_entity_decode($this->url->link('product/project', 'project_id=' . (int)$project['id']), ENT_QUOTES, 'UTF-8');
	}

	private function getVkEmbedUrl($url, $type) {
		$url = html_entity_decode($url, ENT_QUOTES, 'UTF-8');
		if (preg_match('~<iframe[^>]+src=["\']([^"\']+)~i', $url, $match)) $url = html_entity_decode($match[1], ENT_QUOTES, 'UTF-8');
		if (strpos($url, $type . '_ext.php') !== false) {
			parse_str((string)parse_url($url, PHP_URL_QUERY), $query);
			if (!empty($query['oid']) && !empty($query['id'])) {
				$query['autoplay'] = 1;
				return 'https://' . ($type === 'video' ? 'vkvideo.ru' : 'vk.ru') . '/' . $type . '_ext.php?' . http_build_query($query, '', '&');
			}
		}
		if (preg_match('~(?:vk\.(?:ru|com)|vkvideo\.ru)/' . $type . '(-?\d+)_(\d+)~i', $url, $match)) return 'https://' . ($type === 'video' ? 'vkvideo.ru' : 'vk.ru') . '/' . $type . '_ext.php?oid=' . $match[1] . '&id=' . $match[2] . '&autoplay=1';
		return $url;
	}
}
