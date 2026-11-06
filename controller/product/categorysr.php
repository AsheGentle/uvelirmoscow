<?php
class ControllerProductCategorysr extends Controller {
    public function index() {
        $this->load->language('product/category');

        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $this->load->model('tool/image');

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

        if (isset($this->request->get['limit'])) {
            $limit = (int)$this->request->get['limit'];
        } else {
            $limit = $this->config->get('config_product_limit');
        }

        if (isset($this->request->get['price'])) {
            $price_current_type = $this->request->get['price'];
        } else {
            $price_current_type = 'price0';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        if (isset($this->request->get['path'])) {
            $url = '';

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $parts = explode('_', (string)$this->request->get['path']);
            $category_id = (int)array_pop($parts);
            $path = '';

            foreach ($this->model_catalog_category->getBreadCrumbs($category_id) as $breadcrumb) {
                $path = $path === '' ? $breadcrumb['category_id'] : $path . '_' . $breadcrumb['category_id'];
                $data['breadcrumbs'][] = array(
                    'text' => $breadcrumb['name'],
                    'href' => $this->url->link('product/category', 'path=' . $path)
                );
            }
        } else {
            $category_id = 0;
        }

        $category_info = $this->model_catalog_category->getCategory($category_id);

        if ($category_info) {

            if ($category_info['meta_title']) {
                $this->document->setTitle($category_info['meta_title']);
            } else {
                $this->document->setTitle($category_info['name']);
            }

            $this->document->setDescription($category_info['meta_description']);
            $this->document->setKeywords($category_info['meta_keyword']);

            if ($category_info['meta_h1']) {
                $data['heading_title'] = $category_info['meta_h1'];
            } else {
                $data['heading_title'] = $category_info['name'];
            }


            $data['tab_alternative'] = $this->language->get('tab_alternative');
            $data['text_refine'] = $this->language->get('text_refine');
            $data['text_material'] = $this->language->get('text_material');
            $data['text_empty'] = $this->language->get('text_empty');
            $data['text_quantity'] = $this->language->get('text_quantity');
            $data['text_manufacturer'] = $this->language->get('text_manufacturer');
            $data['text_model'] = $this->language->get('text_model');
            $data['text_price'] = $this->language->get('text_price');
            $data['text_tax'] = $this->language->get('text_tax');
            $data['text_points'] = $this->language->get('text_points');
            $data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
            $data['text_sort'] = $this->language->get('text_sort');
            $data['text_price_type'] = $this->language->get('text_price_type');
            $data['text_limit'] = $this->language->get('text_limit');
            $data['text_more_info'] = $this->language->get('text_more_info');

            $data['button_cart'] = $this->language->get('button_cart');
            $data['button_wishlist'] = $this->language->get('button_wishlist');
            $data['button_compare'] = $this->language->get('button_compare');
            $data['button_continue'] = $this->language->get('button_continue');
            $data['button_list'] = $this->language->get('button_list');
            $data['button_grid'] = $this->language->get('button_grid');

            $data['alternatives'] = array();




            if ($category_info['image']) {
                $data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
                $this->document->setOgImage($data['thumb']);
            } else {
                $data['thumb'] = '';
            }

            $data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
            $data['compare'] = $this->url->link('product/compare');

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

            $data['catalog_categories'] = array();

            foreach ($this->model_catalog_category->getCategories(59) as $result) {
                $children = array();

                foreach ($this->model_catalog_category->getCategories($result['category_id']) as $child) {
                    $children[] = array(
                        'name' => $child['name'],
                        'href' => $this->url->link('product/category', 'path=59_' . $result['category_id'] . '_' . $child['category_id'])
                    );
                }

                $image = !empty($result['catalog_image']) && is_file(DIR_IMAGE . $result['catalog_image'])
                    ? $result['catalog_image']
                    : 'no_image.png';

                $data['catalog_categories'][] = array(
                    'name' => $result['name'],
                    'href' => $this->url->link('product/category', 'path=59_' . $result['category_id']),
                    'image' => $this->model_tool_image->resize($image, 327, 327),
                    'children' => $children
                );
            }

            $data['products'] = array();

            $filter_data = array(
                'filter_category_id' => $category_id,
                'filter_filter'      => $filter,
                'sort'               => $sort,
                'order'              => $order,
                'start'              => ($page - 1) * $limit,
                'limit'              => $limit
            );

            $product_total = $this->model_catalog_product->getTotalProducts($filter_data);

            $results = $this->model_catalog_product->getProducts($filter_data);

            foreach ($results as $result) {
                if ($result['image']) {
                    $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                } else {
                    $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                }

                if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price = false;
                }

                if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                    $price1 = $this->currency->format($this->tax->calculate($result['price1'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price1 = false;
                }
                if ($price_current_type == "price1"){
                    $price = $price1;
                }
                if ((float)$result['special']) {
                    $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $special = false;
                }

                if ($this->config->get('config_tax')) {
                    $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
                } else {
                    $tax = false;
                }

                if ($this->config->get('config_review_status')) {
                    $rating = (int)$result['rating'];
                } else {
                    $rating = false;
                }
                $resultsAlternative = $this->model_catalog_product->getProductAlternative($result['product_id']);

                foreach ($resultsAlternative as $resultAlter) {
                    if ($resultAlter['image']) {
                        $imageAlter = $this->model_tool_image->resize($resultAlter['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    } else {
                        $imageAlter = false;
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $priceAlter = $this->currency->format($this->tax->calculate($resultAlter['price'], $resultAlter['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $priceAlter = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $taxAlter = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
                    } else {
                        $taxAlter = false;
                    }

                    if ((float)$resultAlter['special']) {
                        $specialAlter = $this->currency->format($this->tax->calculate($resultAlter['special'], $result['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $specialAlter = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $ratingAlter = (int)$resultAlter['rating'];
                    } else {
                        $ratingAlter = false;
                    }

                    $alternatives[$result['product_id']][] = array(
                        'product_id' => $resultAlter['product_id'],
                        'thumb'   	 => $imageAlter,
                        'name'    	 => $resultAlter['name'],
                        'price'   	 => $priceAlter,
                        'special' 	 => $specialAlter,
                        'rating'     => $ratingAlter,
                        'tax'         => $taxAlter,
                        'reviews'    => sprintf($this->language->get('text_reviews'), (int)$resultAlter['reviews']),
                        'href'    	 => $this->url->link('product/product', 'product_id=' . $resultAlter['product_id']),
                    );
                }
                $data['products'][$result['product_id']] = array(
                    'product_id'  => $result['product_id'],
                    'thumb'       => $image,
                    'name'        => $result['name'],
                    'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                    'price'       => $price,
                    'special'     => $special,
                    'tax'         => $tax,
                    'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
                    'rating'      => $result['rating'],
                    'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url),
                );

                if(!empty($alternatives[$result['product_id']])) {
                    $data['products_all'][$result['product_id']] = array($data['products'][$result['product_id']], $alternatives[$result['product_id']]);
                }
                else {
                    $data['products_all'][$result['product_id']] = array($data['products'][$result['product_id']]);
                }

            }

            //p($data['products_all']);
            /*foreach($data['products_all'] as $key => $products) {
                //p(prev($data['products_all'])[1][0]['product_id']);
                //p(array_search(current($data['products_all']), $data['products_all']));
                if(prev($data['products_all'])[1][0]['product_id'] == array_search(current($data['products_all']), $data['products_all']) ) {
                    p(array_search(next($data['products_all']), $data['products_all']));
                }
            }*/

            $url = '';

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }
            /*
			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);
            */
            /**
             * product price change
             */



            $data['price_types'] = array();
            $data['price_types'][] = array(
                'text'  => $this->language->get('text_price'),
                'value' => 'price0',
                'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&price=price0' . $url)
            );
            $data['price_types'][] = array(
                'text'  => $this->language->get('text_price1'),
                'value' => 'price1',
                'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&price=price1' . $url)
            );

            if (isset($this->request->get['price'])) {
                $data['price_current_type'] = $price_current_type;
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

            $data['limits'] = array();

            $limits = array_unique(array($this->config->get('config_product_limit'), 25, 50, 75, 100));

            sort($limits);

            foreach($limits as $value) {
                $data['limits'][] = array(
                    'text'  => $value,
                    'value' => $value,
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
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
            $pagination->total = $product_total;
            $pagination->page = $page;
            $pagination->limit = $limit;
            $pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');

            $data['pagination'] = $pagination->render();

            $data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

            // http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
            if ($page == 1) {
                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'canonical');
            } elseif ($page == 2) {
                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'prev');
            } else {
                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), 'SSL'), 'prev');
            }

            if ($limit && ceil($product_total / $limit) > $page) {
                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), 'SSL'), 'next');
            }

            $data['sort'] = $sort;
            $data['order'] = $order;
            $data['limit'] = $limit;

            $data['continue'] = $this->url->link('common/home');

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');


            if($page>1) {

                header("Location:/katalog", true, 301);
            } else {

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/categorysr.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/categorysr.tpl', $data));
            } else {
                $this->response->setOutput($this->load->view('default/template/product/categorysr.tpl', $data));
            }
            }
        } else {
            return $this->load->controller('error/not_found');
        }
    }
}
