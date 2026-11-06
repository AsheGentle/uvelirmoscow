<?php
class ControllerInformationManufacturing extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('site_manufacturing_meta_title') ?: 'Изготовление ювелирных украшений');
		$this->document->setDescription($this->config->get('site_manufacturing_meta_description'));

		$this->document->addLink(html_entity_decode($this->url->link('information/manufacturing'), ENT_QUOTES, 'UTF-8'), 'canonical');

		$this->load->model('catalog/our_project');
		$this->load->language('common/header');
		$this->load->model('catalog/information');
		$this->load->model('catalog/product');
		$this->load->model('catalog/manufacturing_category');
		$this->load->model('catalog/reviews');
		$this->load->model('tool/image');

		$data['breadcrumbs'] = array(array('text' => $this->language->get('text_home'), 'href' => $this->url->link('common/home')));
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('information/manufacturing'));
		$data['breadcrumbs'][] = array(
			'text' => trim((string)$this->config->get('site_manufacturing_breadcrumb')) ?: $this->document->getTitle(),
			'href' => $this->url->link('information/manufacturing')
		);

		$data['category_wall'] = $this->prepareImages((array)$this->config->get('site_manufacturing_category_wall'), 'image');
		foreach ($data['category_wall'] as &$item) {
			$path = parse_url(html_entity_decode(isset($item['link']) ? $item['link'] : '', ENT_QUOTES, 'UTF-8'), PHP_URL_PATH);
			$category_id = $this->model_catalog_manufacturing_category->getCategoryIdByKeyword(basename((string)$path));
			if ($category_id) {
				$item['link'] = html_entity_decode($this->url->link('product/manufacturing_category', 'category_id=' . $category_id), ENT_QUOTES, 'UTF-8');
			}
		}
		unset($item);
		$data['certificates'] = $this->prepareImages((array)$this->config->get('site_manufacturing_certificates'), 'image', 228, 323);
		$overviews = array();
		foreach ((array)$this->config->get('site_overviews_items') as $index => $overview) {
			if (!is_array($overview)) continue;
			$id = !empty($overview['id']) ? (int)$overview['id'] : $index + 1;
			$overviews[$id] = $overview;
		}
		$shorts = array();
		foreach ((array)$this->config->get('site_manufacturing_shorts') as $selection) {
			if (!is_array($selection)) continue;
			$id = isset($selection['overview_id']) ? (int)$selection['overview_id'] : 0;
			if (!$id && !empty($selection['video'])) {
				foreach ($overviews as $overview_id => $overview) {
					if (isset($overview['video'], $overview['preview']) && $overview['video'] === $selection['video'] && $overview['preview'] === (isset($selection['preview']) ? $selection['preview'] : '')) {
						$id = $overview_id;
						break;
					}
				}
			}
			if (!$id || empty($overviews[$id]['video']) || empty($overviews[$id]['preview'])) continue;
			$short = $overviews[$id];
			$short['sort_order'] = isset($selection['sort_order']) ? (int)$selection['sort_order'] : 0;
			$shorts[] = $short;
		}
		$data['shorts'] = $this->prepareMedia($shorts, 'clip');

		$reviews = $this->config->get('site_manufacturing_reviews_use_home')
			? $this->model_catalog_reviews->getReviewsByIds((array)$this->config->get('site_home_reviews'))
			: $this->model_catalog_reviews->getReviewsByIds((array)$this->config->get('site_manufacturing_reviews'));
		$data['reviews'] = $this->prepareMedia($reviews, 'video');
		$data['faq'] = (array)$this->config->get('site_manufacturing_faq');
		$data['seo_text'] = (string)$this->config->get('site_manufacturing_seo_text');

		$costs = (array)$this->config->get('site_manufacturing_costs');
		$this->sortRows($costs);
		$data['cost_labels'] = array('no_tabs' => 'Без табов');
		$data['cost_segments'] = array('no_tabs' => array());
		$cost_tabs = array();
		foreach ((array)$this->config->get('site_menu_tabs') as $tab) {
			if (is_array($tab) && !empty($tab['id']) && isset($tab['target']) && $tab['target'] === 'manufacturing') {
				$cost_tabs[] = $tab;
			}
		}
		$this->sortRows($cost_tabs);
		foreach ($cost_tabs as $tab) {
			$segment = 'tab_' . (int)$tab['id'];
			$data['cost_labels'][$segment] = isset($tab['name']) ? $tab['name'] : '';
			$data['cost_segments'][$segment] = array();
		}
		foreach ($costs as $cost) {
			$segment = isset($cost['segment'], $data['cost_segments'][$cost['segment']]) ? $cost['segment'] : 'no_tabs';
			$product = !empty($cost['is_product']) && !empty($cost['product_id'])
				? $this->model_catalog_product->getProduct((int)$cost['product_id'])
				: array();
			$image = !empty($cost['image']) ? $cost['image'] : ($product ? $product['image'] : '');
			$data['cost_segments'][$segment][] = array(
				'title' => !empty($cost['title']) ? $cost['title'] : ($product ? $product['name'] : ''),
				'image' => $this->imageUrl($image),
				'product_price' => $this->formatCostPrice($product ? $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax'))) : (isset($cost['product_price']) ? $cost['product_price'] : ''), true),
				'work_price' => $this->formatCostPrice($product && !empty($product['price_works']) ? $this->currency->format($this->tax->calculate($product['price_works'], $product['tax_class_id'], $this->config->get('config_tax'))) : (isset($cost['work_price']) ? $cost['work_price'] : ''), false),
				'href' => !empty($cost['active_link']) ? ($product
					? html_entity_decode($this->url->link('product/product', 'product_id=' . (int)$product['product_id']), ENT_QUOTES, 'UTF-8')
					: html_entity_decode(isset($cost['link']) ? $cost['link'] : '', ENT_QUOTES, 'UTF-8')) : ''
			);
		}

		$project_rows = (array)$this->config->get('site_manufacturing_projects');
		$this->sortRows($project_rows);
		$projects = array();
		foreach ($project_rows as $row) {
			if (isset($row['mode']) && $row['mode'] === 'manual') {
				$name = isset($row['name']) ? $row['name'] : '';
				$image = isset($row['image']) ? $row['image'] : '';
				$href = html_entity_decode(isset($row['link']) ? $row['link'] : '', ENT_QUOTES, 'UTF-8');
			} else {
				$project = $this->model_catalog_our_project->getProject(isset($row['project_id']) ? (int)$row['project_id'] : 0);
				if (!$project) {
					continue;
				}
				$name = $project['name'];
				$image = $project['photo'];
				$href = $this->projectHref($project);
			}
			$image = $this->imageUrl($image);
			if ($image) {
				$projects[] = array('name' => $name, 'image' => $image, 'href' => $href);
			}
		}
		$data['project_slides'] = $this->groupProjectSlides($projects);

		$data['employees'] = $this->load->controller('common/employees');
		$data['header'] = $this->load->controller('common/header');
		$data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('uvelirmoscow_new/template/information/manufacturing.tpl', $data));
	}

	private function prepareImages($rows, $field, $width = 0, $height = 0) {
		$this->sortRows($rows);
		$result = array();
		foreach ($rows as $row) {
			$row[$field . '_url'] = $this->imageUrl(isset($row[$field]) ? $row[$field] : '');
			if ($row[$field . '_url']) {
				$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
				$row[$field . '_full'] = rtrim($server, '/') . '/' . ltrim($row[$field . '_url'], '/');
				if ($width && $height) {
					$filename = substr($row[$field . '_url'], 6);
					$row[$field . '_thumb'] = $this->model_tool_image->resize($filename, $width, $height);
					if (!$row[$field . '_thumb']) {
						continue;
					}
				} else {
					$row[$field . '_thumb'] = $row[$field . '_url'];
				}
				$result[] = $row;
			}
		}
		return $result;
	}

	private function prepareMedia($rows, $type) {
		$this->sortRows($rows);
		$result = array();
		foreach ($rows as $row) {
			$preview = $this->imageUrl(isset($row['preview']) ? $row['preview'] : '');
			$video = $this->getVkEmbedUrl(isset($row['video']) ? $row['video'] : '', $type);
			if ($preview && $video) {
				$result[] = array(
					'video' => $video,
					'preview' => $preview,
					'text' => trim(strip_tags(isset($row['text']) ? $row['text'] : ''))
				);
			}
		}
		return $result;
	}

	private function imageUrl($image) {
		$image = str_replace('\\', '/', trim($image));
		$image = preg_replace('~^.*?/image/~', '', $image);
		return $image && is_file(DIR_IMAGE . $image) ? 'image/' . ltrim($image, '/') : '';
	}

	private function sortRows(&$rows) {
		usort($rows, function($a, $b) {
			return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
		});
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
		if (preg_match('~<iframe[^>]+src=["\']([^"\']+)~i', $url, $match)) {
			$url = html_entity_decode($match[1], ENT_QUOTES, 'UTF-8');
		}
		if (strpos($url, $type . '_ext.php') !== false) {
			parse_str((string)parse_url($url, PHP_URL_QUERY), $query);
			if (!empty($query['oid']) && !empty($query['id'])) {
				$query['autoplay'] = 1;
				return 'https://' . ($type === 'video' ? 'vkvideo.ru' : 'vk.ru') . '/' . $type . '_ext.php?' . http_build_query($query, '', '&');
			}
		}
		if (preg_match('~(?:vk\.(?:ru|com)|vkvideo\.ru)/' . $type . '(-?\d+)_(\d+)~i', $url, $match)) {
			return 'https://' . ($type === 'video' ? 'vkvideo.ru' : 'vk.ru') . '/' . $type . '_ext.php?oid=' . $match[1] . '&id=' . $match[2] . '&autoplay=1';
		}
		return $url;
	}
}
