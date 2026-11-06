<?php
class ControllerCheckoutCheckout extends Controller {
    private $error = array();

    public function index() {
		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$this->response->redirect($this->url->link('checkout/cart'));
		}

		// Validate minimum quantity requirements.
		$products = $this->cart->getProducts();

		foreach ($products as $product) {
			$product_total = 0;

			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}

			if ($product['minimum'] > $product_total) {
				$this->response->redirect($this->url->link('checkout/cart'));
			}
		}

		$this->load->language('checkout/checkout');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/locale/'.$this->session->data['language'].'.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		// Required by klarna
		if ($this->config->get('klarna_account') || $this->config->get('klarna_invoice')) {
			$this->document->addScript('http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_cart'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('checkout/checkout', '', 'SSL')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_checkout_option'] = $this->language->get('text_checkout_option');
		$data['text_checkout_account'] = $this->language->get('text_checkout_account');
		$data['text_checkout_payment_address'] = $this->language->get('text_checkout_payment_address');
		$data['text_checkout_shipping_address'] = $this->language->get('text_checkout_shipping_address');
		$data['text_checkout_shipping_method'] = $this->language->get('text_checkout_shipping_method');
		$data['text_checkout_payment_method'] = $this->language->get('text_checkout_payment_method');
		$data['text_checkout_confirm'] = $this->language->get('text_checkout_confirm');

        $data['text_select'] = $this->language->get('text_select');
        $data['action'] = $this->url->link('checkoutsr/checkout', '', true);
        $data['shipping_required'] = $this->cart->hasShipping();

        // entry
        $data['text_login'] = $this->language->get('text_login');
        $data['text_logout'] = $this->language->get('text_logout');
        $data['text_comments'] = $this->language->get('text_comments');
        $data['text_comments_placeholder'] = $this->language->get('text_comments_placeholder');
        $data['entry_firstname'] = $this->language->get('entry_firstname');
        $data['entry_lastname'] = $this->language->get('entry_lastname');
        $data['entry_patronymic'] = $this->language->get('entry_patronymic');
        $data['entry_telephone'] = $this->language->get('entry_telephone');
        $data['entry_email'] = $this->language->get('entry_email');
        $data['entry_password'] = $this->language->get('entry_password');
        $data['entry_confirm'] = $this->language->get('entry_confirm');
        $data['entry_city'] = $this->language->get('entry_city');
        $data['recipient'] = $this->language->get('recipient');
        $data['telephone'] = $this->language->get('telephone');
        $data['address'] = $this->language->get('address');
        $data['entry_street'] = $this->language->get('entry_street');
        $data['column_price'] = $this->language->get('column_price');
        $data['column_total'] = $this->language->get('column_total');

        // buttons
        $data['button_send'] = $this->language->get('button_send');
        $data['button_recipient'] = $this->language->get('button_recipient');

        $data['logged'] = $this->customer->isLogged();
        $data['register'] = $this->url->link('account/register', '', true);
        $data['login'] = $this->url->link('account/login', '', true);
        $data['logout'] = $this->url->link('account/logout', '', true);

        $firstname = $this->customer->getFirstName();
        $data['firstname'] = $firstname;
        if (isset($this->request->post['firstname'])) {
            $fname = $this->request->post['firstname'];
        } else {
            $fname = '';
        }
        if (isset($this->request->post['lastname'])) {
            $lname = $this->request->post['lastname'];
        } else {
            $lname = '';
        }
        if (isset($this->request->post['patronymic'])) {
            $pname = $this->request->post['patronymic'];
        } else {
            $pname = '';
        }
        if (isset($this->request->post['telephone'])) {
            $tel = $this->request->post['telephone'];
        } else {
            $tel = '';
        }
        if (isset($this->request->post['email'])) {
            $email = $this->request->post['email'];
        } else {
            $email = '';
        }
        if (isset($this->request->post['password'])) {
            $password = $this->request->post['password'];
        } else {
            $password = '';
        }
        if (isset($this->request->post['payment_city'])) {
            $pcity = $this->request->post['payment_city'];
        } else {
            $pcity = '';
        }
        if (isset($this->request->post['payment_country'])) {
            $pcountry = $this->request->post['payment_country'];
        } else {
            $pcountry = '';
        }
        if (isset($this->request->post['payment_zone'])) {
            $pzone = $this->request->post['payment_zone'];
        } else {
            $pzone = '';
        }
        if (isset($this->request->post['payment_zone_id'])) {
            $pzoneid = $this->request->post['payment_zone_id'];
        } else {
            $pzoneid = '';
        }
        if (isset($this->request->post['payment_method'])) {
            $pmethod = $this->request->post['payment_method'];
        } else {
            $pmethod = '';
        }
        if (isset($this->request->post['comment'])) {
            $comment = $this->request->post['comment'];
        } else {
            $comment = '';
        }

        if (isset($this->request->post['street'])) {
            $street = $this->request->post['street'];
        }
        else {
            $street = '';
        }
        if (isset($this->request->post['result'])) {
            $result = $this->request->post['result'];
            $result = intval(str_replace(" ","",$result));
        } else {
            $result = '';
        }

        if ($this->customer->isLogged()) {
            $tel = $this->customer->getTelephone();
        }

        $this->load->model('checkoutsr/order');

        //p($this->session->data);
        $order = array(
            'firstname' => $fname,
            'lastname' => $lname,
            'patronymic' => $pname,
            'telephone' => $tel,
            'email' => $email,
            'password' => $password,
            'customer_id' => $this->customer->getId(),
            'currency_code' => $this->session->data['currency'],
            'payment_city' => $pcity,
            'payment_country' => $pcountry,
            'payment_zone' => $pzone,
            'payment_zone_id' => $pzoneid,
            'payment_method' => $pmethod,
            'shipping_method' => $this->session->data['shipping_method']['title'],
            'comment' => $comment,
            'payment_address_1' => $street,
            'shipping_address_1' => $street,
            'result' => $result,
            'postcode' => $this->session->data['shipping_address']['postcode'],
            'zone_id' => $this->session->data['shipping_address']['zone_id'],
            'country_id' => $this->session->data['shipping_address']['country_id'],
            'shipping_code' => $this->session->data['shipping_method']['code'],
            'total' => $result,
            'shipping_country' => $this->session->data['shipping_address']['country'],
            'shipping_country_id' => $this->session->data['shipping_address']['country_id'],
            'shipping_zone' => $this->session->data['shipping_address']['zone'],
            'shipping_zone_id' => $this->session->data['shipping_address']['zone_id'],

        );

        $total = 0;
        foreach ($this->cart->getProducts() as $product) {

            $option_data = array();

            foreach ($product['option'] as $option) {
                if ($option['type'] != 'file') {
                    $value = $option['value'];
                } else {
                    $upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

                    if ($upload_info) {
                        $value = $upload_info['name'];
                    } else {
                        $value = '';
                    }
                }

                $option_data[] = array(
                    'name'  => $option['name'],
                    'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
                );
            }
            $order['products'][] = array(
                'product_id' => $product['product_id'],
                'name' => $product['name'],
                'model' => $product['model'],
                'download' => $product['download'],
                'quantity' => $product['quantity'],
                'subtract' => $product['subtract'],
                'option'    => $option_data,
                'price' => $product['price'],
                'total' => $product['total'],
                'tax' => $this->tax->getTax($product['price'], $product['tax_class_id']),
                'reward' => $product['points'],
                'shipping_country'
            );
            $total += $product['total'];
        }
        $count = 0;
        $reward = 0;
        foreach ($order['products'] as $product) {
            $count += $product['quantity'];
            $reward += $product['reward'];

        }

        if ($count % 10 == 1) {
            $text_product = 'товар';
        } elseif ($count % 10 > 1 && $count % 10 < 5) {
            $text_product = 'товара';
        } else {
            $text_product = 'товаров';
        }

        if ($reward % 10 == 1) {
            $text_reward = 'бонус';
        } elseif ($reward % 10 > 1 && $reward % 10 < 5 && $reward != 0 && $reward > 20) {
            $text_reward = 'бонуса';
        } else {
            $text_reward = 'бонусов';
        }

        $data['count'] = $count;
        $data['reward'] = $reward;
        $data['text_product'] = $text_product;
        $data['text_reward'] = $text_reward;

        $order['total'] = $total;
        $data['order'] = $order;

        $this->load->model('checkoutsr/order');
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
            if (!$this->customer->isLogged()) {
                if(!strripos($_SERVER['REQUEST_URI'],'noreg')) {
                    $this->model_checkoutsr_order->addCustomerFromCheckout($order);
                }
            }
            if ($this->session->data['order_id'] = $this->model_checkoutsr_order->addOrder($order)) {

                $this->cart->clear();
                $this->response->redirect($this->url->link('checkout/success', '', true));
            }
        }
        if (count($this->error) > 0) {
            $data['errors'] = $this->error;
        }
        if (isset($this->error['firstname'])) {
            $data['error_firstname'] = $this->error['firstname'];
        } else {
            $data['error_firstname'] = '';
        }
        if (isset($this->error['zone'])) {
            $data['error_zone'] = $this->error['zone'];
        } else {
            $data['error_zone'] = '';
        }
        if (isset($this->error['telephone'])) {
            $data['error_telephone'] = $this->error['telephone'];
        } else {
            $data['error_telephone'] = '';
        }
        if (isset($this->error['email'])) {
            $data['error_email'] = $this->error['email'];
        } else {
            $data['error_email'] = '';
        }
        if (isset($this->error['password'])) {
            $data['error_password'] = $this->error['password'];
        } else {
            $data['error_password'] = '';
        }
        if (isset($this->error['confirm'])) {
            $data['error_confirm'] = $this->error['confirm'];
        } else {
            $data['error_confirm'] = '';
        }
        if (isset($this->error['comment'])) {
            $data['error_comment'] = $this->error['comment'];
        } else {
            $data['error_comment'] = '';
        }
        if (isset($this->error['lastname'])) {
            $data['error_lastname'] = $this->error['lastname'];
        } else {
            $data['error_lastname'] = '';
        }
        if (isset($this->error['patronymic'])) {
            $data['error_patronymic'] = $this->error['patronymic'];
        } else {
            $data['error_patronymic'] = '';
        }
        if (isset($this->error['payment_city'])) {
            $data['error_city'] = $this->error['payment_city'];
        } else {
            $data['error_city'] = '';
        }
        if (isset($this->error['street'])) {
            $data['error_street'] = $this->error['street'];
        } else {
            $data['error_street'] = '';
        }
        if (isset($this->error['street2'])) {
            $data['error_street2'] = $this->error['street2'];
        } else {
            $data['error_street2'] = '';
        }
        if (isset($this->error['house'])) {
            $data['error_house'] = $this->error['house'];
        } else {
            $data['error_house'] = '';
        }
        if (isset($this->error['payment_method'])) {
            $data['error_payment'] = $this->error['payment_method'];
        } else {
            $data['error_payment'] = '';
        }
        if (isset($this->error['shipping_method'])) {
            $data['error_shipping'] = $this->error['shipping_method'];
        } else {
            $data['error_shipping'] = '';
        }
        // Payment_address

        $data['entry_city'] = $this->language->get('entry_city');
        $data['entry_country'] = $this->language->get('entry_country');
        $data['entry_zone'] = $this->language->get('entry_zone');

        if (isset($this->session->data['payment_address']['country_id'])) {
            $data['country_id'] = $this->session->data['payment_address']['country_id'];
        } else {
            $data['country_id'] = $this->config->get('config_country_id');
        }

        if (isset($this->session->data['payment_address']['zone_id'])) {
            $data['zone_id'] = $this->session->data['payment_address']['zone_id'];
        } else {
            $data['zone_id'] = '';
        }

		if (isset($this->session->data['error'])) {
			$data['error_warning'] = $this->session->data['error'];
			unset($this->session->data['error']);
		} else {
			$data['error_warning'] = '';
		}

		$data['logged'] = $this->customer->isLogged();

		if (isset($this->session->data['account'])) {
			$data['account'] = $this->session->data['account'];
		} else {
			$data['account'] = '';
		}

		$data['shipping_required'] = $this->cart->hasShipping();

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        if (isset($this->session->data['payment_address'])) {
            // Totals
            $total_data = array();
            $total = 0;
            $taxes = $this->cart->getTaxes();

            $this->load->model('extension/extension');

            $sort_order = array();

            $results = $this->model_extension_extension->getExtensions('total');

            foreach ($results as $key => $value) {
                $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
            }

            array_multisort($sort_order, SORT_ASC, $results);

            foreach ($results as $result) {
                if ($this->config->get($result['code'] . '_status')) {
                    $this->load->model('total/' . $result['code']);

                    $this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
                }
            }

        }

        // Payment Methods
        $method_data = array();

        $this->load->model('extension/extension');

        $results = $this->model_extension_extension->getExtensions('payment');

        $recurring = $this->cart->hasRecurringProducts();

        foreach ($results as $result) {
            if ($this->config->get($result['code'] . '_status')) {
                $this->load->model('payment/' . $result['code']);

                $method = $this->{'model_payment_' . $result['code']}->getMethod(176, $total);

                if ($method) {
                    if ($recurring) {
                        if (method_exists($this->{'model_payment_' . $result['code']}, 'recurringPayments') && $this->{'model_payment_' . $result['code']}->recurringPayments()) {
                            $method_data[$result['code']] = $method;
                        }
                    } else {
                        $method_data[$result['code']] = $method;
                    }
                }
            }
        }

        //p($data);
        //p($this->request->post);
        $sort_order = array();

        foreach ($method_data as $key => $value) {
            $sort_order[$key] = $value['sort_order'];
        }

        array_multisort($sort_order, SORT_ASC, $method_data);

        $this->session->data['payment_methods'] = $method_data;

        $data['text_payment_method'] = $this->language->get('text_payment_method');
        $data['text_comments'] = $this->language->get('text_comments');
        $data['text_loading'] = $this->language->get('text_loading');

        $data['button_continue'] = $this->language->get('button_continue');

        if (empty($this->session->data['payment_methods'])) {
            $data['error_warning'] = sprintf($this->language->get('error_no_payment'), $this->url->link('information/contact'));
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->session->data['payment_methods'])) {
            $data['payment_methods'] = $this->session->data['payment_methods'];
        } else {
            $data['payment_methods'] = array();
        }

        if (isset($this->session->data['payment_method']['code'])) {
            $data['code'] = $this->session->data['payment_method']['code'];
        } else {
            $data['code'] = '';
        }

        if (isset($this->session->data['comment'])) {
            $data['comment'] = $this->session->data['comment'];
        } else {
            $data['comment'] = '';
        }

        $data['scripts'] = $this->document->getScripts();

        if ($this->config->get('config_checkout_id')) {
            $this->load->model('catalog/information');

            $information_info = $this->model_catalog_information->getInformation($this->config->get('config_checkout_id'));

            if ($information_info) {
                $data['text_agree'] = sprintf($this->language->get('text_agree'), $this->url->link('information/information/agree', 'information_id=' . $this->config->get('config_checkout_id'), 'SSL'), $information_info['title'], $information_info['title']);
            } else {
                $data['text_agree'] = '';
            }
        } else {
            $data['text_agree'] = '';
        }

        if (isset($this->session->data['agree'])) {
            $data['agree'] = $this->session->data['agree'];
        } else {
            $data['agree'] = '';
        }
        if (isset($this->session->data['shipping_address'])) {
            // Shipping Methods
            $method_data = array();

            $this->load->model('extension/extension');

            $results = $this->model_extension_extension->getExtensions('shipping');

            foreach ($results as $result) {
                if ($this->config->get($result['code'] . '_status')) {
                    $this->load->model('shipping/' . $result['code']);

                    $quote = $this->{'model_shipping_' . $result['code']}->getQuote($this->session->data['shipping_address']);

                    if ($quote) {
                        $method_data[$result['code']] = array(
                            'title'      => $quote['title'],
                            'quote'      => $quote['quote'],
                            'sort_order' => $quote['sort_order'],
                            'error'      => $quote['error']
                        );
                    }
                }
            }

            $sort_order = array();

            foreach ($method_data as $key => $value) {
                $sort_order[$key] = $value['sort_order'];
            }

            array_multisort($sort_order, SORT_ASC, $method_data);

            $this->session->data['shipping_methods'] = $method_data;
        }

        $data['text_shipping_method'] = $this->language->get('text_shipping_method');
        $data['text_comments'] = $this->language->get('text_comments');
        $data['text_loading'] = $this->language->get('text_loading');

        $data['button_continue'] = $this->language->get('button_continue');

        if (empty($this->session->data['shipping_methods'])) {
            $data['error_warning'] = sprintf($this->language->get('error_no_shipping'), $this->url->link('information/contact'));
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->session->data['shipping_methods'])) {
            $data['shipping_methods'] = $this->session->data['shipping_methods'];
        } else {
            $data['shipping_methods'] = array();
        }

        if (isset($this->session->data['shipping_method']['code'])) {
            $data['code'] = $this->session->data['shipping_method']['code'];
        } else {
            $data['code'] = '';
        }

        if (isset($this->session->data['comment'])) {
            $data['comment'] = $this->session->data['comment'];
        } else {
            $data['comment'] = '';
        }
        // Totals
        $this->load->model('extension/extension');

        $total_data = array();
        $total = 0;
        $taxes = $this->cart->getTaxes();

        // Display prices
        if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
            $sort_order = array();

            $results = $this->model_extension_extension->getExtensions('total');

            foreach ($results as $key => $value) {
                $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
            }

            array_multisort($sort_order, SORT_ASC, $results);

            foreach ($results as $result) {
                if ($this->config->get($result['code'] . '_status')) {
                    $this->load->model('total/' . $result['code']);

                    $this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
                }
            }

            $sort_order = array();

            foreach ($total_data as $key => $value) {
                $sort_order[$key] = $value['sort_order'];
            }

            array_multisort($sort_order, SORT_ASC, $total_data);
        }

        $data['totals'] = array();

        foreach ($total_data as $total) {
            $data['totals'][] = array(
                'title' => $total['title'],
                'text'  => $this->currency->format($total['value'])
            );
        }

        //p($this->session->data);
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/checkout.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/checkout/checkout.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/checkout/checkout.tpl', $data));
		}
	}

	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function customfield() {
		$json = array();

		$this->load->model('account/custom_field');

		// Customer Group
		if (isset($this->request->get['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->get['customer_group_id'], $this->config->get('config_customer_group_display'))) {
			$customer_group_id = $this->request->get['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}

		$custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

		foreach ($custom_fields as $custom_field) {
			$json[] = array(
				'custom_field_id' => $custom_field['custom_field_id'],
				'required'        => $custom_field['required']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
    protected function validateForm()
    {

        /*if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
            $this->error['firstname'] = $this->language->get('error_firstname');
        }*/
        //if (!$this->customer->isLogged()) {
            /*if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
                $this->error['lastname'] = $this->language->get('error_lastname');
            }*/
            if (utf8_strlen($this->request->post['telephone']) < 1) {
                $this->error['telephone'] = $this->language->get('error_telephone');
            }

            if (isset($this->request->post['registr']) && $this->request->post['registr'] == '1') {
                if ((utf8_strlen($this->request->post['email']) > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
                    $this->error['email'] = $this->language->get('error_email');
                }
                if ((utf8_strlen($this->request->post['password']) < 4) || (utf8_strlen($this->request->post['password']) > 20)) {
                    $this->error['password'] = $this->language->get('error_password');
                }
            }
           /* if (utf8_strlen($this->request->post['payment_city']) < 1 || (utf8_strlen($this->request->post['payment_city']) > 32)) {
                $this->error['payment_city'] = $this->language->get('error_city');
            }*/
            /*if (utf8_strlen($this->request->post['street']) < 1 || (utf8_strlen($this->request->post['street']) > 32)) {
                $this->error['street'] = $this->language->get('error_street');
            }*/
        // }
        /*if($this->customer->isLogged()) {
            if (utf8_strlen($this->request->post['street2']) < 1 || (utf8_strlen($this->request->post['street2']) > 32)) {
                $this->error['street2'] = $this->language->get('error_street2');
            }
        }*/
        /*if (!$this->customer->isLogged()) {
            if (utf8_strlen($this->request->post['house']) < 1 || (utf8_strlen($this->request->post['house']) > 32)) {
                $this->error['house'] = $this->language->get('error_house');
            }
        }*/
        if (utf8_strlen($this->request->post['comment']) > 255) {
            $this->error['comment'] = $this->language->get('error_comment');
        }

        /*if (!isset($this->request->post['shipping_method']) || $this->request->post['shipping_method'] == '' ) {
            $this->error['shipping_method'] = $this->language->get('error_shipping');
        }
        if (!isset($this->request->post['payment_method'])|| $this->request->post['shipping_method'] == '') {
            $this->error['payment_method'] = $this->language->get('error_payment');
        }*/
        if (count($this->error) > 0){
            return false;
        } else {
            return true;
        }
        return !$this->error;
    }
}