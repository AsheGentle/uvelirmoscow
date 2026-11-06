<?php
class ControllerProductProduct extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('product/product');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$this->load->model('catalog/category');
		$this->load->model('catalog/our_project');

		$product_id = isset($this->request->get['product_id']) ? (int)$this->request->get['product_id'] : 0;
		$data['prod_id'] = $product_id;
		$this->load->model('catalog/product');
		$product_info = $this->model_catalog_product->getProduct($product_id);
		$main_category_query = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . $product_id . "' AND main_category = '1' LIMIT 1");
		$main_category_id = $main_category_query->num_rows ? (int)$main_category_query->row['category_id'] : 0;

		if ($product_info && $main_category_id) {
			$path = '';
			$category_path_query = $this->db->query("SELECT path_id FROM " . DB_PREFIX . "category_path WHERE category_id = " . $main_category_id . " ORDER BY level ASC");

			foreach ($category_path_query->rows as $category_path) {
				$path_id = (int)$category_path['path_id'];

				if (!$path) {
					$path = $path_id;
				} else {
					$path .= '_' . $path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['meta_h1'] ?: $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path)
					);
				}
			}
		}

		$this->load->model('catalog/manufacturer');

		if (isset($this->request->get['manufacturer_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_brand'),
				'href' => $this->url->link('product/manufacturer')
			);

			$url = '';

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

			$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($this->request->get['manufacturer_id']);



			if ($manufacturer_info) {
				$data['breadcrumbs'][] = array(
					'text' => $manufacturer_info['name'],
					'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
				);
			}
		}

		if ($product_info) {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
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
				'text' => $product_info['meta_h1'] ?: $product_info['name'],
				'href' => $this->url->link('product/product', $url . '&product_id=' . $this->request->get['product_id'])
			);


			$data['options'] = array();
$this->load->model('tool/image');

			foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {
				$product_option_value_data = array();

				foreach ($option['product_option_value'] as $option_value) {
					if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
						if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
							$price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false));
						} else {
							$price = false;
						}

						$product_option_value_data[] = array(
							'product_option_value_id' => $option_value['product_option_value_id'],
							'option_value_id'         => $option_value['option_value_id'],
							'name'                    => $option_value['name'],
							'default_value'                    => $option_value['default_value'],
							'weight'                    => $option_value['weight'],
							'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
							'price'                   => $price,
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
			//p($data['options']);

			$data['attribute_groups'] = $this->model_catalog_product->getProductAttributes($this->request->get['product_id']);
			$data['product_params'] = array();
			$main_cid_data = $main_category_id;
			$category_info_data = $main_cid_data ? $this->model_catalog_category->getCategory($main_cid_data) : array();
			$data['manufacturing_category_href'] = !empty($category_info_data['manufacturing_category_id'])
				? html_entity_decode($this->url->link('product/manufacturing_category', 'category_id=' . (int)$category_info_data['manufacturing_category_id'], true), ENT_QUOTES, 'UTF-8')
				: '/uslugi/izgotovlenie';
			$our_project_category_id = !empty($category_info_data['our_project_id']) ? (int)$category_info_data['our_project_id'] : 0;
			if (!$our_project_category_id && !empty($category_info_data['parent_id'])) {
				$parent_category_info = $this->model_catalog_category->getCategory((int)$category_info_data['parent_id']);
				$our_project_category_id = !empty($parent_category_info['our_project_id']) ? (int)$parent_category_info['our_project_id'] : 0;
			}
			$related_project = $this->model_catalog_our_project->getProjectByRelatedProduct($product_id);
			if ($related_project) {
				$data['our_project_href'] = html_entity_decode($this->url->link('product/project', 'project_id=' . (int)$related_project['id'], true), ENT_QUOTES, 'UTF-8');
			} elseif ($our_project_category_id) {
				$data['our_project_href'] = html_entity_decode($this->url->link('product/our_project', 'category_project_id=' . $our_project_category_id, true), ENT_QUOTES, 'UTF-8');
			} else {
				$data['our_project_href'] = '/o-studii/nashi-raboty';
			}
			$attribute_separator = ' ';
			$attribute_text_select_setting = $this->config->get('attribute_text_select_setting');
			$landing_links = array();
			$category_url = '';
			if ($main_cid_data) {
				$category_url = html_entity_decode($this->url->link('product/category', 'path=' . $main_cid_data), ENT_QUOTES, 'UTF-8');
				if (strpos($category_url, '?') === false) {
					$category_url = rtrim($category_url, '/');
					$landing_query = $this->db->query("SELECT hl.link, hl.short_link FROM " . DB_PREFIX . "filter_vier_hl hl JOIN " . DB_PREFIX . "filter_vier_hl_lang lang ON lang.id = hl.id AND lang.language_id = '" . (int)$this->config->get('config_language_id') . "' WHERE hl.route = 'category_id' AND hl.route_id = '" . (int)$main_cid_data . "' AND hl.status = 1 AND hl.store_id IN (-1, " . (int)$this->config->get('config_store_id') . ") AND (lang.name <> '' OR lang.meta_h1 <> '')");
					$use_short_link = !empty($this->config->get('filter_vier_hl')['short_link']);
					$landing_links = $this->getAttributeLandingLinks($category_url, $landing_query->rows, $use_short_link);
				}
			}

			if (isset($attribute_text_select_setting['separ'][0])) {
				$attribute_separator = $attribute_text_select_setting['separ'][0] . ' ';
			}

			foreach ($data['attribute_groups'] as &$attribute_group) {

				foreach ($attribute_group['attribute'] as &$attribute) {
					$attribute['name'] = preg_replace('~<a\b[^>]*\blink_atrprod\b[^>]*>(.*?)</a>~is', '$1', $attribute['name']);
					if (!empty($attribute['param'])) {
						$values = array();
						foreach ($attribute['param'] as $param) {
							$filter_url = $category_url ? html_entity_decode($this->url->link('product/category', 'path=' . $main_cid_data . '&attrb[' . (int)$attribute['attribute_id'] . ']=' . (int)$param['text_id']), ENT_QUOTES, 'UTF-8') : '';
							$href = $this->getAttributeLandingUrl($category_url, $filter_url, $landing_links);
							$values[] = $href
								? '<a class="link_atrprod" href="' . htmlspecialchars($href, ENT_QUOTES, 'UTF-8') . '">' . $param['text'] . '</a>'
								: $param['text'];
						}
						$attribute['text'] = implode($attribute_separator, $values);
					} elseif (isset($attribute['text'])) {
						$attribute['text'] = preg_replace('~<a\b[^>]*\blink_atrprod\b[^>]*>(.*?)</a>~is', '$1', $attribute['text']);
					}
					if ((int)$attribute_group['attribute_group_id'] === 7 || !empty($attribute['attribute_hide']) || !isset($attribute['text']) || trim(strip_tags(html_entity_decode($attribute['text'], ENT_QUOTES, 'UTF-8'))) === '') {
						continue;
					}

					$text = $attribute['text'];

					$data['product_params'][] = array(
						'name' => $attribute['name'],
						'text' => $text
					);
				}
				unset($attribute);
			}
			unset($attribute_group);

			$product_title = '';
			$product_description = '';
			if($category_info_data){
			$product_title = $category_info_data['product_title'];
			$product_description = $category_info_data['product_description'];
				if(!empty($product_title) || !empty($product_description)){

					$from_tpl=array();
					$to_tpl=array();
					$from_tpl[]='{name}';
					$to_tpl[]=$product_info['name'];
					$from_tpl[]='{weight}';
					$to_tpl[]=$product_info['weight']. "г";
					$from_tpl[]='{price}';
					$to_tpl[]=$this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
					$from_tpl[]='{price_work}';
					$to_tpl[]=$this->currency->format($this->tax->calculate($product_info['price_works'], $product_info['tax_class_id'], $this->config->get('config_tax')));

					$from_tpl[]='{price_material}';
					$to_tpl[]=$this->currency->format($this->tax->calculate($product_info['price_materials'], $product_info['tax_class_id'], $this->config->get('config_tax')));

					$this->load->model('catalog/option');
			$filter_data = array(
			'sort'  => 	 'od.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => 999
		);
		$options_list = $this->model_catalog_option->getOptions($filter_data);

		foreach($options_list as $option_data){
			$from_tpl[]='{option_'.$option_data['option_id'].'}';
			$found=false;
			foreach($data['options'] as $opt_data){
				if($opt_data['option_id']==$option_data['option_id']){

					 if ($opt_data['type'] == 'select') {
                      foreach ($opt_data['product_option_value'] as $option_value_data) {
                       if($option_value_data['default_value'] == 1) {
						   $found=$option_value_data['name'];
					   }
					  }
					 }


				}
			}
			if(!empty($found)){
				$to_tpl[]=$found;
			}else{
				$to_tpl[]='';
			}

		}

			$this->load->model('catalog/attribute');
			$filter_data = array(
			'sort'  => 	 'ad.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => 999
		);
		$attributes_list = $this->model_catalog_attribute->getAttributes($filter_data);
		foreach($attributes_list as $attribute_data){
			$from_tpl[]='{attribute_'.$attribute_data['attribute_id'].'}';
			$found=false;
			foreach ($data['attribute_groups'] as $attribute_group) {
			 foreach ($attribute_group['attribute'] as $attribute) {
				if($attribute['attribute_id']==$attribute_data['attribute_id']){
						$found=$attribute['text'];
					}
				}
			}
			if(!empty($found)){
				$to_tpl[]=$found;
			}else{
				$to_tpl[]='';
			}
		}


			$this->load->model('catalog/filter');
			$filter_data = array(
			'sort'  => 	 'fgd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => 999
		);
		$filters_list = $this->model_catalog_filter->getFilterGroups($filter_data);


			$filter_data = array(
			'sort'  => 	 'fgd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => 999
		);
		$filters_list_all = $this->model_catalog_filter->getFilters($filter_data);
		$filters_data=array();
		foreach($filters_list_all as $asft){
			$filters_data[$asft['filter_group_id']][]=array($asft['filter_id'],$asft['name']);
		}
		$filters_product= $this->model_catalog_product->getProductFilters($this->request->get['product_id']);

		foreach($filters_data as $filter_data_ginc=>$filter_data_inc){
			$from_tpl[]='{filter_'.$filter_data_ginc.'}';
			$found=array();

			foreach($filter_data_inc as $filter_data_val){

			foreach($filters_product as $filter_data_pr){

				if($filter_data_val[0]==$filter_data_pr['filter_id']){
					$found[]=$filter_data_val[1];
				}
			}
			}
					if(count($found)){
				$to_tpl[]=implode(', ',$found);
			}else{
				$to_tpl[]='';
			}

		}





						$product_title = trim(str_replace($from_tpl,$to_tpl, $product_title));
						$product_description = trim(str_replace($from_tpl,$to_tpl, $product_description));
				}

			}

			if(!empty($product_info['meta_title'])){
				$this->document->setTitle($product_info['meta_title']);
			}else{
				if(!empty($product_title)){
				$this->document->setTitle($product_title);
				}else{
				$this->document->setTitle($product_info['name']);
				}

		}

      $data['weight'] = $product_info['weight'];
			if(!empty($product_info['meta_description'])){
            $this->document->setDescription($product_info['meta_description']);

			}else{



			$this->document->setDescription($product_description);
			}




            $meta_description = $product_info['name'];
            $metal = $ves = false;
            foreach ($data['attribute_groups'] as $attribute_group) {
                foreach ($attribute_data['attribute'] as $attribute) {

                    if($attribute['attribute_id']==18) {
                        $metal = $attribute['text'];
                    }

                    if($attribute['attribute_id']==29) {
                        $ves = $attribute['text'];
                    }

                }
            }

            if($metal) {

                $meta_description .=' - '.$metal;
            }

            if($ves) {

                $meta_description .='.Вес изделия - '.$ves;
            }



            if($data['price_materials']) {
                $meta_description .=' Цена: '.str_replace('руб', '', $data['price_materials']);
            }






            /*
             {название товара} - {металл}. Вес изделия - {вес}
            г. Цена: {цена} ₽,
            материал - {цена_материала} ₽,
            работа мастера - {цена_работы}
            ₽. Изготовление на заказ. Фото и детали уточняйте у менеджера
             */


			$this->document->setKeywords($product_info['meta_keyword']);
			$this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
			// $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
			// $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/locale/'.$this->session->data['language'].'.js');
			// $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
      // $this->document->addScript('catalog/view/javascript/cloudzoom/cloudzoom.js');
      // $this->document->addStyle('catalog/view/javascript/cloudzoom/cloudzoom.css');
      // $this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

			if ($product_info['meta_h1']) {
				$data['heading_title'] = $product_info['meta_h1'];
			} else {
				$data['heading_title'] = $product_info['name'];
			}

            $this->document->setogtitle($data['heading_title']);



			$data['text_select'] = $this->language->get('text_select');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_reward'] = $this->language->get('text_reward');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_stock'] = $this->language->get('text_stock');
			$data['text_discount'] = $this->language->get('text_discount');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_option'] = $this->language->get('text_option');
			$data['text_minimum'] = sprintf($this->language->get('text_minimum'), $product_info['minimum']);
			$data['text_write'] = $this->language->get('text_write');
			$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
			$data['text_note'] = $this->language->get('text_note');
			$data['text_tags'] = $this->language->get('text_tags');
			$data['text_related'] = $this->language->get('text_related');
			$data['text_payment_recurring'] = $this->language->get('text_payment_recurring');
			$data['text_loading'] = $this->language->get('text_loading');
            $data['text_more_info'] = $this->language->get('text_more_info');
            $data['text_privacy'] = $this->language->get('text_privacy');

            $data['entry_qty'] = $this->language->get('entry_qty');
			$data['entry_name'] = $this->language->get('entry_name');
			$data['entry_review'] = $this->language->get('entry_review');
			$data['entry_rating'] = $this->language->get('entry_rating');
			$data['entry_good'] = $this->language->get('entry_good');
			$data['entry_bad'] = $this->language->get('entry_bad');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_upload'] = $this->language->get('button_upload');
			$data['button_continue'] = $this->language->get('button_continue');
            $data['text_weight'] = $this->language->get('text_weight');
            $data['price_main'] = $this->language->get('price_main');
            $data['price_work'] = $this->language->get('price_work');
            $data['price_material'] = $this->language->get('price_material');
            $data['price_comment_single'] = $this->language->get('price_comment_single');
            $data['price_comment_duo'] = $this->language->get('price_comment_duo');

			$this->load->model('catalog/review');

			$data['tab_description'] = $this->language->get('tab_description');
            $data['tab_video_review'] = $this->language->get('tab_video_review');
			$data['tab_attribute'] = $this->language->get('tab_attribute');
			$data['tab_review'] = sprintf($this->language->get('tab_review'), $product_info['reviews']);
            $data['tab_alternative'] = $this->language->get('tab_alternative');
			$data['product_id'] = (int)$this->request->get['product_id'];
			$data['manufacturer'] = $product_info['manufacturer'];
			$data['manufacturers'] = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $product_info['manufacturer_id']);
			$data['model'] = $product_info['model'];
			$data['reward'] = $product_info['reward'];
			$data['points'] = $product_info['points'];
            $data['video_review'] = $product_info['video_review'];
			$data['description'] = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');

			if ($product_info['quantity'] <= 0) {
				$data['stock'] = $product_info['stock_status'];
			} elseif ($this->config->get('config_stock_display')) {
				$data['stock'] = $product_info['quantity'];
			} else {
				$data['stock'] = $this->language->get('text_instock');
			}


			if ($product_info['image']) {
				$data['popup'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
			} else {
				$data['popup'] = $this->model_tool_image->resize('no_image.png', $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));;
			}

			if ($product_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
				$this->document->setOgImage($data['thumb']);
                $this->document->setJsonDimage($data['thumb']);
			} else {
				$data['thumb'] = $this->model_tool_image->resize('no_image.png', $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
			}

			$data['images'] = array();

			$results = $this->model_catalog_product->getProductImages($this->request->get['product_id']);

			foreach ($results as $result) {
				$data['images'][] = array(
					'popup' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height')),
					'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'))
				);
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$data['price'] = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$data['price'] = false;
			}

            if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                $data['price_works'] = $this->currency->format($this->tax->calculate($product_info['price_works'], $product_info['tax_class_id'], $this->config->get('config_tax')));
            } else {
                $data['price_works'] = false;
            }

            if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                $data['price_materials'] = $this->currency->format($this->tax->calculate($product_info['price_materials'], $product_info['tax_class_id'], $this->config->get('config_tax')));
            } else {
                $data['price_materials'] = false;
            }

			if ((float)$product_info['special']) {
				$data['special'] = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$data['special'] = false;
			}

			if ($this->config->get('config_tax')) {
				$data['tax'] = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price']);
			} else {
				$data['tax'] = false;
			}

			$discounts = $this->model_catalog_product->getProductDiscounts($this->request->get['product_id']);

			$data['discounts'] = array();

			foreach ($discounts as $discount) {
				$data['discounts'][] = array(
					'quantity' => $discount['quantity'],
					'price'    => $this->currency->format($this->tax->calculate($discount['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))
				);
			}



			if ($product_info['minimum']) {
				$data['minimum'] = $product_info['minimum'];
			} else {
				$data['minimum'] = 1;
			}

			$data['review_status'] = $this->config->get('config_review_status');

			if ($this->config->get('config_review_guest') || $this->customer->isLogged()) {
				$data['review_guest'] = true;
			} else {
				$data['review_guest'] = false;
			}

			if ($this->customer->isLogged()) {
				$data['customer_name'] = $this->customer->getFirstName() . '&nbsp;' . $this->customer->getLastName();
			} else {
				$data['customer_name'] = '';
			}

			$data['reviews'] = sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']);
			$data['rating'] = (int)$product_info['rating'];
			$data['count_rating'] = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('captcha/' . $this->config->get('config_captcha'));
			} else {
				$data['captcha'] = '';
			}



			$data['products'] = array();

			$results = $this->model_catalog_product->getProductAlternative($this->request->get['product_id']);


			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
					$price_works = (float)$result['price_works'] ? $this->currency->format($this->tax->calculate($result['price_works'], $result['tax_class_id'], $this->config->get('config_tax'))) : false;
					$price_materials = (float)$result['price_materials'] ? $this->currency->format($this->tax->calculate($result['price_materials'], $result['tax_class_id'], $this->config->get('config_tax'))) : false;
				} else {
					$price = false;
					$price_works = false;
					$price_materials = false;
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

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'price_works' => $price_works,
					'price_materials' => $price_materials,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}


            foreach ($this->model_catalog_product->getProductAlternative($this->request->get['product_id'], false) as $result) {
                if ($result['image']) {
                    $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
                } else {
                    $image = false;
                }

                if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price = false;
                }

                if ((float)$result['special']) {
                    $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $special = false;
                }

                if ($this->config->get('config_review_status')) {
                    $rating = (int)$result['rating'];
                } else {
                    $rating = false;
                }

                $data['alternatives'][] = array(
                    'product_id' => $result['product_id'],
                    'thumb'   	 => $image,
                    'name'    	 => $result['name'],
                    'price'   	 => $price,
                    'special' 	 => $special,
                    'rating'     => $rating,
                    'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
                    'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id'])
                );
            }
			$data['tags'] = array();

            $data['recurrings'] = $this->model_catalog_product->getProfiles($this->request->get['product_id']);

			$this->model_catalog_product->updateViewed($this->request->get['product_id']);

           // p($data);

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');
            $data['fastorder'] = $this->load->controller('module/fastorder');








            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/product.tpl')) {

				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/product.tpl', $data));


			} else {

				$this->response->setOutput($this->load->view('default/template/product/product.tpl', $data));

			}
		} else {
			return $this->load->controller('error/not_found');
		}
	}

	public function review() {
		$this->load->language('product/product');

		$this->load->model('catalog/review');

		$data['text_no_reviews'] = $this->language->get('text_no_reviews');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['reviews'] = array();

		$review_total = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

		$results = $this->model_catalog_review->getReviewsByProductId($this->request->get['product_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['reviews'][] = array(
				'author'     => $result['author'],
				'text'       => nl2br($result['text']),
				'rating'     => (int)$result['rating'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $review_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('product/product/review', 'product_id=' . $this->request->get['product_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/review.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/review.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/product/review.tpl', $data));
		}
	}

	public function write() {
		$this->load->language('product/product');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			// if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
			// 	$json['error'] = $this->language->get('error_name');
			// }
			//
			// if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
			// 	$json['error'] = $this->language->get('error_text');
			// }

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('catalog/review');

				$this->model_catalog_review->addReview($this->request->get['product_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	private function getAttributeLandingLinks($category_url, $rows, $use_short_link) {
		$links = array();
		if (!$use_short_link) return $links;
		foreach ($rows as $row) {
			$link = trim(urldecode($row['link']), '/');
			$short_link = trim(urldecode($row['short_link']), '/');
			if (!$link || !$short_link || $link === $short_link) continue;
			$links[$link] = $category_url . '/' . $short_link;
			$links[$short_link] = $links[$link];
		}
		return $links;
	}

	private function getAttributeLandingUrl($category_url, $filter_url, $landing_links) {
		if (!$category_url || strpos($filter_url, $category_url . '/') !== 0 || strpos($filter_url, '?') !== false) {
			return '';
		}
		$segment = trim(urldecode(substr($filter_url, strlen($category_url))), '/');
		return isset($landing_links[$segment]) ? $landing_links[$segment] : '';
	}

	public function getRecurringDescription() {
		$this->language->load('product/product');
		$this->load->model('catalog/product');

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		if (isset($this->request->post['recurring_id'])) {
			$recurring_id = $this->request->post['recurring_id'];
		} else {
			$recurring_id = 0;
		}

		if (isset($this->request->post['quantity'])) {
			$quantity = $this->request->post['quantity'];
		} else {
			$quantity = 1;
		}

		$product_info = $this->model_catalog_product->getProduct($product_id);
		$recurring_info = $this->model_catalog_product->getProfile($product_id, $recurring_id);

		$json = array();

		if ($product_info && $recurring_info) {
			if (!$json) {
				$frequencies = array(
					'day'        => $this->language->get('text_day'),
					'week'       => $this->language->get('text_week'),
					'semi_month' => $this->language->get('text_semi_month'),
					'month'      => $this->language->get('text_month'),
					'year'       => $this->language->get('text_year'),
				);

				if ($recurring_info['trial_status'] == 1) {
					$price = $this->currency->format($this->tax->calculate($recurring_info['trial_price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')));
					$trial_text = sprintf($this->language->get('text_trial_description'), $price, $recurring_info['trial_cycle'], $frequencies[$recurring_info['trial_frequency']], $recurring_info['trial_duration']) . ' ';
				} else {
					$trial_text = '';
				}

				$price = $this->currency->format($this->tax->calculate($recurring_info['price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')));

				if ($recurring_info['duration']) {
					$text = $trial_text . sprintf($this->language->get('text_payment_description'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				} else {
					$text = $trial_text . sprintf($this->language->get('text_payment_cancel'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				}

				$json['success'] = $text;
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
