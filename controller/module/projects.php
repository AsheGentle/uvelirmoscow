<?php
/**
 * Created by PhpStorm.
 * User: storm
 * Date: 16.08.16
 * Time: 16:37
 */

class ControllerModuleProjects extends Controller {
    public function index($setting) {
        
        $this->load->language('module/projects');

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_tax'] = $this->language->get('text_tax');

        $this->load->model('catalog/our_project');

        $this->load->model('tool/image');

        $data['products'] = array();

        $filter_data = array(
            'sort'  => 'p.date_added',
            'order' => 'DESC',
            'start' => 0,
            'limit' => $setting['limit']
        );

        $results = $this->model_catalog_our_project->getAllProjects($filter_data);
        if ($results) {
            foreach ($results as $result) {
				if(isset($result['url']) && $result['url'] !=''){
					$href = $result['url'];
				} else {
					$href = $this->url->link('product/project', 'project_id=' . $result['id']);
				}
                if ($result['photo']) {
                    $image = $this->model_tool_image->resize($result['photo'], $setting['width'], $setting['height']);
                } else {
                    $image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
                }
                $data['projects'][] = array(
                    'project_id'  => $result['id'],
                    'thumb'       => $image,
                    'name'        => $result['name'],
                    'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                    'href'        =>  '/nasha-rabota/'. $href
                );
            }

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/projects.tpl')) {
                return $this->load->view($this->config->get('config_template') . '/template/module/projects.tpl', $data);
            } else {
                return $this->load->view('default/template/module/projects.tpl', $data);
            }
        }
    }
}
