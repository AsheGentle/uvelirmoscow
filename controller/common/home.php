<?php
class ControllerCommonHome extends Controller {
	public function index() {



        $data = array();




        $this->document->setTitle($this->config->get('site_home_meta_title') ?: $this->config->get('config_meta_title'));

        $this->document->setDescription($this->config->get('site_home_meta_description') ?: $this->config->get('config_meta_description'));




        $this->document->setKeywords($this->config->get('config_meta_keyword'));





        if (isset($this->request->get['route'])) {
            $this->document->addLink((isset($this->request->server['HTTP']) ? HTTP_SERVER : HTTPS_SERVER), 'canonical');
        }

		$selected_shorts = (array)$this->config->get('site_home_shorts');
		$overviews = array();
		foreach ((array)$this->config->get('site_overviews_items') as $index => $overview) {
			if (!is_array($overview)) continue;
			$id = !empty($overview['id']) ? (int)$overview['id'] : $index + 1;
			$overviews[$id] = $overview;
		}
		$data['site_home_shorts'] = array();
		foreach ($selected_shorts as $selection) {
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
			$data['site_home_shorts'][] = $short;
		}
		$this->load->model('catalog/reviews');
		$data['site_home_reviews'] = $this->model_catalog_reviews->getReviewsByIds((array)$this->config->get('site_home_reviews'));
		$data['site_home_projects'] = (array)$this->config->get('site_home_projects');
		$data['site_home_faq'] = (array)$this->config->get('site_home_faq');
		$data['site_home_meta_title'] = (string)$this->config->get('site_home_meta_title');
		$data['site_home_meta_description'] = (string)$this->config->get('site_home_meta_description');
		$data['site_home_text'] = (string)$this->config->get('site_home_text');
		usort($data['site_home_shorts'], function($a, $b) {
			return (int)$a['sort_order'] - (int)$b['sort_order'];
		});
		foreach ($data['site_home_shorts'] as &$short) {
			$short['video'] = $this->getVkEmbedUrl(isset($short['video']) ? $short['video'] : '', 'clip');
			$short['preview_url'] = !empty($short['preview']) ? 'image/' . ltrim($short['preview'], '/') : '';
		}
		unset($short);
		usort($data['site_home_reviews'], function($a, $b) {
			return (int)$a['sort_order'] - (int)$b['sort_order'];
		});
		foreach ($data['site_home_reviews'] as &$review) {
			$review['video'] = $this->getVkEmbedUrl(isset($review['video']) ? $review['video'] : '', 'video');
			$review['preview_url'] = !empty($review['preview']) ? 'image/' . ltrim($review['preview'], '/') : '';
			$review['text'] = trim(strip_tags(isset($review['text']) ? $review['text'] : ''));
		}
		unset($review);

		usort($data['site_home_projects'], function($a, $b) {
			return (int)$a['sort_order'] - (int)$b['sort_order'];
		});
		$this->load->model('catalog/our_project');
		$this->load->model('tool/image');
		$projects = array();
		foreach ($data['site_home_projects'] as $item) {
			if (isset($item['mode']) && $item['mode'] === 'manual') {
				$name = isset($item['name']) ? $item['name'] : '';
				$image = isset($item['image']) ? $item['image'] : '';
				$href = html_entity_decode(isset($item['link']) ? $item['link'] : '', ENT_QUOTES, 'UTF-8');
			} else {
				$project = $this->model_catalog_our_project->getProject(isset($item['project_id']) ? (int)$item['project_id'] : 0);
				if (!$project) {
					continue;
				}
				$name = $project['name'];
				$image = $project['photo'];
				$href = '';
				$project_category = $this->model_catalog_our_project->getProjectCats((int)$project['id']);
				if (!empty($project['url']) && !empty($project_category['category_project_id'])) {
					$category = $this->model_catalog_our_project->getProjectCategory((int)$project_category['category_project_id']);
					if (!empty($category['alias'])) {
						$href = rtrim($this->config->get('config_ssl'), '/') . '/nasha-rabota/' . trim($category['alias'], '/') . '/' . ltrim($project['url'], '/');
					}
				}
				if (!$href) {
					$href = html_entity_decode($this->url->link('product/project', 'project_id=' . (int)$project['id']), ENT_QUOTES, 'UTF-8');
				}
			}
			if (!$image || !is_file(DIR_IMAGE . $image)) {
				continue;
			}
			$projects[] = array(
				'name' => $name,
				'image' => $this->model_tool_image->resize($image, 490, 490),
				'href' => $href
			);
		}
		$data['site_home_project_slides'] = $this->groupProjectSlides($projects);

		$data['employees'] = $this->load->controller('common/employees');



        $data['column_left'] = $this->load->controller('common/column_left');

        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');


        $data['footer'] = $this->load->controller('common/footer');

        $data['header'] = $this->load->controller('common/header');




		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}


	}

	private function groupProjectSlides($projects) {
		$slides = array();

		foreach (array_chunk($projects, 9) as $page) {
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

	public function subscription() {
	    $data = array();
        $this->load->model('home/home');
        $data['email'] = $this->request->post['email'];
        if($data['email'] == '' || utf8_strlen($this->request->post['email'] > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) return false;
        $this->model_home_home->addSub($data);
    }
}
