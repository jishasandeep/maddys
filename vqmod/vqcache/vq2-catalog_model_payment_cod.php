<?php
class ModelPaymentCOD extends Model {
	public function getMethod($address, $total) {
		$this->load->language('payment/cod');

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('cod_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

		if ($this->config->get('cod_total') > 0 && $this->config->get('cod_total') > $total) {
			$status = false;
		} elseif (!$this->config->get('cod_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}

 
					$product_cod_install_status = $this->db->query("SELECT COUNT(*) as total FROM " . DB_PREFIX . "extension WHERE type = 'module' AND code = 'product_cod'")->row;
					if($product_cod_install_status['total'] > 0){
					
						$cart_product_id = array();
						$product_cod_product_id = array();
						//$result = array();
						
						foreach($this->cart->getProducts() as $product){ 
						
							$cart_product_id[] = $product['product_id'];
							
						}
					//print_r($cart_product_id);
						$products_category = $this->config->get('product_cod_product_category');
						//print_r($products_category);
						if(isset($products_category)){
						foreach ($products_category as $cate_product_id) {
							$results = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product_to_category where category_id = '".$cate_product_id."'");
						$category_product_id[] = $results->rows;
						}
						
						$it =  new RecursiveIteratorIterator(new RecursiveArrayIterator($category_product_id));
						$product_cod_product_id = iterator_to_array($it, false);
						}
						
						$products_cod = explode(',', $this->config->get('product_cod'));
						
						foreach ($products_cod as $product_id) {
						
							$product_cod_product_id[] = $product_id;
						}
						//echo "<br>";
					//print_r($product_cod_product_id);
						$no_of_product_cod_disable_in_cart = array_intersect($product_cod_product_id,$cart_product_id);
						//print_r($no_of_product_cod_disable_in_cart);
						if(count($no_of_product_cod_disable_in_cart) > 0){
							$status = false;
						}
					}
			
		$method_data = array();

		if ($status) {
			$method_data = array(
				'code'       => 'cod',
				'title'      => $this->language->get('text_title'),
				'terms'      => '',
				'sort_order' => $this->config->get('cod_sort_order')
			);
		}

		return $method_data;
	}
}