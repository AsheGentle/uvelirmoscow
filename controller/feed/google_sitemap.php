<?php
class ControllerFeedGoogleSitemap extends Controller {
	public function index() {
		if ($this->config->get('google_sitemap_status')) {
			$output  = '<?xml version="1.0" encoding="UTF-8"?>';
			$output .= '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">';

            $output .= '<url>';
            $output .= '<loc>' . $this->url->link('common/home') . '</loc>';
            $output .= '<changefreq>weekly</changefreq>';
            $output .= '<priority>1.0</priority>';
            $output .= '</url>';

            //Товары
			$this->load->model('catalog/product');

			$products = $this->model_catalog_product->getProducts();

			foreach ($products as $product) {
				if ($product) {
					$output .= '<url>';
					$output .= '<loc>' . $this->url->link('product/product', 'product_id=' . $product['product_id']) . '</loc>';
					$output .= '<changefreq>weekly</changefreq>';
					$output .= '<priority>1.0</priority>';
					$output .= '</url>';
				}
			}

			$this->load->model('catalog/category');

			$output .= $this->getCategories(0);

//			$this->load->model('catalog/manufacturer');
//
//			$manufacturers = $this->model_catalog_manufacturer->getManufacturers();
//
//			foreach ($manufacturers as $manufacturer) {
//				$output .= '<url>';
//				$output .= '<loc>' . $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $manufacturer['manufacturer_id']) . '</loc>';
//				$output .= '<changefreq>weekly</changefreq>';
//				$output .= '<priority>0.7</priority>';
//				$output .= '</url>';
//
//				$products = $this->model_catalog_product->getProducts(array('filter_manufacturer_id' => $manufacturer['manufacturer_id']));
//
//				foreach ($products as $product) {
//					$output .= '<url>';
//					$output .= '<loc>' . $this->url->link('product/product', 'manufacturer_id=' . $manufacturer['manufacturer_id'] . '&product_id=' . $product['product_id']) . '</loc>';
//					$output .= '<changefreq>weekly</changefreq>';
//					$output .= '<priority>1.0</priority>';
//					$output .= '</url>';
//				}
//			}

            //Страницы
			$this->load->model('catalog/information');

			$informations = $this->model_catalog_information->getInformations();

			foreach ($informations as $information) {
				$output .= '<url>';
				$output .= '<loc>' . $this->url->link('information/information', 'information_id=' . $information['information_id']) . '</loc>';
				$output .= '<changefreq>weekly</changefreq>';
				$output .= '<priority>0.5</priority>';
				$output .= '</url>';
			}

            $output .= '<url>';
            $output .= '<loc>' . $this->url->link('common/home') . 'statya</loc>';
            $output .= '<changefreq>weekly</changefreq>';
            $output .= '<priority>0.5</priority>';
            $output .= '</url>';

					$output .= '<url>';
            $output .= '<loc>' . $this->url->link('common/home') . 'otzivi-video</loc>';
					$output .= '<changefreq>weekly</changefreq>';
            $output .= '<priority>0.5</priority>';
					$output .= '</url>';

            $output .= '<url>';
            $output .= '<loc>' . $this->url->link('common/home') . 'nasha-rabota</loc>';
            $output .= '<changefreq>weekly</changefreq>';
            $output .= '<priority>0.5</priority>';
            $output .= '</url>';

            /*
            //Наши работы
            $this->load->model('catalog/our_project');

            $projects = $this->model_catalog_our_project->getAllProjects();

            foreach ($projects as $project) {
                $output .= '<url>';
                $output .= '<loc>' . $this->url->link('product/project', 'project_id=' . $project['id']) . '</loc>';
                $output .= '<changefreq>weekly</changefreq>';
                $output .= '<priority>0.5</priority>';
                $output .= '</url>';
				}
*/
            //Блог
            $this->load->model('blog/article');

            $articles = $this->model_blog_article->getArticles();
//            print_r($articles);

            foreach ($articles as $article) {
				$output .= '<url>';
                $output .= '<loc>' . $this->url->link('blog/article', 'article_id=' . $article['article_id']) . '</loc>';
				$output .= '<changefreq>weekly</changefreq>';
				$output .= '<priority>0.5</priority>';
				$output .= '</url>';
			}

            //Акции
            $this->load->model('promo/promo_single');

            $promo_singles = $this->model_promo_promo_single->getPromoSingles();
//            print_r($articles);

            foreach ($promo_singles as $promo_single) {
                $output .= '<url>';
                $output .= '<loc>' . $this->url->link('promo/promo_single', 'promo_single_id=' . $promo_single['promo_single_id']) . '</loc>';
                $output .= '<changefreq>weekly</changefreq>';
                $output .= '<priority>0.5</priority>';
                $output .= '</url>';
            }

            $output .= '</urlset>';

            $this->response->addHeader('Content-Type: application/xml');
            $this->response->setOutput($output);
		}
	}

	protected function getCategories($parent_id, $current_path = '') {
		$output = '';

		$results = $this->model_catalog_category->getCategories($parent_id);

		foreach ($results as $result) {
			if (!$current_path) {
				$new_path = $result['category_id'];
			} else {
				$new_path = $current_path . '_' . $result['category_id'];
			}

			$output .= '<url>';
			$output .= '<loc>' . $this->url->link('product/category', 'path=' . $new_path) . '</loc>';
			$output .= '<changefreq>weekly</changefreq>';
			$output .= '<priority>0.7</priority>';
			$output .= '</url>';

//			$products = $this->model_catalog_product->getProducts(array('filter_category_id' => $result['category_id']));
//
//			foreach ($products as $product) {
//				$output .= '<url>';
//				$output .= '<loc>' . $this->url->link('product/product', 'path=' . $new_path . '&product_id=' . $product['product_id']) . '</loc>';
//				$output .= '<changefreq>weekly</changefreq>';
//				$output .= '<priority>1.0</priority>';
//				$output .= '</url>';
//			}

			$output .= $this->getCategories($result['category_id'], $new_path);
		}

		return $output;
	}
}
