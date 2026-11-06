<?php
class ControllerCommonHeader extends Controller {
	public function index() {
		$measure_sql = isset($this->request->get['header_sql']) && $this->request->get['header_sql'] === '1';
		if ($measure_sql) {
			$sql_before = (int)$this->db->query("SHOW SESSION STATUS LIKE 'Questions'")->row['Value'];
		}




        $routes = array(

            'information/information',

            'common/home'
        );






		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('analytics/' . $analytic['code']);
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		$header_contact_fields = array(
			'header_contacts_header_logo',
			'header_contacts_footer_logo',
			'header_contacts_phone',
			'header_contacts_work_weekdays',
			'header_contacts_work_weekend'
		);

		foreach ($header_contact_fields as $field) {
			$data[$field] = (string)$this->config->get($field);
		}
		$phone_digits = preg_replace('/\D+/', '', $data['header_contacts_phone']);
		if (strlen($phone_digits) === 11 && $phone_digits[0] === '8') {
			$phone_digits = '7' . substr($phone_digits, 1);
		}
		$data['header_contacts_phone_href'] = $phone_digits ? 'tel:+' . $phone_digits : '';
		$data['header_contacts_header_logo_url'] = $data['header_contacts_header_logo'] && is_file(DIR_IMAGE . $data['header_contacts_header_logo'])
			? $server . 'image/' . $data['header_contacts_header_logo']
			: $server . 'catalog/view/theme/uvelirmoscow_new/assets_new/images/design/logo.svg';

		$data['site_menu_sections'] = (array)$this->config->get('site_menu_sections');

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}
//        Scripts and styles in header
				//$this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/lazysizes.min.js','header','async');
				//$this->document->addScript('catalog/view/theme/uvelirmoscow/js/min/jquery-3.4.1.min.js','header');
				// $this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
        //$this->document->addStyle('catalog/view/javascript/slick/slick.css');
        // $this->document->addStyle('catalog/view/theme/uvelirmoscow/stylesheet/min/slick-theme.min.css');
				// $this->document->addStyle('catalog/view/theme/uvelirmoscow/stylesheet/min/bootstrap.min.css');
				//$this->document->addStyle('catalog/view/javascript/font-awesome/css/font-awesome.min.css');
				// $this->document->addStyle('catalog/view/theme/uvelirmoscow/stylesheet/min/all.min.css');
				// $this->document->addStyle('catalog/view/theme/uvelirmoscow/stylesheet/min/stylesheet.min.css');
				//$this->document->addStyle('catalog/view/theme/uvelirmoscow/stylesheet/style.css');
				// $this->document->addStyle('catalog/view/theme/uvelirmoscow/owlcarus2/libs/owlcarusel2/assets/owl.carousel.min.css');
				// $this->document->addStyle('catalog/view/theme/uvelirmoscow/owlcarus2/libs/owlcarusel2/assets/owl.theme.default.css');

        $data['column_header'] = $this->load->controller('common/column_header');



        $data['title'] = $this->document->getTitle();

        $data['ogtitle'] = $this->document->getogtitle();


        if(!$data['ogtitle']) {
            $data['ogtitle'] = $this->document->getTitle();
        }


		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['Ogdescription'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$request_uri = isset($this->request->server['REQUEST_URI']) ? html_entity_decode($this->request->server['REQUEST_URI'], ENT_QUOTES, 'UTF-8') : '/';
		$request_path = parse_url($request_uri, PHP_URL_PATH);
		parse_str((string)parse_url($request_uri, PHP_URL_QUERY), $request_query);
		$route = isset($this->request->get['route']) ? $this->request->get['route'] : '';
		$noindex_params = array('sort', 'order', 'erid', 'route', 'product_id', 'path');
		$is_login = $route === 'account/login' || $request_path === '/login';
		$data['robots'] = $is_login ? 'noindex, nofollow' :
			(array_intersect($noindex_params, array_keys(array_change_key_case($request_query, CASE_LOWER))) || in_array($route, array('account/wishlist', 'product/ocd_viewed'), true) ? 'noindex, follow' :
			(isset($request_query['page']) || preg_grep('/^utm_/i', array_keys($request_query)) ? 'index, follow' : ''));
		if ($data['robots'] && is_string($data['keywords']) && strpos($data['keywords'], '<meta name="robots"') !== false) {
			$data['keywords'] = '';
		}

		$clean_query = function ($query) {
			foreach ($query as $key => $value) {
				if (in_array(strtolower($key), array('sort', 'order', 'erid'), true) || stripos($key, 'utm_') === 0) unset($query[$key]);
			}
			return $query;
		};
		$data['links'] = array();
		$data['canonical'] = '';
		foreach ($this->document->getLinks() as $link) {
			if ($link['rel'] === 'canonical') {
				$data['canonical'] = html_entity_decode($link['href'], ENT_QUOTES, 'UTF-8');
			} else {
				$data['links'][] = $link;
			}
		}
		if (!$data['canonical'] && $request_query && !$is_login && $route !== 'error/not_found') {
			$query = $clean_query($request_query);
			if ($route && (basename($request_path) === 'index.php' || isset($request_query['route']))) {
				unset($query['route']);
				$data['canonical'] = html_entity_decode($this->url->link($route, http_build_query($query, '', '&')), ENT_QUOTES, 'UTF-8');
			} else {
				$data['canonical'] = rtrim($server, '/') . $request_path . ($query ? '?' . http_build_query($query, '', '&', PHP_QUERY_RFC3986) : '');
			}
		}
		if ($data['canonical']) {
			parse_str((string)parse_url($data['canonical'], PHP_URL_QUERY), $canonical_query);
			$cleaned_canonical_query = $clean_query($canonical_query);
			if ($route === 'product/category' && isset($request_query['page']) && filter_var($request_query['page'], FILTER_VALIDATE_INT, array('options' => array('min_range' => 2))) !== false) {
				$cleaned_canonical_query['page'] = (int)$request_query['page'];
			}
			if ($cleaned_canonical_query !== $canonical_query) {
				$data['canonical'] = preg_replace('/[?#].*$/', '', $data['canonical']) . ($cleaned_canonical_query ? '?' . http_build_query($cleaned_canonical_query, '', '&', PHP_QUERY_RFC3986) : '');
			}
		}
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

        $data['name'] = $this->config->get('config_name');

        $data['logo_jpg'] = $server . 'image/logo.jpg' ;





		$this->load->language('common/header');
		$data['og_url'] = (isset($this->request->server['HTTP']) ? HTTP_SERVER : HTTPS_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
		$data['og_image'] = $this->document->getOgImage();

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
			$data['wishlist_count'] = $this->model_account_wishlist->getTotalWishlist();
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
			$data['wishlist_count'] = count($this->session->data['wishlist']);
		}


		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_page'] = $this->language->get('text_page');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');
        $data['text_map'] = $this->language->get('text_map');
        $data['text_call'] = $this->language->get('text_call');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['register'] = $this->url->link('account/register', '', 'SSL');
		$data['login'] = $this->url->link('account/login', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$data['download'] = $this->url->link('account/download', '', 'SSL');
		$data['logout'] = $this->url->link('account/logout', '', 'SSL');
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');

		$status = true;

		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", str_replace(array("\r\n", "\r"), "\n", trim($this->config->get('config_robots'))));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}




        $data['close_rabota'] = false;
        if (strpos($_SERVER['REQUEST_URI'], 'nasha-rabota') !== false || strpos($_SERVER['REQUEST_URI'], 'nashi-raboty') !== false || strpos($_SERVER['REQUEST_URI'], 'project_id') !== false) {
            $data['close_rabota'] = true;
        }

        $params = [
            'limit','sort','order','filter','min_price','max_price','metal_ov','insertion_ov',
            'mfp','ybaip','erid','ved','srsltid','lr','search_source','search_domain',
            'gtm_latency','device','matchtype','adposition','product','openstat','ref',
            'gclid','fbclid','ymclid','utm_source','utm_medium','utm_campaign','utm_term',
            'utm_content','from','tracking','store_id'
        ];



        foreach ($params as $param) {
            if (isset($this->request->get[$param])) {
                $data['close_rabota'] = true;
            }
            }


        $data['json_d_image'] = $data['logo_jpg'];

        if($this->document->getJson_d_image() and $this->document->getJson_d_image()!='') {
            $data['json_d_image'] = $this->document->getJson_d_image();
        }



        if($this->request->get['route']=='product/search') {
            $data['close_rabota'] = true;

        }

        if((in_array($this->request->get['route'], $routes) and  isset($this->request->get['page'])))  {
            $data['close_rabota'] = true;
       //     $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');
           // return $this->load->controller('error/not_found');
        }




		$data['cart_items_count'] = $this->cart->countProducts();

		// Menu
		$this->load->model('catalog/category');
		$this->load->model('tool/image');
		$this->load->model('tool/menu_image');
		$resize_menu_image = function ($filename) {
			if (!$filename) return '';
			return strtolower(pathinfo($filename, PATHINFO_EXTENSION)) === 'webp'
				? $this->model_tool_menu_image->resizeWebp($filename)
				: $this->model_tool_image->resize($filename, 90, 90);
		};

		$this->load->model('catalog/product');

		$data['site_menu_items'] = (array)$this->config->get('site_menu_items');
		usort($data['site_menu_sections'], function($a, $b) {
			return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
		});
		$menu_sections = array();
		$menu_section_order = array();
		foreach ($data['site_menu_sections'] as $section_index => $section) {
			if (!empty($section['id'])) {
				$menu_sections[(int)$section['id']] = isset($section['name']) ? $section['name'] : '';
				$menu_section_order[(int)$section['id']] = $section_index;
			}
		}
		usort($data['site_menu_items'], function($a, $b) {
			return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
		});
		foreach ($data['site_menu_items'] as &$menu_item) {
			$menu_item += array('name' => '', 'link' => '', 'icon' => '', 'title' => '', 'text' => '', 'catalog' => 0, 'static' => 0, 'children' => array());
			$menu_item['link'] = html_entity_decode($menu_item['link'], ENT_QUOTES, 'UTF-8');
			$menu_item['icon_url'] = $menu_item['icon'] ? $this->model_tool_image->resize($menu_item['icon'], 24, 24) : '';
			usort($menu_item['children'], function($a, $b) {
				return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
			});
			foreach ($menu_item['children'] as &$menu_child) {
				$menu_child += array('name' => '', 'link' => '', 'image' => '');
				$menu_child['link'] = html_entity_decode($menu_child['link'], ENT_QUOTES, 'UTF-8');
				$menu_child['image_url'] = $resize_menu_image($menu_child['image']);
			}
			unset($menu_child);
		}
		unset($menu_item);

		$data['categories'] = array();
		$data['site_menu_catalog_categories'] = array();

		$categories_by_parent = array();
		foreach ($this->model_catalog_category->getMenuCategories() as $category) {
			$categories_by_parent[(int)$category['parent_id']][] = $category;
		}

		$catalog_categories = isset($categories_by_parent[59]) ? $categories_by_parent[59] : array();
		usort($catalog_categories, function($a, $b) {
			return (int)$a['menu_sort_order'] - (int)$b['menu_sort_order'];
		});

		foreach ($catalog_categories as $category) {
			$children_data = array();
			$children = isset($categories_by_parent[(int)$category['category_id']]) ? $categories_by_parent[(int)$category['category_id']] : array();
			usort($children, function($a, $b) use ($category, $menu_section_order) {
				if (!empty($category['menu_show_child_sections'])) {
					$a_section = !empty($a['menu_section_id']) && isset($menu_section_order[(int)$a['menu_section_id']]) ? $menu_section_order[(int)$a['menu_section_id']] : PHP_INT_MAX;
					$b_section = !empty($b['menu_section_id']) && isset($menu_section_order[(int)$b['menu_section_id']]) ? $menu_section_order[(int)$b['menu_section_id']] : PHP_INT_MAX;
					if ($a_section !== $b_section) return $a_section - $b_section;
				}
				return (int)$a['menu_sort_order'] - (int)$b['menu_sort_order'];
			});

			foreach ($children as $child) {
				$children2_data = array();
				$grandchildren = isset($categories_by_parent[(int)$child['category_id']]) ? $categories_by_parent[(int)$child['category_id']] : array();
				foreach ($grandchildren as $grandchild) {
					$filter_data = array(
						'filter_category_id' => $grandchild['category_id'],
						'filter_sub_category' => true
					);
					$children2_data[] = array(
						'name' => $grandchild['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'image' => $resize_menu_image($grandchild['menu_image']),
						'href' => $this->url->link('product/category', 'path=' . $child['category_id'] . '_' . $grandchild['category_id'])
					);
				}

				$filter_data = array(
					'filter_category_id' => $child['category_id'],
					'filter_sub_category' => true
				);
				$children_data[] = array(
					'children' => $children2_data,
					'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'image' => $resize_menu_image($child['menu_image']),
					'section_name' => !empty($child['menu_section_id']) && isset($menu_sections[(int)$child['menu_section_id']]) ? $menu_sections[(int)$child['menu_section_id']] : '',
					'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
				);
			}

			$data['site_menu_catalog_categories'][] = array(
				'id' => (int)$category['category_id'],
				'name' => $category['name'],
				'icon' => !empty($category['menu_icon']) ? $this->model_tool_image->resize($category['menu_icon'], 32, 32) : '',
				'show_sections' => !empty($category['menu_show_child_sections']),
				'children' => $children_data,
				'column' => $category['column'] ? $category['column'] : 1,
				'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}
		$data['categories2'] = $data['site_menu_catalog_categories'];
		if ($this->config->get('config_template') === 'default') {
			$root_categories = isset($categories_by_parent[0]) ? $categories_by_parent[0] : array();
			usort($root_categories, function($a, $b) {
				return (int)$a['menu_sort_order'] - (int)$b['menu_sort_order'];
			});
			foreach ($root_categories as $category) {
				if (empty($category['top'])) continue;
				$children_data = array();
				foreach (isset($categories_by_parent[(int)$category['category_id']]) ? $categories_by_parent[(int)$category['category_id']] : array() as $child) {
					$filter_data = array('filter_category_id' => $child['category_id'], 'filter_sub_category' => true);
					$children_data[] = array(
						'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
				$data['categories'][] = array(
					'name' => $category['name'],
					'children' => $children_data,
					'column' => $category['column'] ? $category['column'] : 1,
					'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}





        $this->load->model('catalog/information');
        $children_data = array();

        foreach ($this->model_catalog_information->getInformations() as $result) {
            if ($result['top']) {
                $data['categories'][] = array(
                    'name'     => $result['title'],
                    'children' => '',
                    'column'   =>  1,
                    'href'     => $this->url->link('information/information', 'information_id=' . $result['information_id'])
                );
            }
        }

		$data['categories'][] = array(
			'name'     => 'Наши работы',
			'children' => '',
			'column'   =>  1,
			'href'     => '/nasha-rabota'
		);

		$data['categories'][] = array(
			'name'     => 'Видео отзывы',
			'children' => '',
			'column'   =>  1,
			'href'     => '/otzivi-video'
		);

		$data['categories'][] = array(
			'name'     => 'Статьи',
			'children' => '',
			'column'   =>  1,
			'href'     => '/statya'
		)

        ;$data['categories'][] = array(
            'name'     => 'Акции',
            'children' => '',
            'column'   =>  1,
            'href'     => '/akciya'
        );

        $data['categories'][] = array(
            'name'     => 'Контакты',
            'children' => '',
            'column'   =>  1,
            'href'     => '/kontakti'
        );

        $data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');
		$data['callback'] = $this->load->controller('module/callback');

        $data['address'] = nl2br($this->config->get('config_address'));
        $data['open'] = nl2br($this->config->get('config_open'));

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}






		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			$output = $this->load->view($this->config->get('config_template') . '/template/common/header.tpl', $data);
		} else {
			$output = $this->load->view('default/template/common/header.tpl', $data);
		}

		if ($measure_sql) {
			$sql_after = (int)$this->db->query("SHOW SESSION STATUS LIKE 'Questions'")->row['Value'];
			$output .= "\n<!-- header.php SQL queries: " . ($sql_after - $sql_before - 1) . " -->";
		}

		return $output;
	}

}
