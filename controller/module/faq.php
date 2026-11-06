<?php
class ControllerModuleFAQ extends Controller {
	private $error = array();




	
	public function index($settings) {
	

	
if($settings['article_id']==(int)$this->request->get['information_id']){
	$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
	
		$data['answer']=$settings['answer'];
		$data['question']=$settings['question'];
		$data['position']=$settings['position'];
		$data['category']=$settings['category'];
		$l=array();
		foreach($data['answer'] as $k=>$item){
			$l[]=array(
			'answer'=>$data['answer'][$k],
			'question'=>$data['question'][$k],
			'position'=>$data['position'][$k],
			'category'=>$data['category'][$k],
			);
		}
		
function cmp($a, $b)
{
    return strcmp($a["position"], $b["position"]);
}
	
	
	
		usort($l, "cmp");
		
		$this->load->model('module/faq');
		$categories_list =  $this->model_module_faq->getList();
		$data['categories_list']=$categories_list;
		$list=[];
				
		foreach($l as $item){			
			if(!empty($item['category']))
			$list[$item['category']][]=$item;
		}	
		
		$data['list']=$list;

	
	  if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/faq.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/faq.tpl', $data);
		} else {
			return $this->load->view('default/template/module/faq.tpl', $data);
		}

}
return;
	}


}