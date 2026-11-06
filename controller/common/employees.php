<?php
class ControllerCommonEmployees extends Controller {
	public function index() {
		$rows = (array)$this->config->get('site_home_employees');
		usort($rows, function($a, $b) {
			return (isset($a['sort_order']) ? (int)$a['sort_order'] : 0) - (isset($b['sort_order']) ? (int)$b['sort_order'] : 0);
		});

		$this->load->model('tool/image');
		$data['employees'] = array();

		foreach ($rows as $row) {
			$image = preg_replace('~^.*?/image/~', '', str_replace('\\', '/', trim(isset($row['image']) ? $row['image'] : '')));

			if ($image && is_file(DIR_IMAGE . $image)) {
				$data['employees'][] = array(
					'image' => $this->model_tool_image->resize($image, 480, 592),
					'name' => isset($row['name']) ? $row['name'] : '',
					'position' => isset($row['position']) ? $row['position'] : ''
				);
			}
		}

		return $data['employees'] ? $this->load->view('uvelirmoscow_new/template/common/employees.tpl', $data) : '';
	}
}
