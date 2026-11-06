<?php
class ControllerModuleSearch extends Controller {
    public function index() {
        if (isset($this->request->get['route']) && in_array($this->request->get['route'], array('module/search', 'module/search/index', 'module/search/info'), true)) {
            $this->request->get['route'] = 'error/not_found';
            return $this->load->controller('error/not_found');
        }
        return '';
    }

    public function info() {
        return $this->index();
    }
}
