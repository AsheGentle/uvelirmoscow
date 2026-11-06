<?php
class ControllerLinksFvsTags extends Controller {
    //integrated in version fvs >= 63
    public function index() {
        $what_versi = (int)substr(str_replace('.', '', VERSION).'0', 0, 4);
        $status_module_fv = 'filter_vier_status'; $load_mod_fv = 'module/filter_vier'; $put_mod_fv = 'model_module_filter_vier'; $versi_tpl = 'default/template/'; $twig_tpl = '.tpl'; $ext_tpl = '.tpl';
        if($what_versi >= 3000) {$status_module_fv = 'module_filter_vier_status'; $load_mod_fv = 'extension/module/filter_vier'; $put_mod_fv = 'model_extension_module_filter_vier'; $twig_tpl = '.twig';}
        if($what_versi >= 2200) {$versi_tpl = ''; $ext_tpl = '';}
        
        $result_view = array('top' => '', 'bot' => '');
        $result = array();
        
        if($this->config->get($status_module_fv)) {
            //settings
            $flag_store = 1;
            //group
            $flag_group = 1;
            $flag_group_all = 1;
            $flag_group_animal = (!$flag_group) ? 0 : 1;
            $view_group = array();
            $view_not_group = array();
            //user_group
            $arr_group_top = array();
            $arr_group_bot = array();
            //image
            $flag_image = 0;
            $img_w = 300; $img_h = 200;
            //other
            $data_limit = 0;
            $data_sort = 'name';
            
            $hand_links_fv = array();
            $hand_links_fv_group = array();
            $is_product_page = false;
            $fix_plus_manuf = true;
            $route_hl = '';
            $route_id = null;
            $url_route = '';
            $args_hl = '';
            $secure_hl = true;
            $is_page = '';
            $layout_hl = 'top';
            
            $flag_tag = false;
            $new_versi = false;
            $set_fv = $this->config->get('filter_vier_set_main');
            $fv_vers = isset($set_fv['v_mod']) ? (int)$set_fv['v_mod'] : 0;
            if($fv_vers >= 63) {$new_versi = true;}
            if($fv_vers >= 64) {$flag_tag = true;}
            if(isset($this->request->get['route']) && is_string($route = $this->request->get['route'])) {
                if($route == 'product/category') {
                    $is_page = 'category';
                    if(isset($this->request->get['path']) && is_string($path_str = $this->request->get['path'])) {
                        $tec_path = explode('_', $path_str); $category_id = (int)array_pop($tec_path);
                    }
                    fix_product:
                    $route_hl = 'category_id';
                    $url_route = 'product/category';
                    if(isset($category_id)) {
                        $route_id = $category_id;
                        $args_hl = 'path='.$category_id;
                    }
                }
                elseif($route == 'product/manufacturer/info') {
                    $is_page = 'manufacturer';
                    if(isset($this->request->get['manufacturer_id'])) {
                        $manufacturer_id = (int)$this->request->get['manufacturer_id'];
                    }
                    fix_plus_manuf:
                    $fix_plus_manuf = false;
                    $route_hl = 'manufacturer_id';
                    $url_route = 'product/manufacturer';
                    if(isset($manufacturer_id)) {
                        $route_id = $manufacturer_id;
                        $args_hl = 'manufacturer_id='.$manufacturer_id;
                    }
                }
                elseif($route == 'product/special') {
                    $is_page = 'special';
                    $route_hl = 'special';
                    $route_id = '';
                    $url_route = 'product/special';
                    $args_hl = '';
                }
                elseif($route == 'product/product') {
                    $is_page = 'product';
                    $layout_hl = 'bot';
                    $is_product_page = true;
                    if(!isset($this->request->get['path'])) {
                        $order_main = '';
                        //for seo_pro
                        //$order_main = " ORDER BY `main_category` DESC";
                        $query_cat = $this->db->query("SELECT `category_id` FROM `".DB_PREFIX."product_to_category` WHERE `product_id` = ".(int)$this->request->get['product_id'].$order_main." LIMIT 1");
                        if($query_cat->num_rows) {$category_id = (int)$query_cat->row['category_id'];}
                    }
                    elseif(is_string($path_str = $this->request->get['path'])) {$tec_path = explode('_', $path_str); $category_id = (int)array_pop($tec_path);}
                    goto fix_product;
                }
            }
            //fix_control
            //if($flag_image) {$this->load->model('tool/image');}
            //if($is_page) {$this->load->language('product/'.$is_page);}else {$this->load->language('product/category');}
            $hand_links_fv_css = 'catalog/view/theme/default/template/links/css/fvs_tags.css';
            if(file_exists($hand_links_fv_css)) {$this->document->addStyle($hand_links_fv_css);}
            $hand_links_fv_js = 'catalog/view/theme/default/template/links/js/fvs_tags.js';
            if(is_readable($hand_links_fv_js)) {$result_view['hand_links_fv_js'] = $hand_links_fv_js;} else {$result_view['hand_links_fv_js'] = ''; $flag_group_animal = 0;}
            //main - !no red
            $result['top']['is_page'] = $result['bot']['is_page'] = $is_page;
            $result['top']['flag_group'] = $result['bot']['flag_group'] = $flag_group;
            //top
            $result['top']['flag_group_animal'] = $flag_group_animal;
            $result['top']['flag_image'] = $flag_image;
            $result['top']['title_blok'] = $this->language->get('title_blok_hand_links_fv');
            //bot
            $result['bot']['flag_group_animal'] = $flag_group_animal;
            $result['bot']['flag_image'] = $flag_image;
            $result['bot']['title_blok'] = $this->language->get('title_blok_hand_links_fv_bot');
            //user_group
            $arr_group = array();
            if($flag_group && !$is_product_page) {
                if($arr_group_bot) {
                    $data_groups = array(
                        'view_group' => $view_group,
                        'view_not_group' => $arr_group_bot,
        				'data_limit' => 0,
                    );
                    $arr_group_top = $this->getHandLinksGroups($data_groups);
                }
                if($arr_group_top || $arr_group_bot) {
                    $arr_group = array_unique(array_merge($arr_group_top, $arr_group_bot));
                    sort($arr_group); $view_group = $arr_group;
                }
            }
            //end user_group
            $data_links = array(
                'route' => $route_hl,
                'route_id' => $route_id,
                'data_sort' => $data_sort,
                'new_versi' => $new_versi,
                'flag_store' => $flag_store,
                'flag_group' => $flag_group,
                'flag_group_all' => $flag_group_all,
                'view_group' => $view_group,
                'view_not_group' => $view_not_group,
                'data_limit' => $data_limit,
                'flag_tag' => $flag_tag,
            );
            $hand_links = $this->getHandLinks($data_links);
            if($hand_links) {
                $url_page_orig = $this->url->link($url_route, $args_hl, $secure_hl);
                if(strpos($url_page_orig, '?') === false) {
                    $this->load->model($load_mod_fv);
                    $url_page = $this->{$put_mod_fv}->delPostfixSlashe($url_page_orig);
                    if(!$is_product_page) {
                        $url_plus = $this->{$put_mod_fv}->genUrlPlus();
                    }
                    $tec_id_hl = 0;
                    $tec_link_page = '';
                    if(!empty($url_plus)) {
                        $tec_link_page = $this->url->link($url_route, $args_hl.$url_plus, $secure_hl);
                        //>=v63
                        if($new_versi) {
                            $tec_id_hl = (int)$this->config->get('id_hand_landing_fv');
                        }
                        else {
                            //<v63
                            $tec_link_page = urldecode($tec_link_page);
                            if(strpos($tec_link_page, '?') !== false) {
                                $arr_req_uri = explode('?', $tec_link_page);
                                $tec_link_page = $arr_req_uri[0];
                            }
                        }
                    }
                    //fix_is_action_return
                    //if($tec_id_hl) {return $result_view;}
                    //$flag_short_link = 1;
                    //$after_slash = '/';
                    $flag_short_link = (($filter_vier_hl = $this->config->get('filter_vier_hl')) && isset($filter_vier_hl['short_link'])) ? 1 : 0;
                    $after_slash = (($filter_vier_url_set = $this->config->get('filter_vier_url_set')) && isset($filter_vier_url_set['after_slash'])) ? '/' : null;
                    foreach($hand_links as $colum) {
                        if(!$colum['name']) continue;
                        $link = ($flag_short_link && $colum['short_link']) ? $colum['short_link'] : $colum['link'];
                        $link = trim($link, '/');
                        $href = $url_page.'/'.$link.$after_slash;
                        $action_page_fv = false;
                        if($new_versi) {
                            if($tec_id_hl && ($tec_id_hl == $colum['id'])) {
                                action_page_fv:
                                $href = $url_page_orig;
                                $action_page_fv = true;
                            }
                        }
                        else {
                            //<v63
                            if($tec_link_page && ($tec_link_page == urldecode($href))) {
                                goto action_page_fv;
                            }
                        }
                        //fix_is_action_continue
                        //if($action_page_fv) {continue;}
                        if($flag_image) {
                            if(!empty($colum['image'])) {$image_url = $colum['image'];}
                            else {$image_url = 'placeholder.png';}
                            $image=$this->model_tool_image->resize($image_url, $img_w, $img_h);
                        }
                        else {$image = '';}
                        $hand_links_fv[] = array(
                            'id' => $colum['id'],
                            'name' => $colum['name'],
                            'href' => $href,
                            'thumb' => $image,
                            'action' => $action_page_fv,
                            'group_id' => $flag_group ? $colum['group_id'] : 0,
                            'name_group' => $flag_group ? $colum['name_group'] : '',
                        );
                    }
                    if($flag_group) {
                        foreach($hand_links_fv as $val) {
                            if(!isset($tec_action) && $val['action']) {
                                $tec_action = true;
                                $hand_links_fv_group[$val['group_id']]['action'] = $tec_action;
                            }
                            elseif(!isset($hand_links_fv_group[$val['group_id']]['action'])) {
                                $hand_links_fv_group[$val['group_id']]['action'] = false;
                            }
                            $hand_links_fv_group[$val['group_id']]['name_group'] = $val['name_group'];
                            $hand_links_fv_group[$val['group_id']]['hand_links_fv'][] = $val;
                        }
                    }
                }
            }
            if($is_product_page && $fix_plus_manuf) {
                if(isset($this->request->get['manufacturer_id'])) {
                    $manufacturer_id = (int)$this->request->get['manufacturer_id'];
                    goto fix_plus_manuf;
                }
            }
            //user_group
            if($arr_group) {
                $result['top']['links'] = ($flag_group && !empty($arr_group_top)) ? array_intersect_key($hand_links_fv_group, array_flip($arr_group_top)) : array();
                $result['bot']['links'] = ($flag_group && !empty($arr_group_bot)) ? array_intersect_key($hand_links_fv_group, array_flip($arr_group_bot)) : array();
                if(!isset($tec_action) && !empty($result['top']['links'])) {
                    $k_grp = key($result['top']['links']);
                    $result['top']['links'][$k_grp]['action'] = true;
                }
            }
            else {
                $result['bot']['links'] = array();
                $result[$layout_hl]['links'] = ($flag_group) ? $hand_links_fv_group : $hand_links_fv;
            }
            if(file_exists(DIR_TEMPLATE.'default/template/links/fvs_tags'.$twig_tpl)) {
                $data = array();
                //top
                $layout_hl = 'top';
                if(!empty($result[$layout_hl]['links'])) {
                    $data['layout_hl'] = $layout_hl;
                    $data['hand_links_fv'][$layout_hl] = $result[$layout_hl];
                    $result_view[$layout_hl] = $this->load->view($versi_tpl.'links/fvs_tags'.$ext_tpl, $data);
                }
                //bot
    			$layout_hl = 'bot';
                if(!empty($result[$layout_hl]['links'])) {
                    $data['layout_hl'] = $layout_hl;
                    $data['hand_links_fv'][$layout_hl] = $result[$layout_hl];
                    $result_view[$layout_hl] = $this->load->view($versi_tpl.'links/fvs_tags'.$ext_tpl, $data);
                }
    		}
        }
        return $result_view;
	}
    
    public function getHandLinks($data = array()) {
    	$tabl1 = 'filter_vier_hl';
    	$tabl2 = 'filter_vier_hl_lang';
    	$array_route = array('category_id','manufacturer_id','special');
    	$wheres = array();
        $sort_orders = array();
        $language_id = (int)$this->config->get('config_language_id');
        $query_str_dop = '';
        $poles = "fvhl.*";
    	if(!empty($data['route']) && in_array($data['route'], $array_route)) {
    		$wheres[] = "fvhl.`route` = '".$data['route']."'";
    		if(!empty($data['route_id'])) {
    			$wheres[] = "fvhl.`route_id` IN (".$data['route_id'].") ";
    		}
    	}
        if($data['new_versi']) {
            if($data['flag_store']) {
                $store_id = (int)$this->config->get('config_store_id');
                $wheres[] = "fvhl.`store_id` IN (-1, ".$store_id.")";
            }
            if($data['flag_group']) {
                if($data['flag_group_all']) {
                    $poles .= ",(SELECT agd.`name` FROM `".DB_PREFIX."attribute_group_description` agd WHERE agd.`attribute_group_id` = fvhl.`group_id` AND agd.`language_id` = ".$language_id." LIMIT 1) AS `name_group`";
                    $sort_orders[] = "`name_group`";
                }
                else {
                    $query_str_dop .= " LEFT JOIN `".DB_PREFIX."attribute_group` ag ON (ag.`attribute_group_id` = fvhl.`group_id`) ";
                    $query_str_dop .= " LEFT JOIN `".DB_PREFIX."attribute_group_description` agd ON (ag.`attribute_group_id` = agd.`attribute_group_id`) ";
                    //if(!$data['view_group']) {$wheres[] = "fvhl.`group_id` <> 0";}
                    $wheres[] = "agd.`language_id` = ".$language_id;
                    $poles .= ",agd.`name` AS `name_group`";
                    $sort_orders[] = "ag.`sort_order`, agd.`name`";
                }
            }
            $wheres[] = "fvhl.`status` = 1";
            if($data['flag_tag']) {
                $wheres[] = "fvhl.`tag` = 1";
            }
            if($data['view_group']) {
                $wheres[] = "fvhl.`group_id` IN (".implode(', ', $data['view_group']).")";
            } elseif($data['view_not_group']) {
                $wheres[] = "fvhl.`group_id` NOT IN (".implode(', ', $data['view_not_group']).")";
            }
            $sort_orders[] = "fvhl.`sort_order`";
        }
    	$query_str = "SELECT ".$poles.", (SELECT IF(fvhll.`name` <> '', fvhll.`name`, fvhll.`meta_h1`) `name_link` FROM `".DB_PREFIX.$tabl2."` AS fvhll WHERE fvhl.`id` = fvhll.`id` AND fvhll.`language_id` = ".$language_id." LIMIT 1) AS `name` FROM `".DB_PREFIX.$tabl1."` fvhl ";
        $query_str .= $query_str_dop;
        
        if($wheres) {
            $query_str .= " WHERE ".implode(" AND ", $wheres)." ";
        }
        if(!empty($data['data_sort'])) {
    		$sort_orders[] = $data['data_sort'];
    	}
        if($sort_orders) {
            $query_str .= " ORDER BY ".implode(", ", $sort_orders)." ";
        }
    	if(!empty($data['data_limit'])) {
    		$query_str .= " LIMIT ".(int)$data['data_limit'];
    	}
    	$query = $this->db->query($query_str);
    	return $query->rows;
    }
    
    public function getHandLinksGroups($data = array()) {
        $arr_group = array();
        $wheres = array();
        if($data['view_group']) {
            $wheres[] = "fvhl.`group_id` IN (".implode(', ', $data['view_group']).")";
        } elseif($data['view_not_group']) {
            $wheres[] = "fvhl.`group_id` NOT IN (".implode(', ', $data['view_not_group']).")";
        }
        $query_str = "SELECT DISTINCT fvhl.`group_id` FROM `".DB_PREFIX."filter_vier_hl` fvhl ";
        if($wheres) {
            $query_str .= " WHERE ".implode(" AND ", $wheres)." ";
        }
        $query_str .= " ORDER BY `group_id` ";
        if(!empty($data['data_limit'])) {
    		$query_str .= " LIMIT ".(int)$data['data_limit'];
    	}
        $query = $this->db->query($query_str);
        if($query->num_rows) {
            foreach($query->rows as $colum) {
                $arr_group[] = $colum['group_id'];
            }
        }
        return $arr_group;
    }
}
