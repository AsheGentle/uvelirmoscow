<?php
/**
 * Created by PhpStorm.
 * User: storm
 * Date: 16.08.16
 * Time: 17:05
 */

class ControllerModuleVideorewies extends Controller {
    public function index($setting) {

        $this->load->language('module/video_rewies');

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_tax'] = $this->language->get('text_tax');

        $this->load->model('catalog/video_review');

        $this->load->model('tool/image');

        $data['products'] = array();

        $results = $results = $this->model_catalog_video_review->getVideos($setting['limit']);
        
        if ($results) {
            foreach ($results as $result) {
                
                $data['videos'][] = array(
                    'video_id'    => $result['id'],
                    'name'        => $result['name'],
                    'url'         => $result['url'],
                    'text'        => $result['text'],
                    'photo'       => $this->model_tool_image->resize($result['photo'], 100, 100),
                );
            }

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/video_rewies.tpl')) {
                return $this->load->view($this->config->get('config_template') . '/template/module/video_rewies.tpl', $data);
            } else {
                return $this->load->view('default/template/module/video_rewies.tpl', $data);
            }
        }
    }
}
