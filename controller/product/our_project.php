<?php

class ControllerProductOurProject extends Controller
{
    public function index()
    {

        $this->load->language('product/our_project');

        $this->load->model('catalog/our_project');
		$this->load->model('catalog/information');

        $this->load->model('tool/image');

        $main_h1 = trim((string)$this->config->get('our_project_page_h1')) ?: 'Наши работы';
        $main_title = trim((string)$this->config->get('our_project_page_title')) ?: 'Портфолио ювелирных работ студии UvelirMoscow | Фото и описание';
        $main_description = trim((string)$this->config->get('our_project_page_description')) ?: 'Портфолио ювелирной студии UvelirMoscow. Примеры наших работ: кольца, серьги, подвески и гарнитуры ручной работы. Высокое качество исполнения. Фотографии и описание готовых изделий.';
        $main_breadcrumb = trim((string)$this->config->get('our_project_page_breadcrumb')) ?: 'Наши работы';

        $this->document->setTitle($main_title);
        $this->document->setDescription($main_description);
        $data['heading_title'] = $main_h1;
        $data['button_continue'] = $this->language->get('button_continue');
        $data['text_more_info'] = $this->language->get('text_more_info');

        $data['text_callback'] = $this->language->get('text_callback');
        $data['text_description'] = $this->language->get('text_description');
        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_phone'] = $this->language->get('entry_phone');
        $data['entry_photo'] = $this->language->get('entry_photo');
        $data['entry_comments'] = $this->language->get('entry_comments');
        $data['button_send'] = $this->language->get('button_send');
		$data['text_categories'] = $this->language->get('text_categories');

		if(!empty($this->request->get['category_project_id'])){
	$project_info = $this->model_catalog_our_project->getProjectCategory($this->request->get['category_project_id']);
	if (!$project_info) {
		return $this->load->controller('error/not_found');
	}
	$data['category_project_id']=$project_info['id'];
	$data['heading_title'] = !empty($project_info['h1']) ? $project_info['h1'] : $project_info['name'];
}

        if (isset($this->request->get['page'])) {
            if (!ctype_digit((string)$this->request->get['page']) || (int)$this->request->get['page'] < 1) {
                return $this->load->controller('error/not_found');
            }
            $page = (int)$this->request->get['page'];
        } else {
            $page = 1;
        }


        $limit = 12;

        $data['products'] = array();

        // breadcrumbs
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('product/our_project'));
        $data['breadcrumbs'][] = array(
            'text' => $main_breadcrumb,
			'href' => $this->url->link('product/our_project')
        );
		if(!empty($this->request->get['category_project_id'])){
			$data['breadcrumbs'][] = array(
			'text' => !empty($project_info['breadcrumb']) ? $project_info['breadcrumb'] : (!empty($project_info['h1']) ? $project_info['h1'] : $project_info['name']),
            'href' => $this->url->link('product/our_project', 'category_project_id=' . (int)$this->request->get['category_project_id'], true)
        );
		}

        $filter_data = array(
            'start'              => ($page - 1) * $limit,
            'limit'              => $limit
        );

		if(!empty($this->request->get['category_project_id'])){
		$filter_data['category_project_id']=$this->request->get['category_project_id'];
		}


        $product_total = $this->model_catalog_our_project->getOurProjectTotal($filter_data);
        $results = $this->model_catalog_our_project->getAllProjects($filter_data);

        /*
        $filter_data['limit'] = 1000000;
        $results_p = $this->model_catalog_our_project->getAllProjects($filter_data);
        foreach ($results_p as $result) {

            if(isset($result['url']) && $result['url'] !=''){
                $href = $result['url'];
            }else{
                $href = $this->url->link('product/project', 'project_id=' . $result['id']);
            }



        }
*/



        foreach ($results as $result) {
            if ($result['photo']) {
                $image = $this->model_tool_image->resize($result['photo'], 490, 490);
            } else {
                $image = $this->model_tool_image->resize('placeholder.png', 490, 490);
            }
            $href = html_entity_decode($this->url->link('product/project', 'project_id=' . (int)$result['id'], true), ENT_QUOTES, 'UTF-8');

            $data['products'][] = array(
                'project_id'  => $result['id'],
                'thumb'       => $image,
                'name'        => html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'),
                'description' => $result['description'],
                'href'        => $href,
                'date_added'  => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                'small_description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..'
            );

        }
		 $this->load->model('catalog/our_project');
		$cats = $this->model_catalog_our_project->getAllProjectsCategories(array('sort' => 'sort_order', 'order' => 'ASC'));
		$data['categories']=array();
		foreach($cats as $k=>$c){

			 if ($c['photo']) {
                    $image = $this->model_tool_image->resize($c['photo'], 60, 60);
                } else {
                    $image = $this->model_tool_image->resize('placeholder.png', 60, 60);
                }
				$data['categories'][]=array(
				'thumb'=>$image,
				'name'=>$c['name'],
				'alias'=>$c['alias'],
				'href'=>html_entity_decode($this->url->link('product/our_project', 'category_project_id=' . (int)$c['id'], true), ENT_QUOTES, 'UTF-8')
				);

		}




        $pagination = new Pagination();
        $pagination->total = $product_total;
        $pagination->page = $page;
        $pagination->limit = $limit;

			if ($product_total && $page > ceil($product_total / $limit))
			{

			return $this->load->controller('error/not_found');
			}


		if(empty($this->request->get['category_project_id'])) {
            $pagination->url = html_entity_decode($this->url->link('product/our_project', 'page={page}', true), ENT_QUOTES, 'UTF-8');
		} else {
		$pagination->url = html_entity_decode($this->url->link('product/our_project', 'category_project_id=' . (int)$project_info['id'] . '&page={page}', true), ENT_QUOTES, 'UTF-8');
					$this->document->setTitle(!empty($project_info['title']) ? $project_info['title'] : $project_info['name']);
			if (!empty($project_info['description'])) {
				$this->document->setDescription($project_info['description']);
			}

	}

        $data['page'] = (int)$page;
        $data['page_count'] = max(1, (int)ceil($product_total / $limit));
        $data['pagination_url'] = $pagination->url;

        $data['manufacturing_href'] = html_entity_decode($this->url->link('information/manufacturing', '', true), ENT_QUOTES, 'UTF-8');
        $data['catalog_href'] = '/katalog';
        if (!empty($project_info['manufacturing_category_id'])) {
            $data['manufacturing_href'] = html_entity_decode($this->url->link('product/manufacturing_category', 'category_id=' . (int)$project_info['manufacturing_category_id'], true), ENT_QUOTES, 'UTF-8');
        }
        if (!empty($project_info['catalog_category_id'])) {
            $data['catalog_href'] = html_entity_decode($this->url->link('product/category', 'path=' . (int)$project_info['catalog_category_id'], true), ENT_QUOTES, 'UTF-8');
        }

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));


		$canonical_params = empty($this->request->get['category_project_id']) ? '' : 'category_project_id=' . (int)$project_info['id'];
		if ($page > 1) {
			$canonical_params .= ($canonical_params ? '&' : '') . 'page=' . $page;
		}
		$this->document->addLink(html_entity_decode($this->url->link('product/our_project', $canonical_params, true), ENT_QUOTES, 'UTF-8'), 'canonical');

        $data['continue'] = $this->url->link('common/home');

//        $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');
        $data['header'] = $this->load->controller('common/header');
        $data['footer'] = $this->load->controller('common/footer');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/our_project.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/our_project.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/product/our_project.tpl', $data));
        }
    }
}
