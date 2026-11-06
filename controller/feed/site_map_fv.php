<?php
class ControllerFeedSiteMapFV extends Controller {
    public function index() {
        $this->load->model('module/filter_vier');
        if($data_sitemap = $this->model_module_filter_vier->genSiteMapFV(true)) {
            $n = PHP_EOL;
            // xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
            $output  = '<?xml version="1.0" encoding="UTF-8"?>'.$n.'<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'.$n.$data_sitemap.'</urlset>';
            $this->response->addHeader('Content-Type: application/xml');
			$this->response->setOutput($output);
        }
        //else {$this->response->redirect(HTTPS_SERVER, 301);}
	}
}
