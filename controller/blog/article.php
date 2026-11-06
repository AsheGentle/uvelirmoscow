<?php
class ControllerBlogArticle extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('blog/article');
		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		$data['breadcrumbs'] = array_merge($data['breadcrumbs'], $this->model_catalog_information->getSeoBreadcrumbs('blog/blog'));

        $data['breadcrumbs'][] = array(
            'text' => $this->config->get('easy_blog_home_page_name'),
			'href' => $this->url->link('blog/blog')
        );


        // $this->document->addScript('catalog/view/javascript/slick/slick.min.js?v1');
        // $this->document->addStyle('catalog/view/javascript/slick/slick.css');
        // $this->document->addStyle('catalog/view/javascript/slick/slick-theme.css');


		if (isset($this->request->get['search'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('blog/search', $url)
			);
		}

		if (isset($this->request->get['article_id'])) {
			$article_id = (int)$this->request->get['article_id'];
		} else {
			$article_id = 0;
		}

		$this->load->model('blog/article');
		$this->load->model('tool/image');

		$article_info = $this->model_blog_article->getArticle($article_id);
		$links = $this->model_blog_article->getArticleLinks($article_id);

		if ($article_info) {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => html_entity_decode($article_info['name'], ENT_QUOTES, 'UTF-8'),
				'href' => $this->model_blog_article->getSeoUrl($this->request->get['article_id'])
			);

			$this->document->setTitle($article_info['meta_title']);
			$this->document->setDescription($article_info['meta_description']);
			$this->document->setKeywords($article_info['meta_keyword']);
			$this->document->addLink(html_entity_decode($this->url->link('blog/article', 'article_id=' . $this->request->get['article_id'], true), ENT_QUOTES, 'UTF-8'), 'canonical');

			$data['heading_title'] = html_entity_decode($article_info['name'], ENT_QUOTES, 'UTF-8');
            $data['date'] = date($this->language->get('date_format_short'), strtotime($article_info['date_added']));
			$data['article_id'] = (int)$this->request->get['article_id'];
            $data['thumb'] = $this->model_tool_image->resize(!empty($article_info['image']) ? $article_info['image'] : 'no_image.jpg', 560, 560);
			$data['articles_href'] = html_entity_decode($this->url->link('blog/blog', '', true), ENT_QUOTES, 'UTF-8');

			$data['description'] = html_entity_decode($article_info['description'], ENT_QUOTES, 'UTF-8');
			
			if($links){
				if(isset($links['prev'])){
					$data['article_links']['prev'] = array(
						'link' => $this->model_blog_article->getSeoUrl($links['prev']['article_id']),
						'name' => html_entity_decode($links['prev']['name'], ENT_QUOTES, 'UTF-8')
					);
				}
				if(isset($links['next'])){
					$data['article_links']['next'] = array(
						'link' => $this->model_blog_article->getSeoUrl($links['next']['article_id']),
						'name' => html_entity_decode($links['next']['name'], ENT_QUOTES, 'UTF-8')
					);
				}				
			}


			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/blog/article.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/blog/article.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/blog/article.tpl', $data));
			}
		} else {
			return $this->load->controller('error/not_found');
		}
	}

}
