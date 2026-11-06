<?php
class ControllerCommonSeoPro extends Controller {
	private $cache_data = null;

	public function __construct($registry) {
		parent::__construct($registry);
		$this->cache_data = $this->cache->get('seo_pro');
		if (!$this->cache_data) {
			$query = $this->db->query("SELECT LOWER(`keyword`) as 'keyword', `query` FROM " . DB_PREFIX . "url_alias ORDER BY url_alias_id");
			$this->cache_data = array();
			foreach ($query->rows as $row) {
				if (isset($this->cache_data['keywords'][$row['keyword']])){
					$this->cache_data['keywords'][$row['query']] = $this->cache_data['keywords'][$row['keyword']];
					continue;
				}
				$this->cache_data['keywords'][$row['keyword']] = $row['query'];
				$this->cache_data['queries'][$row['query']] = $row['keyword'];
			}
			$this->cache->set('seo_pro', $this->cache_data);
		}
	}

	public function index() {
		if (isset($this->request->get['route'], $this->request->get['product_id'])
			&& $this->request->get['route'] === 'common/home'
			&& (!is_scalar($this->request->get['product_id']) || filter_var($this->request->get['product_id'], FILTER_VALIDATE_INT, array('options' => array('min_range' => 1))) === false)) {
			$this->response->redirect('/');
		}

		// Add rewrite to url class
		if ($this->config->get('config_seo_url')) {
			$this->url->addRewrite($this);
		} else {
			return;
		}

		// Decode URL
		if (!isset($this->request->get['_route_'])) {
			$this->validate();
		} else {
			$route_ = $route = $this->request->get['_route_'];
			unset($this->request->get['_route_']);

			$route = trim(utf8_strtolower($route), '/');
			$manufacturing_route = !empty($this->cache_data['queries']['information/manufacturing']) ? trim(utf8_strtolower($this->cache_data['queries']['information/manufacturing']), '/') : '';
			$works_route = !empty($this->cache_data['queries']['product/our_project']) ? trim(utf8_strtolower($this->cache_data['queries']['product/our_project']), '/') : '';
			$blog_route = !empty($this->cache_data['queries']['blog/blog']) ? trim(utf8_strtolower($this->cache_data['queries']['blog/blog']), '/') : '';
			if ($blog_route && preg_match('~^' . preg_quote($blog_route, '~') . '/([^/]+)$~u', $route, $match) && isset($this->cache_data['keywords'][$match[1]])) {
				$category_query = explode('=', $this->cache_data['keywords'][$match[1]], 2);
				if ($category_query[0] === 'category_article_id') {
					$this->request->get['category_article_id'] = (int)$category_query[1];
					$this->request->get['route'] = 'blog/blog';
					return new Action($this->request->get['route']);
				}
				if ($category_query[0] === 'article_id') {
					$this->request->get['article_id'] = (int)$category_query[1];
					$this->request->get['route'] = 'blog/article';
					return new Action($this->request->get['route']);
				}
			}
			if (preg_match('~^o-studii/stati/([^/]+)$~u', $route, $match) && isset($this->cache_data['keywords'][$match[1]])) {
				$article_query = explode('=', $this->cache_data['keywords'][$match[1]], 2);
				if ($article_query[0] === 'article_id') {
					$this->request->get['article_id'] = (int)$article_query[1];
					$this->request->get['route'] = 'blog/article';
					return new Action($this->request->get['route']);
				}
			}
			if ($manufacturing_route && $route === $manufacturing_route) {
				$this->request->get['route'] = 'information/manufacturing';
				$this->validate();
				return new Action($this->request->get['route']);
			}
			if ($manufacturing_route && preg_match('~^' . preg_quote($manufacturing_route, '~') . '/([^/]+)$~u', $route, $match) && isset($this->cache_data['keywords'][$match[1]])) {
				$query = explode('=', $this->cache_data['keywords'][$match[1]], 2);
				if ($query[0] === 'manufacturing_category_id' && !empty($query[1])) {
					$this->request->get['category_id'] = (int)$query[1];
					$this->request->get['route'] = 'product/manufacturing_category';
					$this->validate();
					return new Action($this->request->get['route']);
				}
			}
			if ($works_route && $route === $works_route) {
				$this->request->get['route'] = 'product/our_project';
				$this->validate();
				return new Action($this->request->get['route']);
			}
			if ($works_route && preg_match('~^' . preg_quote($works_route, '~') . '/([^/]+)/([^/]+)$~u', $route, $match)
				&& isset($this->cache_data['keywords'][$match[1]], $this->cache_data['keywords'][$match[2]])) {
				$category_query = explode('=', $this->cache_data['keywords'][$match[1]], 2);
				$project_query = explode('=', $this->cache_data['keywords'][$match[2]], 2);
				if ($category_query[0] === 'category_project_id' && $project_query[0] === 'project_id') {
					$this->request->get['category_project_id'] = (int)$category_query[1];
					$this->request->get['project_id'] = (int)$project_query[1];
					$this->request->get['route'] = 'product/project';
					$this->validate();
					return new Action($this->request->get['route']);
				}
			}
			if ($works_route && preg_match('~^' . preg_quote($works_route, '~') . '/([^/]+)$~u', $route, $match) && isset($this->cache_data['keywords'][$match[1]])) {
				$category_query = explode('=', $this->cache_data['keywords'][$match[1]], 2);
				if ($category_query[0] === 'category_project_id') {
					$this->request->get['category_project_id'] = (int)$category_query[1];
					$this->request->get['route'] = 'product/our_project';
					$this->validate();
					return new Action($this->request->get['route']);
				}
			}

			$parts = explode('/', trim(utf8_strtolower($route), '/'));
			list($last_part) = explode('.', array_pop($parts));
			array_push($parts, $last_part);

			$rows = array();
			foreach ($parts as $keyword) {
				if (isset($this->cache_data['keywords'][$keyword])) {
					$rows[] = array('keyword' => $keyword, 'query' => $this->cache_data['keywords'][$keyword]);
				}
			}

			if (isset($this->cache_data['keywords'][$route])){
				$keyword = $route;
				$parts = array($keyword);
				$rows = array(array('keyword' => $keyword, 'query' => $this->cache_data['keywords'][$keyword]));
			}

			if (count($rows) == sizeof($parts)) {
				$queries = array();
				foreach ($rows as $row) {
					$queries[utf8_strtolower($row['keyword'])] = $row['query'];
				}

				reset($parts);
				foreach ($parts as $part) {
					if(!isset($queries[$part])) return false;
					$url = explode('=', $queries[$part], 2);

					if ($url[0] == 'project_id') {
						$this->request->get['project_id'] = $url[1];
					}
					if ($url[0] == 'article_id') {
						$this->request->get['article_id'] = $url[1];
					}

					if ($url[0] == 'category_id') {
						if (!isset($this->request->get['path'])) {
							$this->request->get['path'] = $url[1];
						} else {
							$this->request->get['path'] .= '_' . $url[1];
						}
					} elseif (count($url) > 1) {
						$this->request->get[$url[0]] = $url[1];
					}
				}
			} else {
				$this->request->get['route'] = 'error/not_found';
			}

			if (isset($this->request->get['product_id'])) {
				$this->request->get['route'] = 'product/product';
				if (!isset($this->request->get['path'])) {
					$path = $this->getPathByProduct($this->request->get['product_id']);
					if ($path) $this->request->get['path'] = $path;
				}
			} elseif (isset($this->request->get['path']) && $this->request->get['path'] === '59') {
				$this->request->get['route'] = 'product/categorysr';
			} elseif (isset($this->request->get['path'])) {
				$this->request->get['route'] = 'product/category';
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$this->request->get['route'] = 'product/manufacturer/info';
			} elseif (isset($this->request->get['project_id'])) {
				$this->request->get['route'] = 'product/project';
			} elseif (isset($this->request->get['article_id'])) {
				$this->request->get['route'] = 'blog/article';
            } elseif (isset($this->request->get['promo_single_id'])) {
                $this->request->get['route'] = 'promo/promo_single';
			} elseif (isset($this->request->get['information_id'])) {
				$this->request->get['route'] = 'information/information';
			} elseif(isset($this->cache_data['queries'][$route_])) {
					header($this->request->server['SERVER_PROTOCOL'] . ' 301 Moved Permanently');
					$this->response->redirect($this->cache_data['queries'][$route_]);
			} else {
				if (isset($queries[$parts[0]])) {
					$this->request->get['route'] = $queries[$parts[0]];
				}
			}

			$this->validate();

			if (isset($this->request->get['route'])) {
				return new Action($this->request->get['route']);
			}
		}
	}

	public function rewrite($link) {
		if (!$this->config->get('config_seo_url')) return $link;

		$seo_url = '';

		$component = parse_url(str_replace('&amp;', '&', $link));

		$data = array();
		parse_str($component['query'], $data);

		$route = $data['route'];
		unset($data['route']);

		if ($route === 'blog/article' && !empty($data['article_id'])) {
			$article_query = 'article_id=' . (int)$data['article_id'];
			if (!empty($this->cache_data['queries'][$article_query])) {
				unset($data['article_id']);
				$url = rtrim($component['scheme'] == 'https' ? $this->config->get('config_ssl') : $this->config->get('config_url'), '/')
					. '/o-studii/stati/' . rawurlencode($this->cache_data['queries'][$article_query]);
				if ($data) $url .= '?' . urldecode(http_build_query($data, '', '&amp;'));
				return $url;
			}
		}

		if ($route === 'information/manufacturing') {
			if (!empty($this->cache_data['queries'][$route])) {
				return rtrim($component['scheme'] == 'https' ? $this->config->get('config_ssl') : $this->config->get('config_url'), '/') . '/' . implode('/', array_map('rawurlencode', explode('/', trim($this->cache_data['queries'][$route], '/'))));
			}
		}

		if ($route === 'blog/blog' && !empty($data['category_article_id'])) {
			$category_query = 'category_article_id=' . (int)$data['category_article_id'];
			if (!empty($this->cache_data['queries']['blog/blog']) && !empty($this->cache_data['queries'][$category_query])) {
				unset($data['category_article_id']);
				$url = rtrim($component['scheme'] == 'https' ? $this->config->get('config_ssl') : $this->config->get('config_url'), '/')
					. '/' . trim($this->cache_data['queries']['blog/blog'], '/') . '/' . rawurlencode($this->cache_data['queries'][$category_query]);
				if ($data) $url .= '?' . urldecode(http_build_query($data, '', '&amp;'));
				return $url;
			}
		}

		if ($route === 'product/manufacturing_category' && !empty($data['category_id'])) {
			$query = 'manufacturing_category_id=' . (int)$data['category_id'];
			if (!empty($this->cache_data['queries'][$query])) {
				$keyword = $this->cache_data['queries'][$query];
				unset($data['category_id']);
				if (empty($this->cache_data['queries']['information/manufacturing'])) return $link;
				$url = rtrim($component['scheme'] == 'https' ? $this->config->get('config_ssl') : $this->config->get('config_url'), '/') . '/' . implode('/', array_map('rawurlencode', explode('/', trim($this->cache_data['queries']['information/manufacturing'], '/')))) . '/' . rawurlencode($keyword);
				if ($data) $url .= '?' . urldecode(http_build_query($data, '', '&amp;'));
				return $url;
			}
		}

		if ($route === 'product/our_project') {
			if (empty($this->cache_data['queries'][$route])) return $link;
			$base_url = rtrim($component['scheme'] == 'https' ? $this->config->get('config_ssl') : $this->config->get('config_url'), '/') . '/' . implode('/', array_map('rawurlencode', explode('/', trim($this->cache_data['queries'][$route], '/'))));
			if (empty($data['category_project_id'])) {
				if ($data) $base_url .= '?' . urldecode(http_build_query($data, '', '&amp;'));
				return $base_url;
			}
			$category_query = 'category_project_id=' . (int)$data['category_project_id'];
			if (!empty($this->cache_data['queries'][$category_query])) {
				$category_keyword = $this->cache_data['queries'][$category_query];
				unset($data['category_project_id']);
				$url = $base_url . '/' . rawurlencode($category_keyword);
				if ($data) $url .= '?' . urldecode(http_build_query($data, '', '&amp;'));
				return $url;
			}
		}

		if ($route === 'product/project' && !empty($data['project_id'])) {
			$project_id = (int)$data['project_id'];
			$category = $this->db->query("SELECT COALESCE(NULLIF(p.main_category_id, 0), MIN(pc.category_project_id)) AS category_project_id FROM " . DB_PREFIX . "our_project p LEFT JOIN " . DB_PREFIX . "our_project_cats pc ON (pc.project_id = p.id) WHERE p.id = '" . $project_id . "' GROUP BY p.id");
			$project_query = 'project_id=' . $project_id;
			if ($category->num_rows && !empty($category->row['category_project_id'])) {
				$category_query = 'category_project_id=' . (int)$category->row['category_project_id'];
				if (!empty($this->cache_data['queries'][$category_query]) && !empty($this->cache_data['queries'][$project_query])) {
					if (empty($this->cache_data['queries']['product/our_project'])) return $link;
					unset($data['project_id']);
					$url = rtrim($component['scheme'] == 'https' ? $this->config->get('config_ssl') : $this->config->get('config_url'), '/')
						. '/' . implode('/', array_map('rawurlencode', explode('/', trim($this->cache_data['queries']['product/our_project'], '/')))) . '/' . rawurlencode($this->cache_data['queries'][$category_query])
						. '/' . rawurlencode($this->cache_data['queries'][$project_query]);
					if ($data) $url .= '?' . urldecode(http_build_query($data, '', '&amp;'));
					return $url;
				}
			}
		}

		switch ($route) {
			case 'product/product':
				if (isset($data['product_id'])) {
					$tmp = $data;
					$data = array();
					if ($this->config->get('config_seo_url_include_path')) {
						$data['path'] = $this->getPathByProduct($tmp['product_id']);
						if (!$data['path']) return $link;
					}
					$data['product_id'] = $tmp['product_id'];
					if (isset($tmp['tracking'])) {
						$data['tracking'] = $tmp['tracking'];
					}
				}
				break;

			case 'product/category':
				if (isset($data['path'])) {
					$category = explode('_', $data['path']);
					$category = end($category);
					$data['path'] = $this->getPathByCategory($category);
					if (!$data['path']) return $link;
				}
				break;

			case 'product/product/review':
			case 'information/information/agree':
				return $link;
				break;

			default:
				break;
		}

		if ($component['scheme'] == 'https') {
			$link = $this->config->get('config_ssl');
		} else {
			$link = $this->config->get('config_url');
		}

		$link .= 'index.php?route=' . $route;

		if (count($data)) {
			$link .= '&amp;' . urldecode(http_build_query($data, '', '&amp;'));
		}

		$queries = array();
		if(!in_array($route, array('product/search'))) {
			foreach($data as $key => $value) {
				switch($key) {
					case 'product_id':
					case 'manufacturer_id':
					case 'category_id':
					case 'information_id':
					case 'order_id':
						$queries[] = $key . '=' . $value;
						unset($data[$key]);
						$postfix = 1;
						break;
					case 'project_id':
						$queries[] = 'product/our_project';
						$queries[] = $key . '=' . $value;
						unset($data[$key]);
						$postfix = 1;
						break;
					case 'article_id':
						$queries[] = 'blog/article';
						$queries[] = $key . '=' . $value;
						unset($data[$key]);
						$postfix = 1;
						break;

                    case 'promo_single_id':
                        $queries[] = 'promo/promo';
						$queries[] = $key . '=' . $value;
						unset($data[$key]);
						$postfix = 1;
						break;

					case 'path':
						$categories = explode('_', $value);
						foreach($categories as $category) {
							$queries[] = 'category_id=' . $category;
						}
						unset($data[$key]);
						break;

					default:
						break;
				}
			}
		}

		if(empty($queries)) {
			$queries[] = $route;
		}

		$rows = array();
		foreach($queries as $query) {
			if(isset($this->cache_data['queries'][$query])) {
				$rows[] = array('query' => $query, 'keyword' => $this->cache_data['queries'][$query]);
			}
		}

		if(count($rows) == count($queries)) {
			$aliases = array();
			foreach($rows as $row) {
				$aliases[$row['query']] = $row['keyword'];
			}
			foreach($queries as $query) {
				$seo_url .= '/' . implode('/', array_map('rawurlencode', explode('/', trim($aliases[$query], '/'))));
			}
		}

		if ($seo_url == '') return $link;

		$seo_url = trim($seo_url, '/');

		if ($component['scheme'] == 'https') {
			$seo_url = $this->config->get('config_ssl') . $seo_url;
		} else {
			$seo_url = $this->config->get('config_url') . $seo_url;
		}

		if (isset($postfix)) {
			$seo_url .= trim($this->config->get('config_seo_url_postfix'));
		} else {
			//$seo_url .= '/';
		}

		if(substr($seo_url, -2) == '//') {
			$seo_url = substr($seo_url, 0, -1);
		}

		if (count($data)) {
			$seo_url .= '?' . urldecode(http_build_query($data, '', '&amp;'));
		}

		return $seo_url;
	}

	private function getPathByProduct($product_id) {
		$product_id = (int)$product_id;
		if ($product_id < 1) return false;

		static $path = null;
		if (!isset($path)) {
			$path = $this->cache->get('product.seopath');
			if (!isset($path)) $path = array();
		}

		if (!isset($path[$product_id])) {
			$query = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . $product_id . "' ORDER BY main_category DESC LIMIT 1");

			$path[$product_id] = $this->getPathByCategory($query->num_rows ? (int)$query->row['category_id'] : 0);

			$this->cache->set('product.seopath', $path);
		}

		return $path[$product_id];
	}

	private function getPathByCategory($category_id) {
		$category_id = (int)$category_id;
		if ($category_id < 1) return false;

		static $path = null;
		if (!isset($path)) {
			$path = $this->cache->get('category.seopath');
			if (!isset($path)) $path = array();
		}

		if (!isset($path[$category_id])) {

			$max_level = 10;

			$sql = "SELECT CONCAT_WS('_'";
			for ($i = $max_level-1; $i >= 0; --$i) {
				$sql .= ",t$i.category_id";
			}
			$sql .= ") AS path FROM " . DB_PREFIX . "category t0";
			for ($i = 1; $i < $max_level; ++$i) {
				$sql .= " LEFT JOIN " . DB_PREFIX . "category t$i ON (t$i.category_id = t" . ($i-1) . ".parent_id)";
			}
			$sql .= " WHERE t0.category_id = '" . $category_id . "'";

			$query = $this->db->query($sql);

			$path[$category_id] = $query->num_rows ? $query->row['path'] : false;
			$this->cache->set('category.seopath', $path);
		}

		return $path[$category_id];
	}

	private function validate() {
		if (isset($this->request->get['route']) && in_array($this->request->get['route'], array('product/search', 'product/search/index'), true)) {
			$this->request->get['route'] = 'error/not_found';
			return;
		}
		
			if(isset($this->request->get['category_project_id'])){
			return;
		}
		
		if(isset($this->request->get['category_article_id'])){
			return;
		}
		
		if (isset($this->request->get['route']) && $this->request->get['route'] == 'error/not_found') {
			return;
		}
		if (ltrim($this->request->server['REQUEST_URI'], '/') =='sitemap.xml') {
			$this->request->get['route'] = 'feed/google_sitemap';
			return;
		}

		if(empty($this->request->get['route'])) {
			$this->request->get['route'] = 'common/home';
		}



		if (isset($this->request->server['HTTP_X_REQUESTED_WITH']) && strtolower($this->request->server['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
			return;
		}

		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$config_ssl = substr($this->config->get('config_ssl'), 0, $this->strpos_offset('/', $this->config->get('config_ssl'), 3) + 1);
			$url = str_replace('&amp;', '&', $config_ssl . ltrim($this->request->server['REQUEST_URI'], '/'));
			$seo = str_replace('&amp;', '&', $this->url->link($this->request->get['route'], $this->getQueryString(array('route')), true));

		} else {

			$config_url = substr($this->config->get('config_url'), 0, $this->strpos_offset('/', $this->config->get('config_url'), 3) + 1);
			$url = str_replace('&amp;', '&', $config_url . ltrim($this->request->server['REQUEST_URI'], '/'));
			$seo = str_replace('&amp;', '&', $this->url->link($this->request->get['route'], $this->getQueryString(array('route')), false));

		}


		if (rawurldecode($url) != rawurldecode($seo)) {
			header($this->request->server['SERVER_PROTOCOL'] . ' 301 Moved Permanently');

			$this->response->redirect($seo);
		}
	}

	private function strpos_offset($needle, $haystack, $occurrence) {
		// explode the haystack
		$arr = explode($needle, $haystack);
		// check the needle is not out of bounds
		switch($occurrence) {
			case $occurrence == 0:
				return false;
			case $occurrence > max(array_keys($arr)):
				return false;
			default:
				return strlen(implode($needle, array_slice($arr, 0, $occurrence)));
		}
	}

	private function getQueryString($exclude = array()) {
		if (!is_array($exclude)) {
			$exclude = array();
			}

		return urldecode(http_build_query(array_diff_key($this->request->get, array_flip($exclude))));
		}
	}
?>
