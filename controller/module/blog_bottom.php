<?php
/**
 * Created by PhpStorm.
 * User: storm
 * Date: 06.09.16
 * Time: 12:30
 */


class ControllerModuleBlogBottom extends Controller {
    public function index($setting) {
        $this->load->language('module/blog_bottom');

        $data['heading_title'] = $this->language->get('heading_title');

        $this->load->model('blog/article');

        $this->load->model('tool/image');

        $data['blogs'] = array();

        $filter_data = array(
            'sort'  => 'a.date_added',
            'order' => 'DESC',
            'start' => 0,
            'limit' => $setting['limit']
        );

        $results = $this->model_blog_article->getArticles($filter_data);

        if ($results) {
            $data['all_article'] = $this->model_blog_article->getUrl();
            foreach ($results as $result) {

                if (isset($result['image'])) {
                    $image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
                } else {
                    $image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
                }

                $data['blogs'][] = array(
                    'article_id'  => $result['article_id'],
                    'thumb'       => $image,
                    'name'        => $result['name'],
                    'description' => utf8_substr(strip_tags(html_entity_decode($result['intro_text'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                    'href'        => $this->model_blog_article->getSeoUrl($result['article_id'])
                );
            }

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/blog_bottom.tpl')) {
                return $this->load->view($this->config->get('config_template') . '/template/module/blog_bottom.tpl', $data);
            } else {
                return $this->load->view('default/template/module/blog_bottom.tpl', $data);
            }
        }
    }
}
