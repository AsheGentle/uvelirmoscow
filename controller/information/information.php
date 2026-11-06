<?php
class ControllerInformationInformation extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

        // $this->document->addScript('catalog/view/javascript/slick/slick.min.js?v1');
        $this->document->addStyle('catalog/view/javascript/slick/slick.css');
        $this->document->addStyle('catalog/view/javascript/slick/slick-theme.css');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info and !isset($this->request->get['page'])) {
			$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('information_id=' . $information_id));

			if ($information_info['meta_title']) {
				$this->document->setTitle($information_info['meta_title']);
			} else {
				$this->document->setTitle($information_info['title']);
			}

			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);
			$this->document->addLink(html_entity_decode($this->url->link('information/information', 'information_id=' . $information_id), ENT_QUOTES, 'UTF-8'), 'canonical');

			$data['breadcrumbs'][] = array(
				'text' => $information_info['title'],
				'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
			);

			if ($information_info['meta_h1']) {
				$data['heading_title'] = $information_info['meta_h1'];
			} else {
				$data['heading_title'] = $information_info['title'];
			}

			$data['button_continue'] = $this->language->get('button_continue');

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
			$data['information_faq_html'] = '';
			$faq = array_filter((array)$this->config->get('information_faq_' . $information_id), function($item) {
				return is_array($item) && !empty($item['question']) && !empty($item['answer']);
			});
			if ($faq) {
				$data['information_faq_html'] = $this->load->view($this->config->get('config_template') . '/template/information/faq.tpl', array('faq' => $faq));
			}
			$template = $this->model_catalog_information->getTemplate($information_id);
			$data['header_contacts_phone'] = (string)$this->config->get('header_contacts_phone');
			$data['header_contacts_email'] = (string)$this->config->get('header_contacts_email');
			$data['header_contacts_work_weekdays'] = (string)$this->config->get('header_contacts_work_weekdays');
			$data['header_contacts_work_weekend'] = (string)$this->config->get('header_contacts_work_weekend');
			$phone_digits = preg_replace('/\D+/', '', $data['header_contacts_phone']);
			if (strlen($phone_digits) === 11 && $phone_digits[0] === '8') {
				$phone_digits = '7' . substr($phone_digits, 1);
			}
			$data['header_contacts_phone_href'] = $phone_digits ? 'tel:+' . $phone_digits : '';
			$data['header_contacts_socials'] = array();
			$data['header_contacts_messengers'] = array();
			if (in_array($template, array('information/information_order_online', 'information/information_details', 'information/information_contacts'))) {
				$this->load->model('setting/setting');
				$header_contacts = $this->model_setting_setting->getSetting('header_contacts');
				$socials = isset($header_contacts['header_contacts_socials']) ? (array)$header_contacts['header_contacts_socials'] : array();
				$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
				foreach ($socials as $social) {
					$icon = isset($social['icon']) ? str_replace('\\', '/', trim($social['icon'])) : '';
					$link = isset($social['link']) ? trim($social['link']) : '';
					$image_position = strpos($icon, '/image/');
					if ($image_position !== false) {
						$icon = substr($icon, $image_position + 7);
					}
					$icon = preg_replace('~^image/~i', '', ltrim($icon, '/'));
					if ($link && !preg_match('~^[a-z][a-z0-9+.-]*://~i', $link)) {
						$link = 'https://' . ltrim($link, '/');
					}
					if ($icon && $link && preg_match('~^(https?://|tg://)~i', $link)) {
						$data['header_contacts_socials'][] = array(
							'icon' => rtrim($server, '/') . '/image/' . ltrim($icon, '/'),
							'link' => $link
						);
					}
				}
				if ($template === 'information/information_contacts') {
					$messengers = isset($header_contacts['header_contacts_messengers']) ? (array)$header_contacts['header_contacts_messengers'] : array();
					foreach ($messengers as $messenger) {
						$phone = isset($messenger['phone']) ? trim($messenger['phone']) : '';
						$digits = preg_replace('/\D+/', '', $phone);
						if (strlen($digits) === 11 && $digits[0] === '8') {
							$digits = '7' . substr($digits, 1);
						}
						if ($digits) {
							$data['header_contacts_messengers'][] = array(
								'phone' => $phone,
								'name' => isset($messenger['name']) ? trim($messenger['name']) : '',
								'href' => 'https://wa.me/' . $digits
							);
						}
					}
				}
			}

			$data['manufacturing_certificates'] = array();
			if ($template === 'information/information_guarantees') {
				$this->load->model('tool/image');
				$certificate_rows = (array)$this->config->get('site_manufacturing_certificates');
				usort($certificate_rows, function($a, $b) {
					return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
				});
				$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
				foreach ($certificate_rows as $certificate) {
					$image = isset($certificate['image']) ? str_replace('\\', '/', trim($certificate['image'])) : '';
					$image = preg_replace('~^.*?/image/~', '', $image);
					if ($image && is_file(DIR_IMAGE . $image)) {
						$thumb = $this->model_tool_image->resize($image, 228, 323);
						if (!$thumb) {
							continue;
						}
						$data['manufacturing_certificates'][] = array(
							'full' => rtrim($server, '/') . '/image/' . ltrim($image, '/'),
							'thumb' => $thumb
						);
					}
				}
			}

			$data['information_documents'] = array();
			if ($information_id === 62) {
				$documents = (array)$this->config->get('information_documents_62');
				$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
				foreach (array('ogrnip', 'inn', 'egrip', 'fpp', 'details') as $key) {
					$file = isset($documents[$key]) ? str_replace('\\', '/', trim($documents[$key])) : '';
					$file = preg_replace('~^.*?/image/~', '', $file);
					if ($file && is_file(DIR_IMAGE . $file)) {
						$data['information_documents'][$key] = rtrim($server, '/') . '/image/' . ltrim($file, '/');
					}
				}
			}

			$data['certificate_groups'] = array();
			if ($information_id === 48 && $template === 'information/information_certificates') {
				$this->load->model('tool/image');
				$certificate_groups = (array)$this->config->get('information_certificates_48');
				$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
				foreach (array('jewelry', 'diamonds', 'gemstones', 'metals', 'awards', 'registration') as $group) {
					$rows = isset($certificate_groups[$group]) ? (array)$certificate_groups[$group] : array();
					usort($rows, function($a, $b) {
						return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
					});
					$data['certificate_groups'][$group] = array();
					foreach ($rows as $certificate) {
						$image = isset($certificate['image']) ? str_replace('\\', '/', trim($certificate['image'])) : '';
						$image = preg_replace('~^.*?/image/~', '', $image);
						if (!$image || !is_file(DIR_IMAGE . $image)) {
							continue;
						}
						$thumb = $this->model_tool_image->resize($image, 228, 323);
						if ($thumb) {
							$data['certificate_groups'][$group][] = array(
								'full' => rtrim($server, '/') . '/image/' . ltrim($image, '/'),
								'thumb' => $thumb
							);
						}
					}
				}
			}

			$data['about_employees'] = array();
			$data['about_awards'] = array();
			if ($information_id === 4) {
				$this->load->model('tool/image');
				$employees = (array)$this->config->get('site_home_employees');
				usort($employees, function($a, $b) {
					return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
				});
				foreach ($employees as $employee) {
					$image = preg_replace('~^.*?/image/~', '', str_replace('\\', '/', trim(isset($employee['image']) ? $employee['image'] : '')));
					if ($image && is_file(DIR_IMAGE . $image)) {
						$data['about_employees'][] = array(
							'image' => $this->model_tool_image->resize($image, 480, 592),
							'name' => isset($employee['name']) ? $employee['name'] : '',
							'position' => isset($employee['position']) ? $employee['position'] : ''
						);
					}
				}

				$awards = (array)$this->config->get('information_awards_4');
				usort($awards, function($a, $b) {
					return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
				});
				$server = !empty($this->request->server['HTTPS']) ? $this->config->get('config_ssl') : $this->config->get('config_url');
				foreach ($awards as $award) {
					$image = preg_replace('~^.*?/image/~', '', str_replace('\\', '/', trim(isset($award['image']) ? $award['image'] : '')));
					if ($image && is_file(DIR_IMAGE . $image)) {
						$data['about_awards'][] = array(
							'full' => rtrim($server, '/') . '/image/' . ltrim($image, '/'),
							'thumb' => $this->model_tool_image->resize($image, 228, 323)
						);
					}
				}
			}

			$data['project_categories'] = array();
			$data['projects_html'] = '';
			if ($template === 'information/information_how_order') {
				$this->load->model('catalog/our_project');
				$this->load->model('tool/image');
				foreach ($this->model_catalog_our_project->getAllProjectsCategories(array('sort' => 'sort_order', 'order' => 'ASC')) as $category) {
					$data['project_categories'][] = array(
						'id' => (int)$category['id'],
						'name' => $category['name'],
						'thumb' => !empty($category['photo']) && is_file(DIR_IMAGE . $category['photo']) ? $this->model_tool_image->resize($category['photo'], 50, 50) : '',
						'href' => html_entity_decode($this->url->link('product/our_project', 'category_project_id=' . (int)$category['id']), ENT_QUOTES, 'UTF-8')
					);
				}
				$data['projects_ajax_url'] = html_entity_decode($this->url->link('information/information/projects'), ENT_QUOTES, 'UTF-8');
				$first_category_id = $data['project_categories'] ? $data['project_categories'][0]['id'] : 0;
				$data['projects_html'] = $this->load->view($this->config->get('config_template') . '/template/information/how_order_projects.tpl', $this->getHowOrderProjects($first_category_id));
			}

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');




			$template_file = $this->config->get('config_template') . '/template/' . $template . '.tpl';
			if (!$template || !preg_match('~^[a-z0-9_/-]+$~', $template) || !is_file(DIR_TEMPLATE . $template_file)) {
				$template_file = $this->config->get('config_template') . '/template/information/information.tpl';
			}

			if (is_file(DIR_TEMPLATE . $template_file)) {
				$this->response->setOutput($this->load->view($template_file, $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/information/information.tpl', $data));
			}


		} else {
			return $this->load->controller('error/not_found');
		}
	}

	public function projects() {
		$category_id = isset($this->request->get['category_id']) ? (int)$this->request->get['category_id'] : 0;
		$this->load->model('catalog/our_project');
		$this->load->model('tool/image');
		if (!$category_id || !$this->model_catalog_our_project->getProjectCategory($category_id)) {
			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');
			$this->response->setOutput('');
			return;
		}
		$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/how_order_projects.tpl', $this->getHowOrderProjects($category_id)));
	}

	private function getHowOrderProjects($category_id) {
		$category = $category_id ? $this->model_catalog_our_project->getProjectCategory($category_id) : array();
		$data['projects'] = array();
		$data['all_projects_url'] = $category
			? html_entity_decode($this->url->link('product/our_project', 'category_project_id=' . $category_id), ENT_QUOTES, 'UTF-8')
			: html_entity_decode($this->url->link('product/our_project'), ENT_QUOTES, 'UTF-8');
		if (!$category) {
			return $data;
		}
		$results = $this->model_catalog_our_project->getAllProjects(array(
			'category_project_id' => $category_id,
			'sort' => 'date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => 7
		));
		foreach ($results as $project) {
			$image = !empty($project['photo']) && is_file(DIR_IMAGE . $project['photo'])
				? $this->model_tool_image->resize($project['photo'], 490, 490)
				: $this->model_tool_image->resize('placeholder.png', 490, 490);
			$data['projects'][] = array(
				'name' => html_entity_decode($project['name'], ENT_QUOTES, 'UTF-8'),
				'thumb' => $image,
				'href' => html_entity_decode($this->url->link('product/project', 'project_id=' . (int)$project['id']), ENT_QUOTES, 'UTF-8')
			);
		}
		return $data;
	}

	public function agree() {
		$this->load->model('catalog/information');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$output = '';

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
		}

		$this->response->setOutput($output);
	}
}
