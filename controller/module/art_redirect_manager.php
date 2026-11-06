<?php
/*
@author	Artem Serbulenko
@link	https://minilarek.com
@link	https://opencartforum.com/profile/762296-bn174uk/ | https://liveopencart.ru/artem-serbulenko
@email 	serfbots@gmail.com 
*/ 
class ControllerModuleArtRedirectManager extends Controller {
    
    public function index() {
        $this->load->model('module/art_redirect_manager');

        $url = $this->getUrl();

        if ($url) {  

            $redirects = $this->cache->get('art_redirect_manager');

            if (!$redirects) {
                $query = $this->model_module_art_redirect_manager->getRedirects();
                $redirects = array();
                foreach ($query as $row) {
                    $key = $row['domain'] . $row['path'];
                    $redirects[$key] = array(
                        'redirect_id'   => $row['redirect_id'],
                        'target'        => $row['target'],
                        'response_code' => (int)$row['response_code']
                    );
                }
                $this->cache->set('art_redirect_manager', $redirects);
            }

            $domain = $url['domain'];
            $path = $url['path'];

            $key = $domain . $path;
            if (isset($redirects[$key])) {
                $redirect = $redirects[$key];
            } elseif (isset($redirects['*' . $path])) {
                $redirect = $redirects['*' . $path];
            } else {
                $redirect = false;
            }

            if ($redirect) {     
                $protocol = $this->request->server['SERVER_PROTOCOL'] ? $this->request->server['SERVER_PROTOCOL'] : 'HTTP/1.1';

                $this->model_module_art_redirect_manager->updateHits($redirect['redirect_id']);

                $response_code = (int)$redirect['response_code'];

                if (in_array($redirect['response_code'], [301, 302, 303, 307, 308])) {
                    $this->response->redirect($redirect['target'], $redirect['response_code']);
                } else {
                    $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' ' . $redirect['response_code']);
                    $this->response->setOutput('<h1>Error ' . $redirect['response_code'] . '</h1>');
                }

                $this->response->output(); 
                exit;
            }
        }
    }
        
    private function getUrl() {
        $protocol = (!empty($this->request->server['HTTPS']) && $this->request->server['HTTPS'] === 'on') ? 'https' : 'http';
        $currentUrl = $protocol . '://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];

        $parsed = parse_url($currentUrl);

        $domain = isset($parsed['host']) ? strtolower(rtrim($parsed['host'], '/')) : '';

        $path = isset($parsed['path']) ? '/' . ltrim($parsed['path'], '/') : '/';
        $query = html_entity_decode(trim(isset($parsed['query']) ? $parsed['query'] : ''));

        if (strpos($path, '/index.php') === false || strpos($query, 'route=') === false) {
            $query = '';
        } else {
            parse_str($query, $queryArray);
            foreach ($queryArray as $key => $value) {
                if (stripos($key, 'utm_') === 0) {
                    unset($queryArray[$key]);
                }
            }
            $query = http_build_query($queryArray);
        }

        $fullPath = $path;
        if ($query) {
            $fullPath .= '?' . $query;
        }

        $fullPath = urldecode($fullPath);

        $fullPath = preg_replace('/&;/', '&', $fullPath);

        if ($fullPath !== '/') {
            $fullPath = rtrim($fullPath, '/');
        }

        $data = array(
            'domain' => $domain,
            'path'   => html_entity_decode(trim($fullPath))
        );

        return $data;
    }
}
