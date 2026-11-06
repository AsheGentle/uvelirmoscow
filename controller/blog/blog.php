<?php
class ControllerBlogBlog extends Controller {
	public function index($setting) {

		$this->load->model('blog/article');
		$this->load->model('catalog/information');
        $this->load->language('blog/blog');

        $this->load->model('tool/image');
        

        if(!empty($this->request->get['category_article_id'])){
    $article_info = $this->model_blog_article->getArticleCategory($this->request->get['category_article_id']);
	if (!$article_info) {
		return $this->load->controller('error/not_found');
	}
    $data['category_article_id']=$article_info['category_article_id'];
    $data['add_title']=html_entity_decode($article_info['name'], ENT_QUOTES, 'UTF-8');
}

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = ''; 
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$limit = 8;
		
		$status = $this->config->get('easy_blog_global_status');
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('blog/blog'));



        if(isset($this->request->get['page']) and $this->request->get['page']=='') {

       return $this->load->controller('error/not_found');
        }
		
		
		if ($status) {
			$this->document->setTitle($this->config->get('easy_blog_home_page_meta_title'));
			$this->document->setDescription($this->config->get('easy_blog_home_page_meta_description'));
			$this->document->setKeywords($this->config->get('easy_blog_home_page_meta_keyword'));
			//$this->document->addLink($this->url->link('blog/blog'),'');

			$data['heading_title'] = $this->config->get('easy_blog_home_page_meta_title');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $this->config->get('easy_blog_home_page_name'),
				'href' => $this->model_blog_article->getUrl()
			);
			
			   if(!empty($this->request->get['category_article_id'])){
            $data['breadcrumbs'][] = array(
            'text' => html_entity_decode($article_info['name'], ENT_QUOTES, 'UTF-8'),
            'href' => $this->url->link('blog/blog', 'category_article_id=' . (int)$article_info['category_article_id'])
        );
        }
			
			$data['name'] = $this->config->get('easy_blog_home_page_name');
			
			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['articles'] = array();

			$filter_data = array(
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			        if(!empty($this->request->get['category_article_id'])){
		$filter_data['category_article_id']=$this->request->get['category_article_id'];
		$data['current_category_id'] = $filter_data['category_article_id'];
        }

			
			$article_total = $this->model_blog_article->getTotalArticles($filter_data);

			$results = $this->model_blog_article->getArticles($filter_data);
			foreach ($results as $result) {

                             if (isset($result['image'])) {
                                    $image = $this->model_tool_image->resize($result['image'], 360, 360);
                } else {
                                     $image = $this->model_tool_image->resize('no_image.jpg', 360, 360);

                }


				$data['articles'][] = array(
					'article_id'  => $result['article_id'],
                    'img'      	  => $result['image'],
                    'thumb'       => $image,
                    'name'        => html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'),
                    'date_added'  => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                    'intro_text' => trim(strip_tags(html_entity_decode($result['intro_text'], ENT_QUOTES, 'UTF-8'))),
					'href'        => $this->model_blog_article->getSeoUrl($result['article_id'])
				);

			}

			$url = '';

			
		 

        $cats = $this->model_blog_article->getAllArticlesCategories();
        $data['categories']=array();
		$data['current_category_id'] = !empty($data['current_category_id']) ? (int)$data['current_category_id'] : 0;
		$data['blog_href'] = html_entity_decode($this->url->link('blog/blog', '', true), ENT_QUOTES, 'UTF-8');
        foreach($cats as $k=>$c){
            
             if ($c['photo']) {
                    $image = $this->model_tool_image->resize($c['photo'], 141, 141);
                } else {
                    $image = '';
                }
                $data['categories'][]=array(
                'id'=>$c['id'],
                'thumb'=>$image,
                'name'=>html_entity_decode($c['name'], ENT_QUOTES, 'UTF-8'),
                'alias'=>$c['alias'],
				'href'=>html_entity_decode($this->url->link('blog/blog', 'category_article_id=' . (int)$c['id'], true), ENT_QUOTES, 'UTF-8')
                );
                
        }

			
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('blog/blog', '&sort=p.sort_order&order=ASC' . $url)
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get('easy_blog_global_article_limit'), 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('blog/blog', $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $article_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			
			            if            ( $article_total && ($page > ceil($article_total / $limit)))
            {
        
                return $this->load->controller('error/not_found');
            }
			
        if(empty($this->request->get['category_article_id']))
        $pagination->url = $this->url->link('blog/blog', $url . '&page={page}');
    else{
         $pagination->url = $this->url->link('blog/blog', 'category_article_id=' . (int)$article_info['category_article_id'] . '&page={page}');
					$this->document->setTitle($article_info['title']);
			$this->document->setDescription($article_info['description']);
        
		
    }

			$canonical_params = empty($this->request->get['category_article_id']) ? '' : 'category_article_id=' . (int)$article_info['category_article_id'];
			if ((int)$page > 1) {
				$canonical_params .= ($canonical_params ? '&' : '') . 'page=' . (int)$page;
			}
			$this->document->addLink(html_entity_decode($this->url->link('blog/blog', $canonical_params, true), ENT_QUOTES, 'UTF-8'), 'canonical');
			

			$data['pagination'] = $pagination->render();
			$data['page'] = (int)$page;
			$data['page_count'] = max(1, (int)ceil($article_total / $limit));
			$data['pagination_url'] = html_entity_decode($pagination->url, ENT_QUOTES, 'UTF-8');
            $data['button_read_more'] = $this->language->get('button_read_more');
			$data['text_categories'] = $this->language->get('text_categories');
            $data['text_empty'] = $this->language->get('text_empty');
			$data['results'] = sprintf($this->language->get('text_pagination'), ($article_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($article_total - $limit)) ? $article_total : ((($page - 1) * $limit) + $limit), $article_total, ceil($article_total / $limit));

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;




			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/blog/blog.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/blog/blog.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/blog/blog.tpl', $data));
			}
		} else {
			return $this->load->controller('error/not_found');
		}
	}

}
