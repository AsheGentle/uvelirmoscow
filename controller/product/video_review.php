<?php

class ControllerProductVideoReview extends Controller
{
    public function index()
    {
        $this->load->language('product/video_review');

        $this->load->model('catalog/video_review');
        $this->load->model('tool/image');


        // text
        $this->document->setTitle($this->language->get('page_title'));
        $this->document->setDescription($this->language->get('page_description'));
        $data['heading_title'] = $this->language->get('heading_title');



        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        if (isset($this->request->get['limit'])) {
            $limit = (int)$this->request->get['limit'];
        } else {
            $limit = $this->config->get('config_product_limit');
        }

        $url = '';

        if (isset($this->request->get['limit'])) {
            $url .= '&limit=' . $this->request->get['limit'];
        }

        $data['products'] = array();

        // breadcrumbs
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('product/video_review')
        );

        $filter_data = array(
            'start'              => ($page - 1) * $limit,
            'limit'              => $limit
        );

        $results = $this->model_catalog_video_review->getVideos($filter_data);


        foreach ($results as $result) {

            $iframe = '';

            // ✅ 1. VK (приоритет)
            if (!empty($result['url_vk']) && preg_match('/video(-?\d+)_(\d+)/', $result['url_vk'], $m)) {
                $oid = $m[1];
                $id  = $m[2];

                $iframe = '<iframe 
            src="https://vk.com/video_ext.php?oid=' . $oid . '&id=' . $id . '&hd=4&autoplay=1"
            width="100%" height="500"
            frameborder="0"
            allow="autoplay; encrypted-media; fullscreen"
            allowfullscreen>
        </iframe>';
            }

            // ✅ 2. YouTube (тут уже просто ID)
            elseif (!empty($result['url'])) {

                $video_id = trim($result['url']);

                $iframe = '<iframe 
            src="https://www.youtube.com/embed/' . $video_id . '?autoplay=1"
            width="100%" height="500"
            frameborder="0"
            allow="autoplay; encrypted-media; fullscreen"
            allowfullscreen>
        </iframe>';
            }

            $data['videos'][] = array(
                'video_id' => $result['id'],
                'name'     => $result['name'],
                'url'     => $result['url'],
                'url_vk'     => $result['url_vk'],
                'text'     => $result['text'],
                'iframe'   => $iframe,
                'photo'    => $this->model_tool_image->resize($result['photo'], 451, 342),
            );
        }


       /* $videos_total = count($result);
        $pagination = new Pagination();
        $pagination->total = $videos_total;
        $pagination->page = $page;
        $pagination->limit = $limit;
        $pagination->url = $this->url->link('product/video_review'. $url . '&page={page}');

        $data['pagination'] = $pagination->render();
        $data['results'] = sprintf($this->language->get('text_pagination'), ($videos_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($videos_total - $limit)) ? $videos_total : ((($page - 1) * $limit) + $limit), $videos_total, ceil($videos_total / $limit));

        */
        $data['continue'] = $this->url->link('common/home');

//        $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');
        $data['header'] = $this->load->controller('common/header');
        $data['footer'] = $this->load->controller('common/footer');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/video_review.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/video_review.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/product/video_review.tpl', $data));
        }
    }
}
