<?php

class ControllerModuleMpLastmodified extends Controller {
	public function index() {
		if (isset($this->request->get['route'])) {
			if (strpos($this->request->get['route'], 'common/home')!==false) {
				return $this->catalog();
			}
			elseif (strpos($this->request->get['route'], 'category')!==false) {
				$category_id = false;
				if (isset($this->request->get['path'])) {
					$cat = explode('_', $this->request->get['path']);
					$cnt = count($cat)-1;
					$category_id = (int)$cat[$cnt];
				}
				return $this->catalog($category_id);
			}
			elseif (strpos($this->request->get['route'], 'product/product')!==false) {
				$product_id = false;
				if (isset($this->request->get['product_id'])) {
					$product_id = (int)$this->request->get['product_id'];
				}
				return $this->product($product_id);
			}
			elseif (strpos($this->request->get['route'], 'information/information')!==false) {
				if (isset($this->request->get['information_id'])) {
					$information_id = (int)$this->request->get['information_id'];
				}
				return $this->information($information_id);
			}
			elseif (strpos($this->request->get['route'], 'blog/article')!==false) {
				if (isset($this->request->get['article_id'])) {
					$article_id = (int)$this->request->get['article_id'];
				}
				return $this->article($article_id);
			}
			elseif (strpos($this->request->get['route'], 'promo/promo_single')!==false) {
				if (isset($this->request->get['promo_single_id'])) {
					$promo_single_id = (int)$this->request->get['promo_single_id'];
				}
				return $this->promo($promo_single_id);
			}
		} else {
			return $this->catalog();
		}
	}
	
	public function catalog($catalog_id=false) {
		$this->load->model('mp_lastmodified/last_modified');
		$category_date = strtotime($this->model_mp_lastmodified_last_modified->getLastCategoryTime($catalog_id));
		$product_date = strtotime($this->model_mp_lastmodified_last_modified->getLastProductTime($catalog_id));
		$LastModified_unix = max(array($category_date,$product_date)); // время последнего изменения страницы
		$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
		if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));  
		if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
		if (isset($IfModifiedSince) && $IfModifiedSince >= $LastModified_unix) {
			header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified', true, 304);
			exit;
		}
		header('Last-Modified: '. $LastModified);
	}
	public function product	($product_id) {
		$this->load->model('mp_lastmodified/last_modified');
		$product_date = strtotime($this->model_mp_lastmodified_last_modified->getProductTime($product_id));
		$LastModified_unix = $product_date; // время последнего изменения страницы
		$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
		if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));  
		if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
		if (isset($IfModifiedSince) && $IfModifiedSince >= $LastModified_unix) {
			header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified', true, 304);
			exit;
		}
		header('Last-Modified: '. $LastModified);
	}
	public function information	($information_id) {
		$this->load->model('mp_lastmodified/last_modified');
		$information_date = strtotime($this->model_mp_lastmodified_last_modified->getInformationTime($information_id));
		$LastModified_unix = $information_date; // время последнего изменения страницы
		$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
		if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));  
		if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
		if (isset($IfModifiedSince) && $IfModifiedSince >= $LastModified_unix) {
			header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified', true, 304);
			exit;
		}
		header('Last-Modified: '. $LastModified);
	}
	public function article	($article_id) {
		$this->load->model('mp_lastmodified/last_modified');
		$article_date = strtotime($this->model_mp_lastmodified_last_modified->getArticleTime($article_id));
		$LastModified_unix = $article_date; // время последнего изменения страницы
		$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
		if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));  
		if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
		if (isset($IfModifiedSince) && $IfModifiedSince >= $LastModified_unix) {
			header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified', true, 304);
			exit;
		}
		header('Last-Modified: '. $LastModified);
	}
	public function promo($promo_id){
		$this->load->model('mp_lastmodified/last_modified');
		$promo_date = strtotime($this->model_mp_lastmodified_last_modified->getPromoTime($promo_id));
		$LastModified_unix = $promo_date; // время последнего изменения страницы
		$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
		if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));  
		if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
		if (isset($IfModifiedSince) && $IfModifiedSince >= $LastModified_unix) {
			header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified', true, 304);
			exit;
		}
		header('Last-Modified: '. $LastModified);
	}
}
