<?php
class ControllerModuleoclayoutheader extends Controller {
    public function index() {
        $this->load->model('design/layout');

        if (isset($this->request->get['route'])) {
            $route = (string)$this->request->get['route'];
        } else {
            $route = 'common/home';
        }

        $layout_id = 0;

        if ($route == 'product/category' && isset($this->request->get['path'])) {
            $this->load->model('catalog/category');

            $path = explode('_', (string)$this->request->get['path']);

            $layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));
        }

        if ($route == 'product/product' && isset($this->request->get['product_id'])) {
            $this->load->model('catalog/product');

            $layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
        }

        if ($route == 'information/information' && isset($this->request->get['information_id'])) {
            $this->load->model('catalog/information');

            $layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
        }

        if (!$layout_id) {
            $layout_id = $this->model_design_layout->getLayout($route);
        }

        if (!$layout_id) {
            $layout_id = $this->config->get('config_layout_id');
        }




        $data = array(
            'lmodules' => array(),
            'modules' => array(),
            'rmodules' => array(),
        );

        $data['lmodules'] = $this->getHeaderMenu( $layout_id, 'oc_headerl');

        $data['modules'] = $this->getHeaderMenu( $layout_id, 'oc_header');
        echo 'asdadasd';
        $data['rmodules'] = $this->getHeaderMenu( $layout_id, 'oc_headerr');



        $tplPath = '';
        $tplExt = '';
        if( version_compare( VERSION, '2.2.0.0', '<')) {
            $tplPath = $this->config->get('config_template') . '/template/';
            $tplExt = '.tpl';
        } else if( version_compare( VERSION, '2.3.0.0', '<')) {
            $tplPath = '';
            $tplExt = '.tpl';
        }
        return $this->load->view($tplPath . 'module/oc_layout_header' . $tplExt, $data);
    }

    function getHeaderMenu( $layout_id, $what) {

        $modules = $this->model_design_layout->getLayoutModules($layout_id, $what);

        $data = array();



        foreach ($modules as $module) {
            $part = explode('.', $module['code']);



            if (isset($part[0]) && $this->config->get('module_' . $part[0] . '_status')) {



                $module_data = $this->load->controller('module/' . $part[0]);




                if ($module_data) {
                    $data[] = $module_data;
                }
            }

            if (isset($part[1])) {
                if( version_compare( VERSION, '3.0.0.0', '<')) {
                    $this->load->model('extension/module');
                    $model_sm = $this->model_extension_module;
                } else {
                    $this->load->model('setting/module');
                    $model_sm = $this->model_setting_module;
                }
                $setting_info = $model_sm->getModule($part[1]);

                if ($setting_info && $setting_info['status']) {
                    $output = $this->load->controller('module/' . $part[0], $setting_info);

                    if ($output) {
                        $data[] = $output;
                    }
                }
            }
        }

        return $data;
    }
}
