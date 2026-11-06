<?php
class ControllerModuleOcmegamenu extends Controller {
    protected $categoryInfo = array();
    protected $currentBanner = false;
    protected $mm_class = NULL;
    protected $menubarType = 0;
    protected $mobileDetect = false;



    public function getCategoryInfo($category_id) {
        if( $category_id > 0 && isset($this->categoryInfo[$category_id])) {
            return $this->categoryInfo[$category_id];
        } else {
            return array();
        }
    }

    public function getCategoriesByParentId( $parent_id = 0, $limit = 0) {
        $categories = array();
        $k = 0;
        foreach( $this->categoryInfo as $ci) {
            if( $k < $limit || $this->menubarType > 0 ) {
                if( $ci['parent_id'] == $parent_id) {
                    $categories[] = $ci;
                    $k++;
                }
            } else {
                break;
            }
        }
        return $categories;
    }

    protected function getChildData( $child, $path) {
        $filterData = array(
            'filter_category_id'  => $child['category_id'],
            'filter_sub_category' => true
        );
        $childData = array(
            'id'    => $child['category_id'],
            'href'  => $this->url->link('product/category', 'path=' . $path),
            'children' => array()
        );
        if($this->config->get('config_product_count')){
            $childData['name'] = $child['name'] .  ' (' . $this->model_catalog_product->getTotalProducts($filterData) . ')';
        }else {
            $childData['name'] = $child['name'];
        }
        return $childData;
    }

    protected function prepareChildData( &$childCategories, $ll2, $ll3) {
        if($childCategories){
            foreach ($childCategories as &$category) {
                $childData = array();
                $children = $this->getCategoriesByParentId($category['category_id'],$ll2);
                foreach ($children as $key=>$child) {
                    $childData[$key] = $this->getChildData($child, $category['category_id'] . '_' . $child['category_id']);
                    $children2 = $this->getCategoriesByParentId($child['category_id'],$ll3);
                    if($children2){
                        foreach ($children2 as $child2){
                            $childData[$key]['children'][] = $this->getChildData($child2, $child['category_id'] . '_' . $child2['category_id']);
                        }
                    }
                }
                $category['children'] = $childData;
            }
        }
    }

    protected function initClass () {
        if( !class_exists('ClassOcMegamenu'))
            require_once (DIR_SYSTEM . 'library/oc/oc_megamenu/classes/Class.php');
        $this->mm_class = new ClassOcMegamenu();
    }

    protected function prepareDataRow( $row, $lang_id, $setting = false) {
        $image = false;
        if($row['menubar_item_image'] && !empty($row['menubar_item_image'])) {
            if (isset($this->request->server['HTTPS']) &&
                (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
                $link = $this->config->get('config_ssl') . 'image/' . $row['menubar_item_image'];
            } else {
                $link = $this->config->get('config_url') . 'image/' . $row['menubar_item_image'];
            }
            $image = $link;
        } else {
            $image = 'no_image.png';
        }
        $description = false;
        $description_array = @json_decode($row['description'], true);
        if(isset($description_array[$lang_id]) && !empty($description_array[$lang_id])) {
            $description = $description_array[$lang_id];
        }
        $stiker_text = false;
        $stiker_text_array = @json_decode($row['menubar_item_stiker_text'], true);
        if(isset($stiker_text_array[$lang_id]) && !empty($stiker_text_array[$lang_id])) {
            $stiker_text = $stiker_text_array[$lang_id];
        }

        $content = @json_decode($row['content'], true);
        $this->mm_class->checkAndFillArray($content);
        if( isset($content['banner']) && $content['banner'] && $content['banner']['status'] == 1) {
            $this->currentBanner = $content['banner'];
            $this->currentBanner['image_src'] = $this->model_tool_image->resize($this->currentBanner['image'], $this->currentBanner['imgw'], $this->currentBanner['imgh']);;
        }
        $data = array(
            'name'               => @json_decode($row['name'], true),
            'description'        => $description,
            'link'               => $row['link'],
            'menubar_item_link_type'        => $row['menubar_item_link_type'],
            'menubar_item_image_type'       => $row['menubar_item_image_type'],
            'menubar_item_image'            => $image,
            'menubar_item_stiker'           => $row['menubar_item_stiker'],
            'menubar_item_stiker_text'      => $stiker_text,
            'menubar_item_stiker_color'     => $row['menubar_item_stiker_color'],
            'menubar_item_stiker_fontcolor' => $row['menubar_item_stiker_fontcolor'],
            'menubar_item_stiker_type'      => $row['menubar_item_stiker_type'],
            'menubar_item_stiker_kind'      => $row['menubar_item_stiker_kind'],
            'banner'                        => $this->currentBanner,
            'menubar_item_image_font'       => $row['menubar_item_image_font'],
            'menubar_item_class'            => $row['menubar_item_class'],
            'menubar_item_link_newwindow'   => $row['menubar_item_link_newwindow'],
            'menubar_item_position'         => $row['menubar_item_position'],
            'menubar_item_show_submenu'     => $row['menubar_item_show_submenu'],
            'size'                          => $content['size'],
            'submenu'            => ( $setting && isset($setting['menubar_type']) && $setting['menubar_type'] > 0) ? array($this->buildSubmenuRow($row)) : $this->buildSubmenu($row['id'], $setting)
        );
        if( isset($content['banner']) && $content['banner']) {
            $this->currentBanner = false;
        }
        return $data;
    }

    public function buildMenu($module_id, $setting = false) {
        $rows = $this->model_module_oc_megamenu->fillCategoryInfo();
        foreach( $rows as $category) {
            $this->categoryInfo[$category["category_id"]] = $category;
        }

        $data = array();
        $lang_id = $this->config->get('config_language_id');

        $rows = $this->model_module_oc_megamenu->getMenu($module_id);
        foreach ($rows as $row) {
            $data[] = $this->prepareDataRow($row, $lang_id, $setting);
        }

        if( !empty($data)) {
            foreach ($data as &$menu) {
                if (isset($menu['link']) && $menu['link']) {
                    $menu['link'] = trim($menu['link']);
                    $menu['route'] = '';
                    $menu['path'] = '';

                    $link = (isset($menu['link']) && ($menu['link'])) ? json_decode($menu['link'], true) : array();
                    if ($link && isset($link['category'])) {
                        if (isset($menu['menubar_item_link_type']) && $menu['menubar_item_link_type'] == 1) {
                            $menu['link'] = $this->url->link('product/category', 'path=' . $link['category']);
                            $menu['route'] = 'product/category';
                            $menu['path'] = $link['category'];
                        } else {
                            $menu['link'] = '';
                            if( isset( $link['url'])) {
                                if( is_array( $link['url']) && isset($link['url'][$lang_id]) && !empty($link['url'][$lang_id])) {
                                    $menu['link']  = $link['url'][$lang_id];
                                } else if( !is_array( $link['url']) && !empty( $link['url'])){
                                    $menu['link']  = $link['url'];
                                } else {
                                    $menu['link']  = '';
                                }
                            } else {
                                $menu['link']  = '';
                            }
                        }
                    } else
                        $menu['link'] = '';
                }
            }
        }

        return $data;
    }

    public function buildSubmenuRow($row) {
        $data = array(
            'name'               => @json_decode($row['name'], true),
            'menubar_item_width' => intval($row['menubar_item_width']),
            'menubar_item_type'  => $row['menubar_item_type'],
            'menubar_item_class' => $row['menubar_item_class'],
            'submenu'            => $this->buildSubmenu($row['id'])
        );

        $content = @json_decode($row['content'], true);
        $this->mm_class->checkAndFillArray($content);
        switch ($data['menubar_item_type']){
            case 0: $this->buildHtml($data, $content);
                break;
            case 1: $this->buildProduct($data, $content);
                break;
            case 2: $this->buildCategories($data, $content);
                break;
            case 3: $this->buildManufacture($data, $content);
                break;
            case 4: $this->buildImage($data, $content);
                break;
            case 5: $this->buildSubcategory($data, $content);
                break;
            case 6: $this->buildProductlist($data, $content);
                break;
            case 7:
                $mid = $content['menu']['module_id'];
                $data['submenu_menu_stub'] = (int)$content['menu']['stub'];
                $data['submenu_menu_dropdown'] = (int)$content['menu']['dropdown'];
                if( $data['submenu_menu_stub'] == 0) {
                    $data['submenu_menu_width'] = (int)$content['menu']['width'];
                    $localSettings = false;
                    $moduleRows = $this->model_module_oc_megamenu->getModuleById($mid);
                    if (!empty($moduleRows) && is_array($moduleRows)) {
                        $localSettings = @json_decode($moduleRows[0]['setting'], true);
                        $data['submenu_menu_configuration'] = $localSettings;
                        if( is_array( $data['submenu_menu_configuration'])) {
                            $data['submenu_menu_configuration']['menubar_uuid'] = uniqid();
                            $data['submenu_menu_configuration']['menubar_dynamicload'] = 0;

                            $lang_id = $this->config->get('config_language_id');
                            if(isset($localSettings['menubar_navigation'][$lang_id])) {
                                if(!empty($localSettings['menubar_navigation'][$lang_id])) {
                                    $menubar_navigation = $localSettings['menubar_navigation'][$lang_id];
                                }else{
                                    $menubar_navigation = '';
                                }
                            } else {
                                $menubar_navigation = '';
                            }
                            $data['submenu_menu_configuration']['menubar_navigation'] = $menubar_navigation;
                        }
                    }
                    $data['submenu_menu'] = $this->buildMenu($mid, $localSettings);
                } else {
                    $data['submenu_menu_width'] = 0;
                    $data['submenu_menu_configuration']['menubar_orientation'] = 1;
                }
                break;
            default:
                break;
        }
        return $data;
    }

    public function buildSubmenu($id, $setting = false) {
        $this->load->model('catalog/product');

        $output = array();
        $rows = $this->model_module_oc_megamenu->getSubmenu($id);

        if( $setting && isset( $setting['menubar_dynamicload']) && $setting['menubar_dynamicload'] == 1 ) {
            if( count( $rows) > 0 ) {
                return array('mmid' => $id);
            }
            return  array();
        }

        foreach ($rows as $row) {
            $output[] = $this->buildSubmenuRow( $row);
        }
        return $output;
    }

    protected function buildHtml(&$data, $content){
        $lang_id = $this->config->get('config_language_id');

        if(isset($content['html']['text'][$lang_id])) {
            $html = htmlspecialchars_decode($content['html']['text'][$lang_id]);
        } else {
            $html = false;
        }
        $data['html'] = $html;
    }

    protected function buildProduct(&$data, $content){
        $model = $this->registry->get('model_catalog_product');
        $model_image = $this->registry->get('model_tool_image');

        if(isset($content['product']['id'])) {
            $product = $model->getProduct($content['product']['id']);
            if(is_array($product)) {
                $product_link = $this->url->link('product/product', 'product_id=' . $content['product']['id']);

                if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                } else {
                    $price = false;
                }

                if ((float)$product['special']) {
                    $special = $this->currency->format($this->tax->calculate($product['special'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                } else {
                    $special = false;
                }
            } else {
                $product = false;
                $product_link = false;
                $price = false;
                $special = false;
            }
        } else {
            $product = false;
            $product_link = false;
            $price = false;
            $special = false;
        }
        if(isset($product['image'])) {
            $product_image = $model_image->resize($product['image'], $content['product']['imgw'], $content['product']['imgh']);
        } else {
            $product_image = false;
        }
        $data['product'] = array(
            'product_id'       => $content['product']['id'],
            'name'             => $product['name'],
            'description'      => utf8_substr(trim(strip_tags(html_entity_decode($product['description'], ENT_QUOTES, 'UTF-8'))), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
            'link'             => $product_link,
            'image'            => $product_image,
            'rating'           => $product['rating'],
            'price'            => $price,
            'special'          => $special,
            'show_image'       => $content['product']['show_image'],
            'show_description' => utf8_substr(trim(strip_tags(html_entity_decode($content['product']['show_description'], ENT_QUOTES, 'UTF-8'))), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
            'show_price'       => $content['product']['show_price'],
            'show_rating'      => $content['product']['show_rating'],
            'show_cart'        => $content['product']['show_cart'],
            'show_wishlist'    => $content['product']['show_wishlist'],
            'show_compare'     => $content['product']['show_compare'],
        );
    }

    protected function buildCategories(&$data, $content){
        if(isset($content['categories'])) {
            if(is_array($content['categories'])) {
                $imageArray = false;
                if( $content['categories']['show_image'] == 1) {
                    $imageArray = array(
                        'imgw' => $content['subcategory']['imgw'],
                        'imgh' => $content['subcategory']['imgh']
                    );
                }
                $categories = $this->calcCategories($content['categories'], $imageArray);
            } else {
                $categories = false;
            }
        } else {
            $categories = false;
        }
        $data['categories'] = $categories;
    }

    protected function buildManufactureProducts( $mid, $content ) {
        $model = $this->registry->get('model_catalog_product');
        $model_image = $this->registry->get('model_tool_image');

        $man_products = array();
        $mfilter = array(
            'filter_manufacturer_id' => $mid,
            'start'                  => 0,
            'limit'                  => $content['manufacture']['limit']
        );
        $products = $model->getProducts( $mfilter);
        foreach( $products as $pid => $product){

            if(is_array($product)) {
                $product_link = $this->url->link('product/product', 'product_id=' . $pid);

                if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format( $this->tax->calculate( $product['price'],
                                                                             $product['tax_class_id'],
                                                                             $this->config->get('config_tax')),
                                                      $this->session->data['currency']);
                } else {
                    $price = false;
                }

                if ((float)$product['special']) {
                    $special = $this->currency->format( $this->tax->calculate( $product['special'],
                                                                               $product['tax_class_id'],
                                                                               $this->config->get('config_tax')),
                                                        $this->session->data['currency']);
                } else {
                    $special = false;
                }
            } else {
                $product = false;
                $product_link = false;
                $price = false;
                $special = false;
            }

            if(isset($product['image'])) {
                $product_image = $model_image->resize( $product['image'], $content['manufacture']['imgw'], $content['manufacture']['imgh'] );
            } else {
                $product_image = false;
            }
            $man_products[] = array(
                'name'             => $product['name'],
                'description'      => utf8_substr(trim(strip_tags(html_entity_decode($product['description'], ENT_QUOTES, 'UTF-8'))), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
                'link'             => $product_link,
                'image'            => $product_image,
                'rating'           => $product['rating'],
                'price'            => $price,
                'special'          => $special,
                'show_image'       => $content['manufacture']['show_image'],
                'show_description' => $content['manufacture']['show_description'],
                'show_price'       => $content['manufacture']['show_price'],
                'show_rating'      => $content['manufacture']['show_rating'],
            );
        }
        return $man_products;
    }

    protected function buildManufacture(&$data, $content) {
        if(isset($content['manufacture']['id']) && $content['manufacture']['id']) {
            $manufactures =  array();
            $manufactures['type'] = $content['manufacture']['type'];
            $manufactures['show_title'] = (isset($content['manufacture']['show_title'])) ? $content['manufacture']['show_title'] : 1;
            $manufactures['rowCount'] = $this->calcItemRowCount($content['manufacture']['col']);
            $manufactures['subRowCount'] = $this->calcItemRowCount($content['manufacture']['subcol']);
            $manufactures['items'] =  array();
            foreach($content['manufacture']['id'] as $key => $mid){
                $manufacture['name'] = $content['manufacture']['name'][$key];
                if( $content['manufacture']['type'] == 1 || $content['manufacture']['type'] == 2) {
                    $this->load->model('catalog/manufacturer');
                    $manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($mid);
                    if ($manufacturer_info && isset( $manufacturer_info['image']) && is_file( DIR_IMAGE . $manufacturer_info['image'])) {
                        $manufacture['thumb'] = $this->model_tool_image->resize($manufacturer_info['image'], $content['manufacture']['imgw'], $content['manufacture']['imgh']);
                    } else {
                        $manufacture['thumb'] = $this->model_tool_image->resize('no_image.png', $content['manufacture']['imgw'], $content['manufacture']['imgh']);
                    }
                }
                $manufacture['link'] = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $mid);
                $manufacture['products'] = $this->buildManufactureProducts( $mid, $content);
                $manufactures['items'][] = $manufacture;
            }
        }
        else
            $manufactures = false;
        $data['manufactures'] = $manufactures;
    }

    protected function buildImage(&$data, $content) {
        if(isset($content['image']['link']) && $content['image']['link']) {
            if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
                $link = $this->config->get('config_ssl') . 'image/' . $content['image']['link'];
            } else {
                $link = $this->config->get('config_url') . 'image/' . $content['image']['link'];
            }
            $images['link'] = $link;
            $lang_id = $this->config->get('config_language_id');
            $images['url'] = '';
            if( !empty( $content['image']['url']) && isset( $content['image']['url'][$lang_id])) {
                $images['url'] = $content['image']['url'][$lang_id];
            }

            $images['show_title'] = $content['image']['show_title'];
        }
        else
            $images = false;
        $data['images'] = $images;
    }

    protected function buildSubcategory(&$data, $content){
        if(isset($content['subcategory'])  && isset($content['subcategory']['category'])) {
            $subcategory = array();
            $subcategoryChildren = array();

            $limit_level1 = (isset($content['subcategory']['limit_level_1']) && $content['subcategory']['limit_level_1'] ) ? $content['subcategory']['limit_level_1'] :0;
            $limit_level2 = (isset($content['subcategory']['limit_level_2']) && $content['subcategory']['limit_level_2'] ) ? $content['subcategory']['limit_level_2'] :0;
            $limit_level3 = (isset($content['subcategory']['limit_level_3']) && $content['subcategory']['limit_level_3'] ) ? $content['subcategory']['limit_level_3'] :0;
            $subcategory['show_title'] = (isset($content['subcategory']['show_title'])) ? $content['subcategory']['show_title'] : 0;
            $subcategory['show_image'] = (isset($content['subcategory']['show_image'])) ? $content['subcategory']['show_image'] : 0;

            $listCategories = (isset($content['subcategory']['category']) && $content['subcategory']['category']) ? @json_decode($content['subcategory']['category'], true) :  array();
            if($listCategories){
                foreach($listCategories as $category_id){
                    $categoryInfo = $this->getCategoryInfo($category_id);
                    $sub['name'] = (isset($categoryInfo['name'])) ? $categoryInfo['name'] : '';
                    $sub['href']  = $this->url->link('product/category', 'path=' . $category_id);

                    $image = empty($categoryInfo['image']) ? 'no_image.png' : $categoryInfo['image'];
                    $sub['thumb']    = $this->model_tool_image->resize($image, $content['subcategory']['imgw'], $content['subcategory']['imgh']);
                    if( $this->currentBanner) {
                        $sub['banner'] = $this->model_tool_image->resize($image, $this->currentBanner['imgw'], $this->currentBanner['imgh']);
                    }

                    $dataCategories = array();
                    $dataCategories['columns'] = (isset($content['subcategory']['columns'])) ? $content['subcategory']['columns'] : 1;
                    $dataCategories['submenu'] = (isset($content['subcategory']['submenu'])) ? $content['subcategory']['submenu'] : 0;
                    $dataCategories['submenu_columns'] = (isset($content['subcategory']['submenu_columns'])) ? $content['subcategory']['submenu_columns'] : 1;
                    $childCategories = $this->getCategoriesByParentId($category_id,$limit_level1);

                    $this->prepareChildData($childCategories, $limit_level2, $limit_level3);

                    $dataCategories['categories'] = $childCategories;

                    $imageArray = false;
                    if( $content['subcategory']['show_image'] == 2 || $content['subcategory']['show_image'] == 3) {
                        $imageArray = array(
                            'imgw' => $content['subcategory']['imgw'],
                            'imgh' => $content['subcategory']['imgh']
                        );
                    }
                    if(is_array($dataCategories)) {
                        $sub['categories']= $this->calcCategories($dataCategories, $imageArray);
                    } else {
                        $sub['categories'] = false;
                    }
                    $subcategoryChildren[] = $sub;
                }
                $subcategory['categories'] = $subcategoryChildren;
            }
        } else {
            $subcategory = false;
        }
        $data['subcategory'] = $subcategory;
    }

    protected function buildProductlist( &$data, $content) {
        if(isset($content['productlist']) && $content['productlist']) {
            $productlist =  array();
            $limit_product = ($content['productlist']['limit']) ? $content['productlist']['limit'] : 4;
            $type_product = ($content['productlist']['type']) ? $content['productlist']['type'] : 'new';
            $localData = array(
                'start'    => 0,
                'limit'    => $limit_product
            );

            $results = array();
            switch ($type_product) {
                case 0:
                    $results = $this->model_catalog_product->getLatestProducts($limit_product);
                    break;
                case 1:
                    $results = $this->model_catalog_product->getProductSpecials($localData);
                    break;
                case 2:
                    $results = $this->model_catalog_product->getBestSellerProducts($limit_product);
                    break;
                case 3:
                    $results = $this->model_catalog_product->getPopularProducts($limit_product);
                    break;
                default:
                    $results = $this->model_catalog_product->getProducts($localData);
            }
            $productlist['show_title'] = (isset($content['productlist']['show_title'])) ? $content['productlist']['show_title'] : 0;
            $productlist['show_description'] = (isset($content['productlist']['show_description'])) ? $content['productlist']['show_description'] : 0;
            $productlist['show_price'] = (isset($content['productlist']['show_price'])) ? $content['productlist']['show_price'] : 1;
            $productlist['col'] = (isset($content['productlist']['col'])) ? $content['productlist']['col'] : 3;
            if($results){
                foreach($results as $key=>$result){
                    if ($result['image']) {
                        $image = $this->model_tool_image->resize($result['image'], $content['productlist']['imgw'], $content['productlist']['imgh']);
                    } else {
                        $image = $this->model_tool_image->resize('no_image.png', $content['productlist']['imgw'], $content['productlist']['imgh']);
                    }

                    if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                    } else {
                        $price = false;
                    }

                    if ((float)$result['special']) {
                        $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
                    } else {
                        $tax = false;
                    }

                    $productlist['products'][] = array(
                        'product_id'       => $result['product_id'],
                        'rating'           => $result['rating'],
                        'link'             => $this->url->link('product/product', '&product_id=' . $result['product_id']),
                        'image'            => $image,
                        'name'             => $result['name'],
                        'description'      => utf8_substr(trim(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'))), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
                        'price'            => $price,
                        'special'          => $special,
                        'show_image'       => $content['productlist']['show_image'],
                        'show_description' => $content['productlist']['show_description'],
                        'show_price'       => $content['productlist']['show_price'],
                        'show_rating'      => $content['productlist']['show_rating'],
                        'show_cart'        => $content['productlist']['show_cart'],
                        'show_wishlist'    => $content['productlist']['show_wishlist'],
                        'show_compare'     => $content['productlist']['show_compare'],
                    );
                }
            }
        }
        else
            $productlist = false;
        $data['productlist'] = $productlist;
    }

    protected function calcCategoryPath($cid){
        $categoryInfo = $this->getCategoryInfo($cid);
        if(isset($categoryInfo['category_id']) && is_array($categoryInfo)) {
            $path = $categoryInfo['category_id'];

            if($categoryInfo['parent_id'] > 0){
                $ppath = $this->calcCategoryPath($categoryInfo['parent_id']);
                if( !empty($ppath) )
                    $path =  $ppath . '_' . $path;
                else
                    $path =  $categoryInfo['parent_id'] . '_' . $path;
            }
        }else{
            $path=$cid;
        }
        return $path;
    }

    protected function calcItemRowCount($columns){
        $rowFluidCount = 12;
        if(!($columns > 0 && $columns < 7)) { $columns = 1; }
        for( $n = 1; $n < 7; ++$n){
            if($columns == $n)
                $rowCount = ceil($rowFluidCount / $n);
        }
        return $rowCount;
    }

    protected function calcCategoryDataRow($category, $columns, $submenu, $imageArray = false){
        if( $category['id'] != -1) {
            $categoryInfo = $this->getCategoryInfo($category['id']);
        } else {
            $lid = $this->config->get('config_language_id');
            $categoryInfo = array(
                'category_id' => -1,
                'name'        =>  ( is_array( $category['name']) && isset( $category['name'][$lid])) ? $category['name'][$lid]: $category['name'],
                'image'       =>  ( isset( $category['image'])) ? $category['image'] : ''
            );
        }

        $dataRow=array();
        $currentLink = '';
        if(isset($categoryInfo['category_id']) && is_array($categoryInfo)){
            if( $category['id'] != -1) {
                $path = $this->calcCategoryPath($categoryInfo['category_id']);
                $link = $this->url->link('product/category', 'path=' . $path);
                $dataRow['link'] = $link;

                if( isset($this->request->get['path'])) {
                    $currentLink = $this->url->link('product/category', 'path=' . $this->request->get['path']);
                }
            } else if( isset( $category['href'])) {
                $lid = $this->config->get('config_language_id');
                $dataRow['link'] = ( is_array( $category['href']) && isset( $category['href'][$lid])) ? $category['href'][$lid]: $category['href'];

                $currentLink = $this->request->server['REQUEST_URI'];
            }
            $dataRow['name'] = $categoryInfo['name'];
            if( isset($dataRow['link']) && $dataRow['link'] == $currentLink) {
                $dataRow['isCategoryPath'] = true;
            }

            if( isset($imageArray) && $imageArray) {
                $image = empty($categoryInfo['image']) ? 'no_image.png' : $categoryInfo['image'];
                $dataRow['thumb'] = $this->model_tool_image->resize($image, $imageArray['imgw'], $imageArray['imgh']);
            }

            if( $this->currentBanner) {
                $image = empty($categoryInfo['image']) ? 'no_image.png' : $categoryInfo['image'];
                $dataRow['banner'] = $this->model_tool_image->resize($image, $this->currentBanner['imgw'], $this->currentBanner['imgh']);
            }

            if(isset($category['children']) && !empty($category['children'])){
                $dataRow['children'] = $this->calcCategoriesChildren( $category['children'], $columns, $submenu);
                if( isset( $dataRow['children']['isCategoryPath']) && $dataRow['children']['isCategoryPath']) {
                    $dataRow['isCategoryPath'] = true;
                }
            }
        }
        return $dataRow;
    }

    public function calcCategories($array = array(), $imageArray = false) {
        if( !is_array($array['categories']))
            return false;

        $data = array();
        $data['submenu'] = $array['submenu'];
        $data['columns'] = $array['columns'];
        $data['rowCount'] = $this->calcItemRowCount($array['columns']);

        $countCats =  count($array['categories']);
        $countRows = ceil($countCats / $array['columns']);
        $data['dataMenu'] = array();
        for( $col = 0, $counter = 0; $col < $array['columns']; $col++) {
            $dataCol=array();
            for ($row = 0; $row < $countRows; $row++, $counter++) {
                $idx = ($row * $array['columns']) + $col;
                if( $this->mobileDetect) {
                    $idx = $counter;
                }
                if( $idx < $countCats) {
                    if (isset($array['categories'][$idx]['id'])) {
                        $category = $array['categories'][$idx];
                        $dataRow = $this->calcCategoryDataRow($category, $array['submenu_columns'], $array['submenu'], $imageArray);
                        $dataCol[] = $dataRow;

                        if (isset($dataRow['isCategoryPath']) && $dataRow['isCategoryPath'] && !isset($data['isCategoryPath'])) {
                            $data['isCategoryPath'] = true;
                        }
                    }
                }
            }
            $data['dataMenu'][] = $dataCol;
        }
        return $data;
    }

    public function calcCategoriesChildren($array, $columns, $submenu) {
        $data = array();
        $data['submenu'] = $submenu;
        $data['columns'] = $columns;
        $data['rowCount'] = $this->calcItemRowCount($data['columns']);

        $countCats =  count($array);
        $countRows = ceil($countCats / $columns);
        $data['dataMenu'] = array();
        for( $col = 0, $counter = 0; $col < $columns; $col++) {
            $dataCol=array();
            for ($row = 0; $row < $countRows; $row++, $counter++) {
                $idx = ($row * $columns) + $col;
                if( $this->mobileDetect) {
                    $idx = $counter;
                }
                if( $idx < $countCats) {
                    if (isset($array[$idx]['id'])) {
                        $category = $array[$idx];
                        $dataRow = $this->calcCategoryDataRow($category, $columns, $submenu);
                        $dataCol[] = $dataRow;

                        if (isset($dataRow['isCategoryPath']) && $dataRow['isCategoryPath'] && !isset($data['isCategoryPath'])) {
                            $data['isCategoryPath'] = true;
                        }
                    }
                }
            }
            $data['dataMenu'][] = $dataCol;
        }
        return $data;
    }

    protected function initLangiages() {
        $this->load->language('module/oc_megamenu');
        $data = array();
        $data['text_menubar_home_title']   = $this->language->get('text_menubar_home_title');
        $data['text_menubar_navigation']   = $this->language->get('text_menubar_navigation');
        $data['text_more_category']        = $this->language->get('text_more_category');
        $data['text_close_category']       = $this->language->get('text_close_category');
        $data['text_menubar_cart']         = $this->language->get('text_menubar_cart');
        $data['text_menubar_wishlist']     = $this->language->get('text_menubar_wishlist');
        $data['text_menubar_compare']      = $this->language->get('text_menubar_compare');

        return $data;
    }

    protected function getThemeDirectory(){
        if( version_compare( VERSION, '3.0.0.0', '<')) {
            $dtPath = DIR_TEMPLATE;
        } else {
            $dtPath = '';
        }
        if ($this->config->get('config_theme') == 'theme_default') {
            $theme_directory = $dtPath . $this->config->get('theme_default_directory');
        } else {
            if( version_compare( VERSION, '2.2.0.0', '<')) {
                $theme_directory = $dtPath . $this->config->get('config_template');
            } else {
                $theme_directory = $dtPath . $this->config->get('config_theme');
            }
        }
        return $theme_directory;
    }

    protected function buildSubmenuData( $rows, $settings) {
        $this->load->model('tool/image');
        $this->initClass();

        $cats = $this->model_module_oc_megamenu->fillCategoryInfo();
        foreach( $cats as $category) {
            $this->categoryInfo[$category["category_id"]] = $category;
        }

        $data = $this->initLangiages();
        $data['theme_directory'] = $this->getThemeDirectory();
        $data['lang_id'] = $this->config->get('config_language_id');
        if( !empty( $rows) && is_array( $rows)) {
            $data['configuration'] = $settings;
            $data['row'] = $this->prepareDataRow( $rows[0], $data['lang_id']);
        }
        if( isset( $this->request->get['route']))
            $data['route']  = $this->request->get['route'];
        else
            $data['route']  = '';

        if( isset( $this->request->get['path']))
            $data['path']   = $this->request->get['path'];
        else
            $data['path']   = '';
        $data['menu'] = array();

        $tplPath = '';
        $tplExt = '';
        if( version_compare( VERSION, '2.2.0.0', '<')) {
            $tplPath = $this->config->get('config_template') . '/template/';
            $tplExt = '.tpl';
        } else if( version_compare( VERSION, '2.3.0.0', '<')) {
            $tplPath = '';
            $tplExt = '.tpl';
        }
        return $this->load->view($tplPath . 'module/oc_megamenu/builder_submenu' . $tplExt, $data);
    }

    public function submenuIndex() {
        $this->load->model('module/oc_megamenu');

        $mmid = $this->request->get['mmid'];
        $rows = $this->model_module_oc_megamenu->getMenuById( $mmid);
        $settings = array();
        $moduleRows = $this->model_module_oc_megamenu->getModuleById($rows[0]['module_id']);
        if( !empty($moduleRows) && is_array( $moduleRows)) {
            $this->initClass();
            $setting =  array_merge( $this->mm_class->initMenu(), @json_decode($moduleRows[0]['setting'], true));
        }

        $menubar_cacheuse  = (int)$setting['menubar_cacheuse'];
        $menubar_cachetime = (int)$setting['menubar_cachetime'];
        $cacheDir = DIR_CACHE . 'oc/Megamenu/';

        if( !file_exists( $cacheDir))
            mkdir( $cacheDir, 0777, true);

        if( !class_exists('Cache_Lite'))
            require_once ( DIR_SYSTEM . 'library/oc/oc_megamenu/Cache_Lite/Lite.php');

        $options = array(
            'cacheDir' => $cacheDir,
            'lifeTime' => $menubar_cachetime
        );

        $Cache_Lite = new Cache_Lite( $options);
        if( $menubar_cacheuse){
            $this->hash = md5( serialize( $rows[0]) . $this->config->get('config_language_id') . $this->session->data['currency']);
            $_data = $Cache_Lite->get( $this->hash);
            if( !$_data) {
                $_data = $this->buildSubmenuData( $rows, $setting);
                $Cache_Lite->save( $_data);
            }
        }else{
            $_data = $this->buildSubmenuData( $rows, $setting);

            if( file_exists( $cacheDir))
                $Cache_Lite->_cleanDir( $cacheDir);
        }
        $this->response->setOutput( $_data);
    }

    private function minifyBuffer( $buffer) {
        $search = array(
            '/\>[^\S ]+/s',
            '/[^\S ]+\</s',
            '/(\s)+/s',
        );

        $replace = array(
            '>',
            '<',
            '\\1',
        );
        return preg_replace($search, $replace, $buffer);
    }

    public function index($setting) {



        $this->initClass();
        if( !$this->mm_class->isShow($this, $setting)) return '';

        $setting =  array_merge( $this->mm_class->initMenu(), $setting);
        $this->mm_class->detectMobile($setting);

        if( isset($setting['mobile']) && isset( $setting['mobile']['isMobile']) && $setting['mobile']['isMobile'] != 0) {
            $this->mobileDetect = true;
        }
        if( !$this->mobileDetect) {
//            $this->document->addScript('catalog/view/javascript/oc_megamenu/oc_megamenu-min.js');
            $this->document->addScript('catalog/view/javascript/oc_megamenu/accordion/oc_accordionmenu.js');
            $this->document->addScript('catalog/view/javascript/oc_megamenu/dropdown/jquery.menu-aim.js');
            $this->document->addScript('catalog/view/javascript/oc_megamenu/dropdown/oc_megamenu.js');
            $this->document->addScript('catalog/view/javascript/oc_megamenu/slider/oc_slidermenu.js');
            $this->document->addStyle('catalog/view/javascript/oc_megamenu/oc_megamenu-min.css');
        } else {
            $mobileType = $setting['mobile']['type'];
            $this->document->addScript('catalog/view/javascript/oc_megamenu/dropdown/oc_megamenu-mobile.js');
            if( $mobileType == 0) {
                $this->document->addScript('catalog/view/javascript/oc_megamenu/accordion/oc_accordionmenu.js');
            } else {
                $this->document->addScript('catalog/view/javascript/oc_megamenu/slider/oc_slidermenu.js');
            }
            $this->document->addStyle('catalog/view/javascript/oc_megamenu/oc_megamenu-mobile-min.css');
        }

        $menubar_cacheuse  = (int)$setting['menubar_cacheuse'];
        $menubar_cachetime = (int)$setting['menubar_cachetime'];
        $cacheDir = DIR_CACHE.'oc/Megamenu/';

        if(!file_exists($cacheDir))
            mkdir( $cacheDir, 0777, true);

        if (!class_exists('Cache_Lite'))
            require_once (DIR_SYSTEM . 'library/oc/oc_megamenu/Cache_Lite/Lite.php');

        $options = array(
            'cacheDir' => $cacheDir,
            'lifeTime' => $menubar_cachetime
        );

        $tplPath = '';
        $tplExt = '';
        if( version_compare( VERSION, '2.2.0.0', '<')) {
            $tplPath = $this->config->get('config_template') . '/template/';
            $tplExt = '.tpl';
        } else if( version_compare( VERSION, '2.3.0.0', '<')) {
            $tplPath = '';
            $tplExt = '.tpl';
        }
        $Cache_Lite = new Cache_Lite($options);
        if ($menubar_cacheuse){
            $this->hash = md5( serialize($setting).$this->config->get('config_language_id').$this->session->data['currency']);
            $_data = $Cache_Lite->get($this->hash);

            if (!$_data) {
                $data = $this->buildData($setting);
                $_data = $this->load->view($tplPath . 'module/oc_megamenu/default' . $tplExt, $data);
                $Cache_Lite->save($_data);
                return  $_data;
            } else {
                return  $_data;
            }
        }else{
            $data = $this->buildData($setting);

            if(file_exists($cacheDir))
                $Cache_Lite->_cleanDir($cacheDir);

            return $this->load->view($tplPath . 'module/oc_megamenu/default' . $tplExt, $data);
        }
    }

    public function buildData($setting) {
        $this->load->model('module/oc_megamenu');
        $this->load->model('tool/image');

        $data = array();
        $data = $this->initLangiages();

        $module_id = 0;
        if( isset($setting['module_id']) && $setting['module_id']) {
            $module_id = $setting['module_id'];
        }
        $lang_id = $this->config->get('config_language_id');
        $data['lang_id'] = $lang_id;
        if($setting['menubar_vertical_item_count'] == ""){
            $setting['menubar_vertical_item_count'] = 16;
        }
        if(isset($setting['menubar_home_title'][$lang_id])) {
            if(!empty($setting['menubar_home_title'][$lang_id])) {
                $setting['menubar_home_title'] = $setting['menubar_home_title'][$lang_id];
            }else{
                $setting['menubar_home_title'] = $data['text_menubar_home_title'];
            }
        } else {
            $setting['menubar_home_title'] = $data['text_menubar_home_title'];
        }
        if(isset($setting['menubar_navigation'][$lang_id])) {
            if(!empty($setting['menubar_navigation'][$lang_id])) {
                $setting['menubar_navigation'] = $setting['menubar_navigation'][$lang_id];
            }else{
                $setting['menubar_navigation'] = $data['text_menubar_navigation'];
            }
        } else {
            $setting['menubar_navigation'] = $data['text_menubar_navigation'];
        }
        if(isset($setting['menubar_title'][$lang_id])) {
            if(!empty($setting['menubar_title'][$lang_id])) {
                $setting['menubar_title'] = $setting['menubar_title'][$lang_id];
            } else {
                $setting['menubar_title'] = '';
            }
        } else {
            $setting['menubar_title'] = '';
        }

        $data['configuration'] = array(
            'menubar_uuid'                => uniqid(),
            'menubar_class'               => $setting['menubar_class'],
            'menubar_home_title'          => $setting['menubar_home_title'],
            'menubar_navigation'          => $setting['menubar_navigation'],
            'menubar_title'               => $setting['menubar_title'],
            'menubar_title_show'          => $setting['menubar_title_show'],
            'menubar_orientation'         => $setting['menubar_orientation'],
            'menubar_type'                => $setting['menubar_type'],
            'menubar_expand'              => $setting['menubar_expand'],
            'menubar_home_link'           => $setting['menubar_home_link'],
            'menubar_vertical_item_count' => $setting['menubar_vertical_item_count'],
            'menubar_animation'           => $setting['menubar_animation'],
            'menubar_animation_time'      => $setting['menubar_animation_time'],
            'menubar_lazyload'            => $setting['menubar_lazyload'],
            'menubar_dynamicload'         => $setting['menubar_dynamicload'],
            'mobile'                      => $setting['mobile'],
        );

        if( isset( $setting['menubar_type']) && $setting['menubar_type']) {
            $this->menubarType = $setting['menubar_type'];
        }

        if( isset($setting['mobile'])) {
            if($setting['mobile']['isShowLogo']) {
                $data['site_name'] = $this->config->get('config_name');
                if ($this->request->server['HTTPS']) {
                    $server = $this->config->get('config_ssl');
                } else {
                    $server = $this->config->get('config_url');
                }
                if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
                    $data['logo'] = $server . 'image/' . $this->config->get('config_logo');
                } else {
                    $data['logo'] = '';
                }
            }
            if($setting['mobile']['isShowSearch']) {
                $data['search'] = $this->load->controller('common/search');
            }
            if($setting['mobile']['isShowCurrency']) {
                $data['currency'] = $this->load->controller('common/currency');
            }
            if($setting['mobile']['isShowLanguage']) {
                $data['language'] = $this->load->controller('common/language');
            }
        }

        $data['theme_directory'] = $this->getThemeDirectory();
        $data['menu'] = $this->buildMenu($module_id, $setting);
        $data['home_link'] = $this->url->link('common/home');

        if( isset( $this->request->get['route']))
            $data['route']  = $this->request->get['route'];
        else
            $data['route']  = '';

        if( isset( $this->request->get['path']))
            $data['path']   = $this->request->get['path'];
        else
            $data['path']   = '';

        $this->language->load('common/header');

        return $data;
    }
}
?>
