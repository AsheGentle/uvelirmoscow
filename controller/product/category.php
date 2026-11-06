<?php
class ControllerProductCategory extends Controller {

    public function kjsdf() {
        $sql = 'select * from oc_srm_redirect';
        $query = $this->db->query($sql);


        echo '<table>';
        foreach ($query->rows as $row) {
            echo '<tr><td>'.$row['from'].'</td><td>'.$row['to'].'</td></tr>';
        }
        echo '</table>';
    }

    public function index() {


        $this->load->language('product/category');

        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $this->load->model('catalog/option');

        $this->load->model('catalog/attribute');

        $this->load->model('tool/image');

        $option_filter = array();

        if (isset($this->request->get['filter'])) {
            $filter = $this->request->get['filter'];
        } else {
            $filter = '';
        }

        if (isset($this->request->get['min_price'])) {
            $min_price = $this->request->get['min_price'];
        } else {
            $min_price = '';
        }

        if (isset($this->request->get['max_price'])) {
            $max_price = $this->request->get['max_price'];
        } else {
            $max_price = '';
        }

        if (isset($this->request->get['metal_ov'])) {
            $option_filter['metal']['option_value_id'] = $this->request->get['metal_ov'];
        } else {
            $option_filter['metal']['option_value_id'] = '';
        }

        if (isset($this->request->get['insertion_ov'])) {
            $option_filter['insertion']['option_value_id'] = $this->request->get['insertion_ov'];
        } else {
            $option_filter['insertion']['option_value_id'] = '';
        }
		if (isset($this->request->get['stone_color_ov'])) {
            $option_filter['stone_color']['option_value_id'] = $this->request->get['stone_color_ov'];
        } else {
            $option_filter['stone_color']['option_value_id'] = '';
        }
		if (isset($this->request->get['stone_type_ov'])) {
            $option_filter['stone_type']['option_value_id'] = $this->request->get['stone_type_ov'];
        } else {
            $option_filter['stone_type']['option_value_id'] = '';
        }
		if (isset($this->request->get['stone_form_ov'])) {
            $option_filter['stone_form']['option_value_id'] = $this->request->get['stone_form_ov'];
        } else {
            $option_filter['stone_form']['option_value_id'] = '';
        }
		if (isset($this->request->get['stone_sert_ov'])) {
            $option_filter['stone_sert']['option_value_id'] = $this->request->get['stone_sert_ov'];
        } else {
            $option_filter['stone_sert']['option_value_id'] = '';
        }
		if (isset($this->request->get['stone_from_ov'])) {
            $option_filter['stone_from']['option_value_id'] = $this->request->get['stone_from_ov'];
        } else {
            $option_filter['stone_from']['option_value_id'] = '';
        }
		if (isset($this->request->get['stone_weight_ov'])) {
            $option_filter['stone_weight']['option_value_id'] = $this->request->get['stone_weight_ov'];
        } else {
            $option_filter['stone_weight']['option_value_id'] = '';
        }


        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'rating';
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'DESC';
        }

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        if (isset($this->request->get['limit'])) {
            $limit = (int)$this->request->get['limit'];
        } else {
            $limit = 12;
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

            if (isset($this->request->get['min_price'])) {
                $url .= '&min_price=' . $this->request->get['min_price'];
            }

            if (isset($this->request->get['max_price'])) {
                $url .= '&max_price=' . $this->request->get['max_price'];
            }

            if (isset($this->request->get['metal_ov'])) {
                $url .= '&metal_ov=' . $this->request->get['metal_ov'];
            }

            if (isset($this->request->get['insertion_ov'])) {
                $url .= '&insertion_ov=' . $this->request->get['insertion_ov'];
            }

			if (isset($this->request->get['stone_color_ov'])) {
                $url .= '&stone_color_ov=' . $this->request->get['stone_color_ov'];
            }

			if (isset($this->request->get['stone_type_ov'])) {
                $url .= '&stone_type_ov=' . $this->request->get['stone_type_ov'];
            }

			if (isset($this->request->get['stone_form_ov'])) {
                $url .= '&stone_form_ov=' . $this->request->get['stone_form_ov'];
            }

			if (isset($this->request->get['stone_sert_ov'])) {
                $url .= '&stone_sert_ov=' . $this->request->get['stone_sert_ov'];
            }

			if (isset($this->request->get['stone_from_ov'])) {
                $url .= '&stone_from_ov=' . $this->request->get['stone_from_ov'];
            }

			if (isset($this->request->get['stone_weight_ov'])) {
                $url .= '&stone_weight_ov=' . $this->request->get['stone_weight_ov'];
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
			$manufacturing_category_id = !empty($category_info['manufacturing_category_id']) ? (int)$category_info['manufacturing_category_id'] : 0;

			if (!$manufacturing_category_id && !empty($category_info['parent_id'])) {
				$parent_category_info = $this->model_catalog_category->getCategory($category_info['parent_id']);
				$manufacturing_category_id = !empty($parent_category_info['manufacturing_category_id']) ? (int)$parent_category_info['manufacturing_category_id'] : 0;
			}

			$data['manufacturing_category_href'] = html_entity_decode($this->url->link(
				$manufacturing_category_id ? 'product/manufacturing_category' : 'information/manufacturing',
				$manufacturing_category_id ? 'category_id=' . $manufacturing_category_id : '',
				true
			), ENT_QUOTES, 'UTF-8');

			$our_project_category_id = !empty($category_info['our_project_id']) ? (int)$category_info['our_project_id'] : 0;

			if (!$our_project_category_id && !empty($category_info['parent_id'])) {
				if (!isset($parent_category_info)) {
					$parent_category_info = $this->model_catalog_category->getCategory($category_info['parent_id']);
				}

				$our_project_category_id = !empty($parent_category_info['our_project_id']) ? (int)$parent_category_info['our_project_id'] : 0;
			}

			$data['our_project_href'] = $our_project_category_id
				? html_entity_decode($this->url->link('product/our_project', 'category_project_id=' . $our_project_category_id, true), ENT_QUOTES, 'UTF-8')
				: '/o-studii/nashi-raboty';

            if ($category_info['meta_title']) {
                if($page>1) {
                    $category_info['meta_title'] = $category_info['meta_h1'];
                    $this->document->setTitle($category_info['meta_title'].' - страница '.$page);



                } else {
                $this->document->setTitle($category_info['meta_title']);
                }



            } else {
                if($page>1) {
                    $this->document->setTitle($category_info['name'].' - страница '.$page);

                } else {
                    $this->document->setTitle($category_info['name']);
                }
            }

            if($page>1) {
                //$category_info['meta_description'] = $category_info['meta_description'].' — страница '.$page.' каталога. Смотрите больше моделей с доставкой по Москве.';
                $category_info['meta_description'] = $category_info['meta_h1'].' — страница '.$page.' каталога. Смотрите больше моделей с доставкой по Москве.';

            }
            $this->document->setDescription($category_info['meta_description']);
            $this->document->setKeywords($category_info['meta_keyword']);

            if ($category_info['meta_h1']) {
                if($page>1) {
                    //$data['heading_title'] = $category_info['meta_h1'].' - страница '.$page;
                    $data['heading_title'] = $category_info['meta_h1'].' - страница '.$page;
                } else {
                $data['heading_title'] = $category_info['meta_h1'];
                }
            } else {
                if($page>1) {
                    $data['heading_title'] = $category_info['name'].' - страница '.$page;
                } else {
                    $data['heading_title'] = $category_info['name'];
                }
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
            $data['price_work'] = $this->language->get('price_work');
            $data['price_materials'] = $this->language->get('price_materials');
            $data['price_product'] = $this->language->get('price_product');

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
                $this->document->setJsonDimage($data['thumb']);



            } else {
                $data['thumb'] = '';
            }

            if($page==1) {
            $data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
            }
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

            if (isset($this->request->get['min_price'])) {
                $url .= '&min_price=' . $this->request->get['min_price'];
            }

            if (isset($this->request->get['max_price'])) {
                $url .= '&max_price=' . $this->request->get['max_price'];
            }

            if (isset($this->request->get['metal_ov'])) {
                $url .= '&metal_ov=' . $this->request->get['metal_ov'];
            }

            if (isset($this->request->get['insertion_ov'])) {
                $url .= '&insertion_ov=' . $this->request->get['insertion_ov'];
            }

			if (isset($this->request->get['stone_color_ov'])) {
                $url .= '&stone_color_ov=' . $this->request->get['stone_color_ov'];
            }

			if (isset($this->request->get['stone_type_ov'])) {
                $url .= '&stone_type_ov=' . $this->request->get['stone_type_ov'];
            }

			if (isset($this->request->get['stone_form_ov'])) {
                $url .= '&stone_form_ov=' . $this->request->get['stone_form_ov'];
            }

			if (isset($this->request->get['stone_sert_ov'])) {
                $url .= '&stone_sert_ov=' . $this->request->get['stone_sert_ov'];
            }

			if (isset($this->request->get['stone_from_ov'])) {
                $url .= '&stone_from_ov=' . $this->request->get['stone_from_ov'];
            }

			if (isset($this->request->get['stone_weight_ov'])) {
                $url .= '&stone_weight_ov=' . $this->request->get['stone_weight_ov'];
            }

            $data['categories'] = array();

            $results = $this->model_catalog_category->getCategories($category_id);
            if(!$results) {
                $results = $this->model_catalog_category->getCategories($category_info['parent_id']);
            }


            foreach ($results as $result) {

                if($result['category_id']==$category_id) {
                    continue;
                }


                $filter_data = array(
                    'filter_category_id'  => $result['category_id'],
                    'filter_sub_category' => true
                );
                if ($result['image']) {
                    $image = $this->model_tool_image->resize($result['image'], 150, 150);
                }
                else {
                    $image = $this->model_tool_image->resize('no_image.jpg', 150,150);
                }


                $data['categories'][] = array(
                    'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                    // 'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url),
                    'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] ),
                    'thumb' => $image,
                    'material' => $result['material'],
                    'short_description' => $result['short_description']
                );
            }

            $parent_id = $this->model_catalog_product->getParent($category_id);
            $path = $this->model_catalog_product->getPath($category_id);
            $quantity_path = count($this->model_catalog_category->getPathRows($category_id));
            //echo $parent_id['parent_id'];
            //echo "<br>";

            //echo $quantity_path;
            $data['category_id'] = $category_id;
            $data['path'] = $path;

           if($parent_id['parent_id'] == 59) {
                $level = 0;
            }
            else {
                $level = 1;
            }

            //p($data['categories']);
            //p($_SERVER);
           //p($data['levelcat']);
          /* p($data['level']);
            p($data['path']);
            p($data['category_id']);*/



          //p($parent_id);
            $data['products'] = array();

            $filter_data = array(
                'filter_category_id' => $category_id,
                'filter_filter'      => $filter,
                'sort'               => $sort,
                'min_price'          => $min_price,
                'max_price'          => $max_price,
                'option_filter'      => $option_filter,
                'order'              => $order,
                'start'              => ($page - 1) * $limit,
                'limit'              => $limit
            );
            if (isset($this->request->get['product'])){
              $product_limit = $this->request->get['product'];
              $filter_data['start'] = ($page * $limit) - $product_limit;
              $filter_data['limit'] = $product_limit;
            }



            $product_total = $this->model_catalog_product->getTotalProducts($filter_data);



       

            //p($_SERVER);
            $results = $this->model_catalog_product->getProducts($filter_data);


            $products_id = array();
            $data['products_all'] = array();
            foreach ($results as $result) {
                $data['options'] = array();

                foreach ($this->model_catalog_product->getProductOptions($result['product_id']) as $option) {
                    $product_option_value_data = array();

                    foreach ($option['product_option_value'] as $option_value) {
                        if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {

                            $product_option_value_data[] = array(
                                'product_option_value_id' => $option_value['product_option_value_id'],
                                'option_value_id'         => $option_value['option_value_id'],
                                'name'                    => $option_value['name'],
                                'default_value'                    => $option_value['default_value'],
                                'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
                                'price_prefix'            => $option_value['price_prefix']
                            );
                        }
                    }

                    $data['options'][] = array(
                        'product_option_id'    => $option['product_option_id'],
                        'product_option_value' => $product_option_value_data,
                        'option_id'            => $option['option_id'],
                        'name'                 => $option['name'],
                        'type'                 => $option['type'],
                        'value'                => $option['value'],
                        'required'             => $option['required']
                    );
                }

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
                    $price_works = $this->currency->format($this->tax->calculate($result['price_works'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price_works = false;
                }

                if ($price_current_type == 'price_works'){
                    $price = $price_works;
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
                $resultsAlternative = $this->model_catalog_product->getProductAlternative($result['model'],$result['product_id']);
				$count_altertative = count($resultsAlternative);
                foreach ($resultsAlternative as $resultAlter) {
                    $data['optionsAlter'] = array();

                    foreach ($this->model_catalog_product->getProductOptions($resultAlter['product_id']) as $option) {
                        $product_option_value_data = array();

                        foreach ($option['product_option_value'] as $option_value) {
                            if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {

                                $product_option_value_data[] = array(
                                    'product_option_value_id' => $option_value['product_option_value_id'],
                                    'option_value_id' => $option_value['option_value_id'],
                                    'name' => $option_value['name'],
                                    'default_value' => $option_value['default_value'],
                                    'image' => $this->model_tool_image->resize($option_value['image'], 50, 50),
                                    'price_prefix' => $option_value['price_prefix']
                                );
                            }
                        }

                        $data['optionsAlter'][] = array(
                            'product_option_id' => $option['product_option_id'],
                            'product_option_value' => $product_option_value_data,
                            'option_id' => $option['option_id'],
                            'name' => $option['name'],
                            'type' => $option['type'],
                            'value' => $option['value'],
                            'required' => $option['required']
                        );
                    }

                    $products_id[$resultAlter['product_id']] = $resultAlter['product_id'] ;

                    if ($resultAlter['image']) {
                        $imageAlter = $this->model_tool_image->resize($resultAlter['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'), 'product_list');
                    } else {
                        $imageAlter = false;
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $priceAlter = $this->currency->format($this->tax->calculate($resultAlter['price'], $resultAlter['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $priceAlter = false;
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $priceAlter1 = $this->currency->format($this->tax->calculate($result['price_works'], $result['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $priceAlter1 = false;
                    }
                    if ($price_current_type == 'price_works'){
                        $priceAlter = $priceAlter1;
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

					$priceAlter1 = $this->currency->format((float)$resultAlter['price_works']);

                    //if($products_id[$result['product_id']] !=  $resultAlter['product_id']) {
                        $alternatives[$result['product_id']][] = array(
                            'product_id' => $resultAlter['product_id'],
                            'model'      => $resultAlter['model'],
                            'thumb'      => $imageAlter,
                            'name'       => $resultAlter['name'],
                            'price'      => $priceAlter,
                            'price_works'=> $priceAlter1,
                            'special'    => $specialAlter,
                            'weight'     => $resultAlter['weight'],
                            'video_review'=> $resultAlter['video_review'],
                            'rating'     => $ratingAlter,
                            'tax'        => $taxAlter,
                            'reviews'    => sprintf($this->language->get('text_reviews'), (int)$resultAlter['reviews']),
                            'href'       => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $resultAlter['product_id'] . $url),
                            'options'    => $data['optionsAlter']
                        );
                        //unset($products_id[$result['product_id']]);
                    //}
                }

                    $data['products'][$result['product_id']] = array(
                        'product_id'  => $result['product_id'],
                        'model'       => $result['model'],
                        'thumb'       => $image,
                        'name'        => $result['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'price_works' => $price_works,
                        'price_materials' => $price_materials,
                        'special'     => $special,
                        'weight'      => $result['weight'],
                        'video_review'=> $result['video_review'],
                        'tax'         => $tax,
                        'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
                        'rating'      => $result['rating'],
                        'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url),
                        'options'     => $data['options']
                    );

                if(!empty($alternatives[$result['product_id']]) && empty($products_id[$result['product_id']])) {
                    $data['products_all'][$result['product_id']] = array($data['products'][$result['product_id']], $alternatives[$result['product_id']]);
                } else {
                    if(empty($products_id[$result['product_id']])) $data['products_all'][$result['product_id']] = array($data['products'][$result['product_id']]);
                }
            }

            //p($data['products']);
            $url = '';

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $data['price_types'] = array();
            $data['price_types'][] = array(
                'text'  => $this->language->get('text_price'),
                'value' => 'price0',
                'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&price=price0' . $url)
            );
            $data['price_types'][] = array(
                'text'  => $this->language->get('text_price_works'),
                'value' => 'price_works',
                'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&price=price_works' . $url)
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

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . (int)$this->request->get['limit'];
            }

            if (isset($this->request->get['min_price'])) {
                $url .= '&min_price=' . $this->request->get['min_price'];
            }

            if (isset($this->request->get['max_price'])) {
                $url .= '&max_price=' . $this->request->get['max_price'];
            }

            if (isset($this->request->get['metal_ov'])) {
                $url .= '&metal_ov=' . $this->request->get['metal_ov'];
            }

            if (isset($this->request->get['insertion_ov'])) {
                $url .= '&insertion_ov=' . $this->request->get['insertion_ov'];
            }

			if (isset($this->request->get['stone_color_ov'])) {
                $url .= '&stone_color_ov=' . $this->request->get['stone_color_ov'];
            }

			if (isset($this->request->get['stone_type_ov'])) {
                $url .= '&stone_type_ov=' . $this->request->get['stone_type_ov'];
            }

			if (isset($this->request->get['stone_form_ov'])) {
                $url .= '&stone_form_ov=' . $this->request->get['stone_form_ov'];
            }

			if (isset($this->request->get['stone_sert_ov'])) {
                $url .= '&stone_sert_ov=' . $this->request->get['stone_sert_ov'];
            }

			if (isset($this->request->get['stone_from_ov'])) {
                $url .= '&stone_from_ov=' . $this->request->get['stone_from_ov'];
            }

			if (isset($this->request->get['stone_weight_ov'])) {
                $url .= '&stone_weight_ov=' . $this->request->get['stone_weight_ov'];
            }

            $data['limits'] = array();

            $limits = array(12, 24, 36, 48, 96);

            foreach($limits as $value) {
                $data['limits'][] = array(
                    'text'  => $value,
                    'value' => $value,
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
                );
            }

            $data['url'] = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url);
            $data['sorts'] = array(
                array(
                    'text' => 'По популярности',
                    'sort' => 'rating',
                    'order' => 'DESC',
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&sort=rating&order=DESC')
                ),
                array(
                    'text' => 'Сначала новинки',
                    'sort' => 'p.date_added',
                    'order' => 'DESC',
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&sort=p.date_added&order=DESC')
                ),
                array(
                    'text' => 'Сначала дешёвые',
                    'sort' => 'p.price',
                    'order' => 'ASC',
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&sort=p.price&order=ASC')
                ),
                array(
                    'text' => 'Сначала дорогие',
                    'sort' => 'p.price',
                    'order' => 'DESC',
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&sort=p.price&order=DESC')
                )
            );

            $data['option_filter_values']['min_price'] = $this->request->get['min_price'];
            $data['option_filter_values']['max_price'] = $this->request->get['max_price'];
            $data['option_filter_values']['metal_ov'] = $this->request->get['metal_ov'];
            $data['option_filter_values']['insertion_ov'] = $this->request->get['insertion_ov'];
            $data['attribute_filter_values']['metal_ov'] = $this->request->get['metal_ov'];
            $data['attribute_filter_values']['insertion_ov'] = $this->request->get['insertion_ov'];

            if (isset($this->request->get['sort'])) {
                $data['option_filter_values']['form_href'] = $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=' . $this->request->get['sort'] . '&order=' . $order);
            } else {
                $data['option_filter_values']['form_href'] = $this->url->link('product/category', 'path=' . $this->request->get['path']);
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

            if (isset($this->request->get['min_price'])) {
                $url .= '&min_price=' . $this->request->get['min_price'];
            }

            if (isset($this->request->get['max_price'])) {
                $url .= '&max_price=' . $this->request->get['max_price'];
            }

            if (isset($this->request->get['metal_ov'])) {
                $url .= '&metal_ov=' . $this->request->get['metal_ov'];
            }

            if (isset($this->request->get['insertion_ov'])) {
                $url .= '&insertion_ov=' . $this->request->get['insertion_ov'];
            }

			if (isset($this->request->get['stone_color_ov'])) {
                $url .= '&stone_color_ov=' . $this->request->get['stone_color_ov'];
            }

			if (isset($this->request->get['stone_type_ov'])) {
                $url .= '&stone_type_ov=' . $this->request->get['stone_type_ov'];
            }

			if (isset($this->request->get['stone_form_ov'])) {
                $url .= '&stone_form_ov=' . $this->request->get['stone_form_ov'];
            }

			if (isset($this->request->get['stone_sert_ov'])) {
                $url .= '&stone_sert_ov=' . $this->request->get['stone_sert_ov'];
            }

			if (isset($this->request->get['stone_from_ov'])) {
                $url .= '&stone_from_ov=' . $this->request->get['stone_from_ov'];
            }

			if (isset($this->request->get['stone_weight_ov'])) {
                $url .= '&stone_weight_ov=' . $this->request->get['stone_weight_ov'];
            }

            // =====================================================
            // ПРОВЕРКА СУЩЕСТВОВАНИЯ СТРАНИЦЫ (защита от бесконечной пагинации)
            // =====================================================
            if(!empty($data['products_all']) || !empty($results)){
                // Если товары есть, считаем количество страниц
                $total_products = $product_total;
                $max_page = ceil($total_products / $limit);

                // Если страница больше максимальной — отдаём 404
                if ($page > $max_page && $max_page > 0) {
                    return $this->load->controller('error/not_found');
                }
            } else {
                // Если товаров нет, то должна быть только 1-я страница
                if ($page > 1) {
                    return $this->load->controller('error/not_found');
                }
            }

            $data['option_values']['metal'] = $this->model_catalog_option->getOptionValues(5);
            $data['option_values']['insertion'] = $this->model_catalog_option->getOptionValues(13);
			$data['option_values']['stone_color'] = $this->model_catalog_option->getOptionValues(33);
			$data['option_values']['stone_type'] = $this->model_catalog_option->getOptionValues(31);
            $data['option_values']['stone_form'] = $this->model_catalog_option->getOptionValues(32);
			$data['option_values']['stone_sert'] = $this->model_catalog_option->getOptionValues(34);
			$data['option_values']['stone_from'] = $this->model_catalog_option->getOptionValues(35);
			$data['option_values']['stone_weight'] = $this->model_catalog_option->getOptionValues(36);
      $data['attribute_values']['metal'] = $this->model_catalog_attribute->getAttributeValues(18,1,$category_info['category_id']);
      $data['attribute_values']['insertion'] = $this->model_catalog_attribute->getAttributeValues(20,1,$category_info['category_id']);



            $page_limit = max(1, (int)$limit);
            $max_page = max(1, (int)ceil($product_total / $page_limit));

            if ((int)$page < 1 || (isset($this->request->get['page']) && (int)$page > $max_page)) {
                return $this->load->controller('error/not_found');
            }

            if($product_total < $limit){
                $product_total = $limit;
            }



            $pagination = new Pagination();
            $pagination->total = $product_total;
            $pagination->page = $page;
            $pagination->limit = $limit;


			if(!empty($this->request->request['new_seourl_canonical'])){
			$pagination->url = $this->request->request['new_seourl_canonical'] . ($url ? '?' . ltrim($url, '&') . '&' : '?') . 'page={page}';
			}else{
            $pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');
			}
            $data['page'] = (int)$page;
            $data['page_count'] = $max_page;
            $data['pagination_url'] = $pagination->url;
            $data['pagination'] = $pagination->render();

            $data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

            // http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if (!empty($this->request->request['new_seourl_canonical'])) {
				$canonical = html_entity_decode($this->request->request['new_seourl_canonical'], ENT_QUOTES, 'UTF-8');
				$this->document->addLink($canonical . ($page > 1 ? (strpos($canonical, '?') === false ? '?' : '&') . 'page=' . (int)$page : ''), 'canonical');
			} elseif ($page == 1) {
				$this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'canonical');
			} else {
				$this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page=' . $page, 'SSL'), 'canonical');
			}


//            if ($page == 1) {
//                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'canonical');
//            } elseif ($page == 2) {
//                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'prev');
//            } else {
//                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), 'SSL'), 'prev');
//            }
//
//            if ($limit && ceil($product_total / $limit) > $page) {
//                $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), 'SSL'), 'next');
//            }

            $data['sort'] = $sort;
            $data['order'] = $order;
            $data['limit'] = $limit;

            $data['continue'] = $this->url->link('common/home');

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['ocd_viewed'] = $this->load->controller('module/ocd_viewed', array(
                'title'  => array($this->config->get('config_language_id') => 'Вы недавно смотрели'),
                'link'   => 0,
                'limit'  => 5,
                'width'  => 470,
                'height' => 470
            ));
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');




            if( $page > ceil($product_total / $limit) and ceil($product_total / $limit) <= 0){
            $data['products_all'] = '';
            }
            // if($category_id == 530){
			if(file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category-'.$category_id.'.tpl')){
                // $data['breadcrumbs'][] = array(
                    // 'text' => $category_info['name'],
                    // 'href' => $this->url->link('product/category', $url)
                // );




                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/category-'.$category_id.'.tpl', $data));

            } elseif (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/category.tpl', $data));
            } else {
                $this->response->setOutput($this->load->view('default/template/product/category.tpl', $data));
            }
        }
        else {
            return $this->load->controller('error/not_found');
        }
    }
}
