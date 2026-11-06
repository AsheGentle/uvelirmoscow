<?php
class ControllerCommonSearch extends Controller {
	public function index() {
		if (isset($this->request->get['route']) && in_array($this->request->get['route'], array('common/search', 'common/search/index'), true)) {
			$this->request->get['route'] = 'error/not_found';
			return $this->load->controller('error/not_found');
		}
		return '';
	}
}
