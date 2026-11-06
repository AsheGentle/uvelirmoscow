<?php
class ControllerModuleHTML extends Controller {
	public function index($setting) {



        if($setting['name']=='Главная. Отзывы') {

            $this->load->language('module/video_rewies');

            $data['heading_title'] = $this->language->get('heading_title');

            $data['text_tax'] = $this->language->get('text_tax');

            $this->load->model('catalog/video_review');

            $this->load->model('tool/image');

            $data['products'] = array();

             $results = $this->model_catalog_video_review->getVideosMain();

            if ($results) {
                foreach ($results as $result) {

                    $data['videos'][] = array(
                        'video_id' => $result['id'],
                        'name' => $result['name'],
                        'url' => $result['url'],
                        'url_vk' => $result['url_vk'],
                        'text' => $result['text'],
                        'photo' => $this->model_tool_image->resize($result['photo'], 451, 342),
                    );
                }

            }


            $data['heading_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
            $data['html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/main_video_review.tpl')) {
                return $this->load->view($this->config->get('config_template') . '/template/module/main_video_review.tpl', $data);
            } else {
                return $this->load->view('default/template/module/main_video_review.tpl', $data);
            }

            } else {

		if (isset($setting['module_description'][$this->config->get('config_language_id')])) {
			$data['heading_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
			$data['html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/html.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/html.tpl', $data);
			} else {
				return $this->load->view('default/template/module/html.tpl', $data);
			}
		}
	}
    }

}