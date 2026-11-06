<?php

class ControllerProductProject extends Controller {
    public function index() {
        $project_id = isset($this->request->get['project_id']) ? (int)$this->request->get['project_id'] : 0;

        $this->load->language('product/project');
		$this->load->language('common/header');
        $this->load->model('catalog/our_project');
		$this->load->model('catalog/information');
        $this->load->model('catalog/product');
        $this->load->model('tool/image');

        $project = $this->model_catalog_our_project->getProject($project_id);
        if (!$project || isset($this->request->get['page'])) {
            return $this->load->controller('error/not_found');
        }

        $data['heading_title'] = html_entity_decode(!empty($project['seo_h1']) ? $project['seo_h1'] : $project['name'], ENT_QUOTES, 'UTF-8');
        $data['description'] = html_entity_decode($project['description'], ENT_QUOTES, 'UTF-8');
        $data['date_added'] = date($this->language->get('date_format_short'), strtotime($project['date_added']));

        $this->document->setTitle(!empty($project['seo_title']) ? $project['seo_title'] : $project['name']);
        $this->document->setDescription($project['seo_description']);
        $this->document->setKeywords($project['seo_keywords']);

        $data['works_href'] = html_entity_decode($this->url->link('product/our_project', '', true), ENT_QUOTES, 'UTF-8');
        $data['home_href'] = html_entity_decode($this->url->link('common/home', '', true), ENT_QUOTES, 'UTF-8');
		$main_category_id = !empty($project['main_category_id']) ? (int)$project['main_category_id'] : 0;
		if (!$main_category_id) {
			$category_link = $this->model_catalog_our_project->getProjectCats($project_id);
			$main_category_id = !empty($category_link['category_project_id']) ? (int)$category_link['category_project_id'] : 0;
		}
		$category = $main_category_id ? $this->model_catalog_our_project->getProjectCategory($main_category_id) : array();
		$data['breadcrumbs'] = array(array('text' => $this->language->get('text_home'), 'href' => $data['home_href']));
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('product/our_project'));
		$data['breadcrumbs'][] = array(
			'text' => trim((string)$this->config->get('our_project_page_breadcrumb')) ?: trim((string)$this->config->get('our_project_page_h1')),
			'href' => $data['works_href']
		);
		if ($category) {
			$data['breadcrumbs'][] = array(
				'text' => !empty($category['breadcrumb']) ? $category['breadcrumb'] : (!empty($category['h1']) ? $category['h1'] : $category['name']),
				'href' => $this->url->link('product/our_project', 'category_project_id=' . $main_category_id, true)
			);
		}
		$data['breadcrumbs'][] = array('text' => $data['heading_title'], 'href' => $this->url->link('product/project', 'project_id=' . $project_id));
        $canonical = html_entity_decode($this->url->link('product/project', 'project_id=' . $project_id, true), ENT_QUOTES, 'UTF-8');
        $this->document->addLink($canonical, 'canonical');

        $photos = $this->model_catalog_our_project->getProjectPhotos($project_id);
        if (!$photos && !empty($project['photo'])) {
            $photos[] = array('photo' => $project['photo'], 'main_photo' => 1, 'sort_order' => 0);
        }

        $data['images'] = array();
        foreach ($photos as $photo) {
            if (empty($photo['photo']) || !is_file(DIR_IMAGE . $photo['photo'])) {
                continue;
            }

            $data['images'][] = array(
                'popup' => rtrim($this->config->get('config_ssl'), '/') . '/image/' . ltrim($photo['photo'], '/'),
                'image' => $this->model_tool_image->resize($photo['photo'], 620, 620),
                'thumb' => $this->model_tool_image->resize($photo['photo'], 100, 100)
            );
        }

        if (!$data['images']) {
            $data['images'][] = array(
                'popup' => $this->model_tool_image->resize('placeholder.png', 620, 620),
                'image' => $this->model_tool_image->resize('placeholder.png', 620, 620),
                'thumb' => $this->model_tool_image->resize('placeholder.png', 100, 100)
            );
        }

        $data['product_href'] = '';
        if (!empty($project['related_product']) && $this->model_catalog_product->getProduct((int)$project['related_product'])) {
            $data['product_href'] = html_entity_decode($this->url->link('product/product', 'product_id=' . (int)$project['related_product'], true), ENT_QUOTES, 'UTF-8');
        }

        $data['manufacturing_href'] = !empty($category['manufacturing_category_id'])
            ? html_entity_decode($this->url->link('product/manufacturing_category', 'category_id=' . (int)$category['manufacturing_category_id'], true), ENT_QUOTES, 'UTF-8')
            : html_entity_decode($this->url->link('information/manufacturing', '', true), ENT_QUOTES, 'UTF-8');
        $data['catalog_href'] = !empty($category['catalog_category_id'])
            ? html_entity_decode($this->url->link('product/category', 'path=' . (int)$category['catalog_category_id'], true), ENT_QUOTES, 'UTF-8')
            : '/katalog';

        $data['related_projects'] = array();
        foreach ($main_category_id ? $this->model_catalog_our_project->getProjectsByMainCategory($main_category_id, $project_id, 50) : array() as $related) {
            if (!is_file(DIR_IMAGE . $related['photo'])) {
                continue;
            }
            $data['related_projects'][] = array(
                'name' => $related['name'],
                'thumb' => $this->model_tool_image->resize($related['photo'], 490, 490),
                'href' => html_entity_decode($this->url->link('product/project', 'project_id=' . (int)$related['id'], true), ENT_QUOTES, 'UTF-8')
            );
            if (count($data['related_projects']) >= 10) {
                break;
            }
        }

        $data['header'] = $this->load->controller('common/header');
        $data['footer'] = $this->load->controller('common/footer');

        $template = $this->config->get('config_template') . '/template/product/project.tpl';
        if (!file_exists(DIR_TEMPLATE . $template)) {
            $template = 'default/template/product/project.tpl';
        }
        $this->response->setOutput($this->load->view($template, $data));
    }
}
