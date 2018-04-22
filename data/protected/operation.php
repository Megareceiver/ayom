<?php

	Class operation {
		public function __construct(){
			// if (session_status() == PHP_SESSION_NONE) {session_start();} // session start
			if (session_id() == '') { session_start(); }
			require_once('protected/config.php');
			$this->db = openGate();
		}

		public function requestData($post, $target){
			switch($target){
				case "summary" 					: $resultList = $this->summary(); break;

				case "home_carousel" 			: $resultList = $this->fetchAllRequest('home_carousel', array("id_data", "title", "description", "picture", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "home_carouselFetch"	: $resultList = $this->fetchSingleRequest('home_carousel', array("id_data", "title", "description", "picture"), $post['keyword']); break;

				case "home_donate" 				: $resultList = $this->fetchAllRequest('home_donate', array("id_data", "title", "description", "picture","link"), $post['keyword'], "ORDER BY id_data DESC", $post['page']); break;
				case "home_donateFetch"		: $resultList = $this->fetchSingleRequest('home_donate', array("id_data", "title", "description", "picture", "link"), $post['keyword']); break;

				case "home_donate_head" 				: $resultList = $this->fetchAllRequest('home_donate_head', array("id_data", "subtitle", "description"), $post['keyword'], "ORDER BY id_data DESC", $post['page']); break;
				case "home_donate_headFetch"		: $resultList = $this->fetchSingleRequest('home_donate_head', array("id_data", "subtitle", "description"), $post['keyword']); break;

				case "about_story" 			: $resultList = $this->fetchAllRequest('about_story', array("id_data", "description", "picture", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "about_storyFetch"	: $resultList = $this->fetchSingleRequest('about_story', array("id_data", "description", "picture"), $post['keyword']); break;

				case "about_founder" 			: $resultList = $this->fetchAllRequest('about_founder', array("id_data", "name", "description", "picture", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "about_founderFetch"	: $resultList = $this->fetchSingleRequest('about_founder', array("id_data", "name", "description", "picture"), $post['keyword']); break;

				case "about_contact" 			: $resultList = $this->fetchAllRequest('about_contact', array("id_data", "name", "address", "phone", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "about_contactFetch"	: $resultList = $this->fetchSingleRequest('about_contact', array("id_data", "name", "address", "phone"), $post['keyword']); break;

				case "talk_to_us" 			: $resultList = $this->fetchAllRequest('talk_to_us', array("id_data", "name", "email", "phone", "message", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;

				case "product_equipment" 			: $resultList = $this->fetchAllRequest('product_equipment p LEFT JOIN product_category c ON p.category_id = c.id_data', array("p.id_data", "c.name as category", "type", "size", "detail", "shipment", "picture", "price", "p.created_by", "p.created_date"), $post['keyword'], "ORDER BY p.id_data ASC", $post['page']); break;
				case "product_equipment_all" 	: $resultList = $this->fetchAllRecord('product_equipment p LEFT JOIN product_category c ON p.category_id = c.id_data', array("p.id_data as value", "p.type as caption"), $post['keyword'], "ORDER BY p.type ASC"); break;
				case "product_equipmentFetch"	: $resultList = $this->fetchSingleRequest('product_equipment', array("id_data", "category_id", "type", "size", "detail", "shipment", "picture", "price"), $post['keyword']); break;

				case "product_foods" 			: $resultList = $this->fetchAllRequest('product_foods p LEFT JOIN product_category c ON p.category_id = c.id_data', array("p.id_data", "c.name as category", "type", "size", "detail", "shipment", "picture", "price", "p.created_by", "p.created_date"), $post['keyword'], "ORDER BY p.id_data ASC", $post['page']); break;
				case "product_foods_all" 	: $resultList = $this->fetchAllRecord('product_foods p LEFT JOIN product_category c ON p.category_id = c.id_data', array("p.id_data as value", "p.type as caption"), $post['keyword'], "ORDER BY p.id_data ASC"); break;
				case "product_foodsFetch"	: $resultList = $this->fetchSingleRequest('product_foods', array("id_data", "category_id", "type", "size", "detail", "shipment", "picture", "price"), $post['keyword']); break;

				case "product_medical" 			: $resultList = $this->fetchAllRequest('product_medical p LEFT JOIN product_category c ON p.category_id = c.id_data', array("p.id_data", "c.name as category", "type", "size", "detail", "shipment", "picture", "price", "p.created_by", "p.created_date"), $post['keyword'], "ORDER BY p.id_data ASC", $post['page']); break;
				case "product_medical_all" 	: $resultList = $this->fetchAllRecord('product_medical p LEFT JOIN product_category c ON p.category_id = c.id_data', array("p.id_data as value", "p.type as caption"), $post['keyword'], "ORDER BY p.id_data ASC"); break;
				case "product_medicalFetch"	: $resultList = $this->fetchSingleRequest('product_medical', array("id_data", "category_id", "type", "size", "detail", "shipment", "picture", "price"), $post['keyword']); break;

				case "product_category" 				: $resultList = $this->fetchAllRequest('product_category', array("name", "id_data", "type_id"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "product_categoryOption" 	: $resultList = $this->fetchAllRecord('product_category', array("name as caption", "id_data as value", "type_id"), $post['keyword'], "ORDER BY id_data ASC"); break;
				case "product_categoryFetch" 		: $resultList = $this->fetchSingleRequest('product_category', array("name", "id_data", "type_id"), $post['keyword']); break;

				case "money_category" 					: $resultList = $this->fetchAllRequest('money_category', array("name", "description", "target", "income", "id_data"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "money_categoryOption" 		: $resultList = $this->fetchAllRecord('money_category', array("name as caption", "id_data as value", "description", "target", "income"), $post['keyword'], "ORDER BY id_data ASC"); break;
				case "money_categoryFetch" 			: $resultList = $this->fetchSingleRequest('money_category', array("name", "description", "target", "income", "id_data"), $post['keyword']); break;

				case "blog" 						: $resultList = $this->fetchAllRequest('blog', array("id_data", "title", "subtitle", "picture","description", "SUBSTRING(MONTHNAME(created_date), 1, 3) as `month`", "YEAR(created_date) as `year`"), $post['keyword'], "ORDER BY `year` ASC, `month` ASC, id_data DESC", $post['page']); break;
				case "blogFetch"				: $resultList = $this->fetchSingleRequest('blog', array("id_data", "title", "subtitle", "picture", "description"), $post['keyword']); break;

				case "category" 				: $resultList = $this->fetchAllRequest('category', array("id_data", "title", "description", "picture","type"), $post['keyword'], "ORDER BY id_data DESC", $post['page']); break;
				case "categoryFetch"		: $resultList = $this->fetchSingleRequest('category', array("id_data", "title", "description", "picture","type"), $post['keyword']); break;

				case "product" 							: $resultList = $this->fetchAllRequest('product', array("variant_id", "size_id", "detail", "price", "type", "category_id", "picture", "id_data"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "productFetch" 				: $resultList = $this->fetchSingleRequest('product', array("variant_id", "size_id", "detail", "price", "type", "category_id", "picture", "id_data"), $post['keyword']); break;

				case "product_size" 				: $resultList = $this->fetchAllRequest('product_size', array("name", "id_data"), $post['keyword'], "ORDER BY name ASC", $post['page']); break;
				case "product_sizeOption" 	: $resultList = $this->fetchAllRecord('product_size', array("name as caption", "id_data as value"), $post['keyword'], "ORDER BY name ASC"); break;
				case "product_sizeFetch" 		: $resultList = $this->fetchSingleRequest('product_size', array("name", "id_data"), $post['keyword']); break;

				case "product_type" 				: $resultList = $this->fetchAllRequest('product_type', array("name", "id_data"), $post['keyword'], "ORDER BY name ASC", $post['page']); break;
				case "product_typeOption" 	: $resultList = $this->fetchAllRecord('product_type', array("name as caption", "id_data as value"), $post['keyword'], "ORDER BY name ASC"); break;
				case "product_typeFetch" 		: $resultList = $this->fetchSingleRequest('product_type', array("name", "id_data"), $post['keyword']); break;

				case "product_shipment" 				: $resultList = $this->fetchAllRequest('product_type', array("name", "id_data"), $post['keyword'], "ORDER BY name ASC", $post['page']); break;
				case "product_shipmentOption" 	: $resultList = $this->fetchAllRecord('product_type', array("name as caption", "id_data as value"), $post['keyword'], "ORDER BY name ASC"); break;
				case "product_shipmentFetch" 		: $resultList = $this->fetchSingleRequest('product_type', array("name", "id_data"), $post['keyword']); break;

				case "department" 		: $resultList = $this->fetchAllRequest('departments', array("name", "id_data"), $post['keyword'], "ORDER BY name ASC", $post['page']); break;
				case "departmentOption" : $resultList = $this->fetchAllRecord('departments', array("name as caption", "id_data as value"), $post['keyword'], "ORDER BY name ASC"); break;
				case "departmentFetch" 	: $resultList = $this->fetchSingleRequest('departments', array("name", "id_data"), $post['keyword']); break;

				case "cms_blog" 		: $resultList = $this->fetchAllRequest('cms_blog', array("id_data","title", "date", "subtitle", "SUBSTRING(description, 1, 300) as description", "photoBy", "pictures", "link", "caption", "publishDate"), $post['keyword'], "ORDER BY id_data DESC", $post['page']); break;
				case "cms_blogFetch" 	: $resultList = $this->fetchSingleRequest('cms_blog', array("id_data","title", "date", "subtitle", "description", "photoBy", "pictures as `pictures[]`", "link as filename", "caption", "publishDate"), $post['keyword']); break;
				case "cms_blogDetail" 	: $resultList = $this->fetchSingleRequest('cms_blog', array("id_data","title", "date", "subtitle", "description", "photoBy", "pictures as pictures", "link", "caption", "publishDate"), $post['keyword']); break;

				case "donation" 			: $resultList = $this->fetchAllRequest('donation', array("id_data", "name", "email", "phone", "message", "acc_owner", "acc_bank", "amount", "acc_number", "acc_reff", "agreement_check", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "donationFetch"	: $resultList = $this->fetchSingleRequest('donation', array("id_data", "name", "email", "phone", "message", "acc_owner", "acc_bank", "amount", "acc_number", "acc_reff", "agreement_check"), $post['keyword']); break;

				case "donation_detail" 			: $resultList = $this->fetchAllRequest('donation_detail', array("id_data", "donate_id", "product_id", "product_type", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "donation_detailFetch"	: $resultList = $this->fetchSingleRequest('donation_detail', array("id_data", "donate_id", "product_id", "product_type"), $post['keyword']); break;

				case "donation_money_detail" 			: $resultList = $this->fetchAllRequest('donation_money_detail d JOIN money_category m ON d.money_category_id = m.id_data', array("d.id_data", "d.donate_id", "m.name as category", "d.money_category_id", "d.amount", "d.created_by", "d.created_date"), $post['keyword'], "ORDER BY d.id_data ASC", $post['page']); break;
				case "donation_money_detailFetch"	: $resultList = $this->fetchSingleRequest('donation_money_detail', array("id_data", "donate_id", "money_category_id", "amount"), $post['keyword']); break;

				case "user" 			: $resultList = $this->fetchAllRequest('users u LEFT JOIN departments d ON u.departmentId = d.id_data', array("u.id_data","u.name", "u.username", "u.type", "IFNULL(d.name,'') as department", "u.picture"), "u.id_data <> '0'", "ORDER BY u.id_data DESC", $post['page']); break;
				case "userFetch" 		: $resultList = $this->fetchSingleRequest('users', array("id_data","name", "username", "type", "departmentId", "picture"), $post['keyword']); break;

				case "partner" 			: $resultList = $this->fetchAllRequest('partner', array("id_data", "description", "partner", "partner_media", "created_by", "created_date"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "partnerFetch"	: $resultList = $this->fetchSingleRequest('partner', array("id_data", "description", "partner", "partner_media"), $post['keyword']); break;

				case "report_policiesFetch" 	: $resultList = $this->fetchSingleRequest('report_policies', array("id_data", "description", "caption", "picture", "footer", "attachment"), $post['keyword'], "ORDER BY id_data ASC"); break;

				case "report_annualFetch" 	: $resultList = $this->fetchSingleRequest('report_annual', array("text_1", "text_2", "text_3", "text_4", "caption", "picture_1", "picture_2", "picture_3", "attachment"), $post['keyword'], "ORDER BY id_data ASC"); break;

				case "report_profit_and_lossFetch" 	: $resultList = $this->fetchSingleRequest('report_profit_and_loss',
							array("title_1", "title_2", "title_3", "title_4", "title_5", "title_6", "title_7",
							"caption_1", "caption_2", "caption_3", "caption_4", "caption_5", "caption_6",
							"value_1", "value_2", "value_3", "value_4", "value_5", "value_6",
							"picture_1", "picture_2", "picture_3", "picture_4", "picture_5")
							, $post['keyword'], "ORDER BY id_data ASC"); break;

				case "report_descriptionFetch" 	: $resultList = $this->fetchSingleRequest('report_description', array("id_data", "rekening_koran", "laba_rugi", "arus_kas", "neraca"), $post['keyword'], "ORDER BY id_data ASC"); break;

				case "report_donation_trendFetch" 	: $resultList = $this->fetchSingleRequest('report_donation_trend', array("id_data", "title", "picture"), $post['keyword'], "ORDER BY id_data ASC"); break;
				case "report_annual_trendFetch" 	: $resultList = $this->fetchSingleRequest('report_annual_trend', array("id_data", "title", "picture"), $post['keyword'], "ORDER BY id_data ASC"); break;

				case "report_donation_overview" 			: $resultList = $this->fetchAllRequest('report_donation_overview', array("*"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "report_donation_overviewFetch"	: $resultList = $this->fetchSingleRequest('report_donation_overview', array("*"), $post['keyword']); break;

				case "report_donation_equipments" 			: $resultList = $this->fetchAllRequest('report_donation_equipments', array("*"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "report_donation_equipmentsFetch"	: $resultList = $this->fetchSingleRequest('report_donation_equipments', array("*"), $post['keyword']); break;

				case "report_checking_account" 			: $resultList = $this->fetchAllRequest('report_checking_account', array("*"), $post['keyword'], "ORDER BY year DESC", $post['page']); break;
				case "report_checking_accountFetch"	: $resultList = $this->fetchSingleRequest('report_checking_account', array("*"), $post['keyword']); break;

				case "report_cash_flowFetch"	: $resultList = $this->fetchSingleRequest('report_cash_flow', array("id_data, title_cash_flow, title_trend, picture, caption_1, caption_2, caption_3, value_1, value_2, value_3"), $post['keyword']); break;
				case "report_balance_sheetsFetch"	: $resultList = $this->fetchSingleRequest('report_balance_sheets', array("id_data, title, aset_lancar, aset_tidak_lancar, total_aset, liabilitas_lancar, liabilitas_tidak_lancar, total_liabilitas, modal_saham, laba_ditahan, total_ekuitas"), $post['keyword']); break;

				default	   : $resultList = array( "feedStatus" => "failed", "feedType" => "danger", "feedMessage" => "Something went wrong, failed to collect data!", "feedData" => array()); break;
			}

			/* result fetch */
			$json = $resultList;

	        return $json;
		}

		public function removeData($post, $target){
			switch($target){
				case "category" 		: $resultList = $this->deleteById('category', $post['id']); break;
				case "product_size" : $resultList = $this->deleteById('product_size', $post['id']); break;
				case "product_type" : $resultList = $this->deleteById('product_type', $post['id']); break;
				case "product_shipment" : $resultList = $this->deleteById('product_shipment', $post['id']); break;
				case "home_carousel" : $resultList = $this->deleteById('home_carousel', $post['id']); break;
				case "about_story" 	 : $resultList = $this->deleteById('about_story', $post['id']); break;
				case "about_founder" : $resultList = $this->deleteById('about_founder', $post['id']); break;
				case "about_contact" : $resultList = $this->deleteById('about_contact', $post['id']); break;
				case "talk_to_us" : $resultList = $this->deleteById('talk_to_us', $post['id']); break;
				case "product_equipment": $resultList = $this->deleteById('product_equipment', $post['id']); break;
				case "product_foods" 		: $resultList = $this->deleteById('product_foods', $post['id']); break;
				case "product_medical" 	: $resultList = $this->deleteById('product_medical', $post['id']); break;
				case "product_category" 	: $resultList = $this->deleteById('product_category', $post['id']); break;
				// case "home_link"   : $resultList = $this->deleteById('home_link', $post['id']); break;
				case "blog"   			: $resultList = $this->deleteById('blog', $post['id']); break;
				case "department"  : $resultList = $this->deleteById('departments', $post['id']); break;
				case "user" 		   : $resultList = $this->deleteById('users', $post['id']); break;
				case "cms_blog" 	 : $resultList = $this->deleteById('cms_blog', $post['id']); break;
				case "partner" 	 : $resultList = $this->deleteById('partner', $post['id']); break;
				case "report_donation_overview" 	 : $resultList = $this->deleteById('report_donation_overview', $post['id']); break;
				case "report_donation_equipments" 	 : $resultList = $this->deleteById('report_donation_equipments', $post['id']); break;
				case "report_checking_account" 	 : $resultList = $this->deleteById('report_checking_account', $post['id']); break;

				default	   : $resultList = array( "feedStatus" => "failed", "feedType" => "danger", "feedMessage" => "Something went wrong, failed to collect data!", "feedData" => array()); break;
			}

			/* result fetch */
			$json = $resultList;

	        return $json;
		}

		public function addData($post, $target){
			switch($target){

				case "category"  :
					$fields = array("title", "description", "type");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}
					$resultList = $this->insert('category', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "category", "category", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "product"  :
					$fields = array("variant_id", "size_id", "detail", "price", "type", "category_id");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('product', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product", "product", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "product_size"  :
					$fields = array("name");
					$values = array($post["name"]);

					$resultList = $this->insert('product_size', $fields, $values);
				break;

				case "product_type"  :
					$fields = array("name");
					$values = array($post["name"]);

					$resultList = $this->insert('product_type', $fields, $values);
				break;

				case "product_shipment"  :
					$fields = array("name");
					$values = array($post["name"]);

					$resultList = $this->insert('product_shipment', $fields, $values);
				break;

				case "home_carousel"  :
					$fields = array("title", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('home_carousel', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "home/carousel", "home_carousel", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "home_donate"  :
					$fields = array("title", "description", "link");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('home_donate', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "home/donate", "home_donate", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "home_donate_head"  :
					$fields = array("subtitle", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('home_donate_head', $fields, $values);
				break;

				case "about_story"  :
					$fields = array("description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('about_story', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "about/story", "about_story", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "about_founder"  :
					$fields = array("name", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('about_founder', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "about/founder", "about_founder", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "about_contact"  :
					$fields = array("name", "address", "phone");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('about_contact', $fields, $values);
				break;

				case "talk_to_us"  :
					$fields = array("name", "email", "phone", "message");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('talk_to_us', $fields, $values);
				break;

				case "product_equipment"  :
					$fields = array("category_id", "type", "size", "detail", "shipment", "price");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('product_equipment', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product/equipment", "product_equipment", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "product_foods"  :
					$fields = array("category_id", "type", "size", "detail", "shipment", "price");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('product_foods', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product/foods", "product_foods", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "product_medical"  :
					$fields = array("category_id", "type", "size", "detail", "shipment", "price");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('product_medical', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product/medical", "product_medical", "picture", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "product_category"  :
					$fields = array("name", "type_id");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('product_category', $fields, $values);
				break;

				case "donation"  :
					$fields = array("name", "email", "phone", "message", "acc_owner", "acc_bank", "amount", "acc_number", "acc_reff", "agreement_check");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('donation', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						$resultList['resultItem'] = array();
						$fields = array("donate_id", "product_id", "product_type");
						$endLoop = count($post['items']);
						for($loop=0;$loop<$endLoop;$loop++){
							$item 			= $post['items'][$loop];
							$values 		= '"'.$resultList["feedId"].'", "'.$item["product_id"].'", "'.$item["product_type"].'"';
							$resultItem = $this->insert('donation_detail', $fields, $values);
							array_push($resultList['resultItem'], $resultItem);
						}
					}
				break;

				case "donation_money"  :
					$fields = array("name", "email", "phone", "message", "acc_owner", "acc_bank", "amount", "acc_number", "acc_reff", "agreement_check");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					array_push($fields, "donation_type");
					array_push($values, "money");

					$resultList = $this->insert('donation', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						$resultList['resultItem'] = array();
						$fields = array("donate_id", "money_category_id", "amount");
						$endLoop = count($post['items']);
						for($loop=0;$loop<$endLoop;$loop++){
							$item 			= $post['items'][$loop];
							$values 		= '"'.$resultList["feedId"].'", "'.$item["money_category_id"].'", "'.$item["amount"].'"';
							$resultItem = $this->insert('donation_money_detail', $fields, $values);
							array_push($resultList['resultItem'], $resultItem);
						}
					}
				break;

				case "money_category"  :
					$fields = array("name", "description", "target", "income");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						array_push($values,$value);
					}

					$resultList = $this->insert('money_category', $fields, $values);
				break;

				case "blog"  :
					$fields = array("title", "subtitle", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						array_push($values,$value);
					}

					$resultList = $this->insert('blog', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "blog", "blog", "picture", $resultList["feedId"]);
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "department"  :
					$fields = array("name");
					$values = array($post["name"]);

					$resultList = $this->insert('departments', $fields, $values);
				break;

				case "user"  :
					$fields = array("name", "username", "departmentId");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					if(isset($post['password']) && isset($post['retype_password']) && $post['password'] == $post['retype_password']) {
						array_push($fields, "password");
						array_push($values, md5($post['password']));
					}

					array_push($fields, "type");
					array_push($values, "admin");

					$resultList = $this->insert('users', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "users", "users", "picture", $resultList["feedId"]);
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "partner"  :
					$fields = array("description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('partner', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["partner"])){
							$upload = $this->uploadSingleImage($_FILES["partner"], "partner", "partner", "partner", $resultList["feedId"], '1');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}

						if(isset($_FILES["partner_media"])){
							$upload = $this->uploadSingleImage($_FILES["partner_media"], "partner", "partner", "partner_media", $resultList["feedId"], '2');
							array_push($resultList, array("feedUpload" => $upload['feedMessage']));
						}
					}
				break;

				case "report_donation_overview"  :
					$fields = array("title", "caption_1", "caption_2", "caption_3", "value_1", "value_2", "value_3");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('report_donation_overview', $fields, $values);
				break;

				case "report_donation_equipments"  :
					$fields = array("title", "caption_1", "caption_2", "caption_3", "value_1", "value_2", "value_3");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('report_donation_equipments', $fields, $values);
				break;

				case "report_checking_account"  :
					$fields = array("year", "caption");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('report_checking_account', $fields, $values);

					if($resultList["feedStatus"] == "success") {
						if(isset($_FILES["attachment"])){
							$upload = $this->uploadFile($_FILES["attachment"], "report", "report_checking_account", "attachment", $resultList['feedId'], "");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				default	   		: $resultList = array( "feedStatus" => "failed", "feedType" => "danger", "feedMessage" => "Something went wrong, failed to collect data!", "feedData" => array()); break;
			}

			/* result fetch */
			$json = $resultList;

	        return $json;
		}

		public function updateData($post, $target){
			switch($target){

				// case "color"  :
				// 	$values = array("name = '".$post["name"]."'");
				// 	$resultList = $this->update('colors', $values, $post['id_data']);
				// break;

				case "category"  :
					$fields = array("title", "description", "type");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('category', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "category", "category", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "product"  :
					$fields = array("variant_id", "size_id", "detail", "price", "type", "category_id");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('product', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product", "product", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "product_size"  :
					$values = array("name = '".$post["name"]."'");
					$resultList = $this->update('product_size', $values, $post['id_data']);
				break;

				case "product_type"  :
					$values = array("name = '".$post["name"]."'");
					$resultList = $this->update('product_type', $values, $post['id_data']);
				break;

				case "product_shipment"  :
					$values = array("name = '".$post["name"]."'");
					$resultList = $this->update('product_shipment', $values, $post['id_data']);
				break;

				case "home_carousel"  :
					$fields = array("title", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('home_carousel', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "home/carousel", "home_carousel", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "home_donate"  :
					$fields = array("title", "description", "link");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('home_donate', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "home/donate", "home_donate", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "home_donate_head"  :
					$fields = array("subtitle", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('home_donate_head', $values, $post['id_data']);
				break;

				case "about_story"  :
					$fields = array("description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('about_story', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "about/story", "about_story", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "about_founder"  :
					$fields = array("name", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('about_founder', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "about/founder", "about_founder", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "about_contact"  :
					$fields = array("name", "address", "phone");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('about_contact', $values, $post['id_data']);

				break;

				case "product_equipment"  :
					$fields = array("category_id", "type", "size", "detail", "shipment", "price");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('product_equipment', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product/equipment", "product_equipment", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "product_foods"  :
					$fields = array("category_id", "type", "size", "detail", "shipment", "price");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('product_foods', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product/foods", "product_foods", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "product_medical"  :
					$fields = array("category_id", "type", "size", "detail", "shipment", "price");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('product_medical', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "product/medical", "product_medical", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "product_category"  :
					$fields = array("name", "type_id");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('product_category', $values, $post['id_data']);
				break;

				case "money_category"  :
					$fields = array("name", "description", "target", "income");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('money_category', $values, $post['id_data']);
				break;

				case "blog"  :
					$fields = array("title", "subtitle", "description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? str_replace("'", "\'", $post[$key]) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('blog', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "blog", "blog", "picture", $post['id_data']);
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "department"  :
					$values = array("name = '".$post["name"]."'");
					$resultList = $this->update('departments', $values, $post['id_data']);
				break;

				case "user"  :
					$fields = array("name", "departmentId");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					if(isset($post['password']) && isset($post['retype_password']) && $post['password'] == $post['retype_password']) {
						$values['password'] = "password = '".md5($post['password'])."'";
					}

					$resultList = $this->update('users', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "users", "users", "picture", $post['id_data']);
							$resultList["feedMultiUpload"] = $upload['feedMessage'];
						}

					}

				break;

				case "partner"  :
					$fields = array("description");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('partner', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["partner"])){
							$upload = $this->uploadSingleImage($_FILES["partner"], "partner", "partner", "partner", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}

						if(isset($_FILES["partner_media"])){
							$upload = $this->uploadSingleImage($_FILES["partner_media"], "partner", "partner", "partner_media", $post['id_data'], "2");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "report_policies"  :
					$fields = array("description", "caption", "footer");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? nl2br(str_replace("'", "\'", $post[$key])) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_policies', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "report", "report_policies", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}

						if(isset($_FILES["attachment"])){
							$upload = $this->uploadFile($_FILES["attachment"], "report", "report_policies", "attachment", $post['id_data'], "report_policies");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "report_annual"  :
					$fields = array("text_1", "text_2", "text_3", "text_4", "caption");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? nl2br(str_replace("'", "\'", $post[$key])) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_annual', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture_1"])){
							$upload = $this->uploadSingleImage($_FILES["picture_1"], "report", "report_annual", "picture_1", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}

						if(isset($_FILES["picture_2"])){
							$upload = $this->uploadSingleImage($_FILES["picture_2"], "report", "report_annual", "picture_2", $post['id_data'], "2");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}

						if(isset($_FILES["picture_3"])){
							$upload = $this->uploadSingleImage($_FILES["picture_3"], "report", "report_annual", "picture_3", $post['id_data'], "3");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}

						if(isset($_FILES["attachment"])){
							$upload = $this->uploadFile($_FILES["attachment"], "report", "report_annual", "attachment", $post['id_data'], "report_annual");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "report_description"  :
					$fields = array("rekening_koran", "laba_rugi", "arus_kas", "neraca");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? nl2br(str_replace("'", "\'", $post[$key])) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_description', $values, $post['id_data']);

				break;

				case "report_donation_trend"  :
					$fields = array("title");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? nl2br(str_replace("'", "\'", $post[$key])) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_donation_trend', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "report", "report_donation_trend", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "report_annual_trend"  :
					$fields = array("title");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? nl2br(str_replace("'", "\'", $post[$key])) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_annual_trend', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "report", "report_annual_trend", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "report_cash_flow"  :
					$fields = array("title_cash_flow", "title_trend", "caption_1", "caption_2", "caption_3", "value_1", "value_2", "value_3");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? nl2br(str_replace("'", "\'", $post[$key])) : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_cash_flow', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture"])){
							$upload = $this->uploadSingleImage($_FILES["picture"], "report/cash_flow", "report_cash_flow", "picture", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}

				break;

				case "report_donation_overview"  :
					$fields = array("title", "caption_1", "caption_2", "caption_3", "value_1", "value_2", "value_3");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_donation_overview', $values, $post['id_data']);
				break;

				case "report_donation_equipments"  :
					$fields = array("title", "caption_1", "caption_2", "caption_3", "value_1", "value_2", "value_3");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_donation_equipments', $values, $post['id_data']);
				break;

				case "report_checking_account"  :
					$fields = array("year", "caption");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_checking_account', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["attachment"])){
							$upload = $this->uploadFile($_FILES["attachment"], "report", "report_checking_account", "attachment", $post['id_data'], "");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}
				break;

				case "report_balance_sheets"  :
					$fields = array("title", "aset_lancar", "aset_tidak_lancar", "total_aset", "liabilitas_lancar", "liabilitas_tidak_lancar", "total_liabilitas", "modal_saham", "laba_ditahan", "total_ekuitas");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('report_balance_sheets', $values, $post['id_data']);
				break;

				case "report_profit_and_loss"  :
					$fields = array("title_1", "title_2", "title_3", "title_4", "title_5", "title_6", "title_7");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$dumb  = str_replace("'", "\'",$value);
						$values[$key] = $key." = '".str_replace(',','',$dumb)."'";
					}

					$fields = array("caption_1", "caption_2", "caption_3", "caption_4", "caption_5", "caption_6");
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$dumb  = str_replace("'", "\'",$value);
						$values[$key] = $key." = '".str_replace(',','',$dumb)."'";
					}

					$fields = array("value_1", "value_2", "value_3", "value_4", "value_5", "value_6");
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$dumb  = str_replace("'", "\'",$value);
						$values[$key] = $key." = '".str_replace(',','',$dumb)."'";
					}

					$resultList = $this->update('report_profit_and_loss', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["picture_1"])){
							$upload = $this->uploadSingleImage($_FILES["picture_1"], "report/profit_and_loss", "report_profit_and_loss", "picture_1", $post['id_data'], "1");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
						if(isset($_FILES["picture_2"])){
							$upload = $this->uploadSingleImage($_FILES["picture_2"], "report/profit_and_loss", "report_profit_and_loss", "picture_2", $post['id_data'], "2");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
						if(isset($_FILES["picture_3"])){
							$upload = $this->uploadSingleImage($_FILES["picture_3"], "report/profit_and_loss", "report_profit_and_loss", "picture_3", $post['id_data'], "3");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
						if(isset($_FILES["picture_4"])){
							$upload = $this->uploadSingleImage($_FILES["picture_4"], "report/profit_and_loss", "report_profit_and_loss", "picture_4", $post['id_data'], "4");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
						if(isset($_FILES["picture_5"])){
							$upload = $this->uploadSingleImage($_FILES["picture_5"], "report/profit_and_loss", "report_profit_and_loss", "picture_5", $post['id_data'], "5");
							$resultList["feedUpload"] = $upload['feedMessage'];
						}
					}
				break;

				default	   		: $resultList = array( "feedStatus" => "failed", "feedType" => "danger", "feedMessage" => "Something went wrong, failed to collect data!", "feedData" => array()); break;
			}

			/* result fetch */
			$json = $resultList;

	        return $json;
		}

		public function fetchAllRecord($table, $fields, $conditions = "", $orderBy = ""){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to collect data!";
			$feedData	= array();

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				if(is_array($fields)) {
					foreach ($fields as $value) {
						if($temp  == "") $temp = $value;
						else $temp = $temp.",".$value;
					}

					$fields = $temp;
					$temp   = "";
				}

				if(is_array($conditions)) {
					foreach ($conditions as $value) {
						$temp = $temp." ".$value;
					}

					$conditions = $temp;
					$temp   = "";
				}

				$conditions = ($conditions != "") ? "WHERE ".str_replace('\\', '', $conditions) : "";


				$sql = "SELECT ".$fields." FROM ".$table." ".$conditions." ".$orderBy." ";

				$result = $this->db->query($sql);
				if($result){
					$feedStatus	= "success";
					$feedType   = "success";
					$feedMessage= "The process has been successful";
					$feedData = $result->fetchAll(PDO::FETCH_ASSOC);
				}

				$feedType = $sql;
			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;
		}

		public function fetchAllRequest($table, $fields, $conditions = "", $orderBy = "", $paging = "1", $pageSize = 20){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to collect data!";
			$feedData	= array();

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				if(is_array($fields)) {
					foreach ($fields as $value) {
						if($temp  == "") $temp = $value;
						else $temp = $temp.",".$value;
					}

					$fields = $temp;
					$temp   = "";
				}

				if(is_array($conditions)) {
					foreach ($conditions as $value) {
						$temp = $temp." ".$value;
					}

					$conditions = $temp;
					$temp   = "";
				}

				$conditions = ($conditions != "") ? "WHERE ".str_replace('\\', '', $conditions) : "";


				$temp = intval($paging);
				$temp = ($temp - 1) * $pageSize;

				$paging = "LIMIT ".$temp.",".$pageSize;

				$sql = "SELECT ".$fields." FROM ".$table." ".$conditions." ".$orderBy." ".$paging;

				$result = $this->db->query($sql);
				if($result){
					$feedStatus	= "success";
					$feedType   = "success";
					$feedMessage= "The process has been successful";
					$feedData = $result->fetchAll(PDO::FETCH_ASSOC);
				}

				$feedType = $sql;
			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;
		}

		public function fetchSingleRequest($table, $fields, $conditions = ""){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to collect data!";
			$feedData	= array();

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				if(is_array($fields)) {
					foreach ($fields as $value) {
						if($temp  == "") $temp = $value;
						else $temp = $temp.",".$value;
					}

					$fields = $temp;
					$temp   = "";
				}

				if(is_array($conditions)) {
					foreach ($conditions as $value) {
						$temp = $temp." ".$value;
					}

					$conditions = $temp;
					$temp   = "";
				}

				$conditions = ($conditions != "") ? "WHERE ".str_replace('\\', '', $conditions) : "";

				$sql = "SELECT ".$fields." FROM ".$table." ".$conditions;

				$result = $this->db->query($sql);
				if($result){
					$feedStatus	= "success";
					$feedType   = "success";
					$feedMessage= "The process has been successful";
					$feedData = $result->fetch(PDO::FETCH_ASSOC);
				}

					$feedType = $sql;
			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;
		}

		// DELETE DATA
		public function deleteById($table, $conditions, $image){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to collect data!";
			$feedData	= array();

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				if(is_array($conditions)) {
					foreach ($conditions as $value) {
						if($temp  == "") $temp = $value;
						else $temp = $temp.",".$value;
					}

					$conditions = $temp;
					$temp   = "";
				}

				$sql = "DELETE FROM ".$table." WHERE id_data IN (".$conditions.")";

				$result = $this->db->query($sql);
				if($result){
					$feedStatus	= "success";
					$feedType   = "success";
					$feedMessage= "The process has been successful";
					$feedData   = $conditions;
				}

				$feedType = $sql;
			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;
		}


		//INSERT DATA
		public function insert($table, $fields, $values){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to collect data!";
			$feedData	= array();
			$feedId		= "";

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				if(is_array($fields)) {
					foreach ($fields as $item) {
						if($temp  == "") $temp = $item;
						else $temp = $temp.",".$item;
					}

					$fields = $temp;
					$temp   = "";
				}

				if(is_array($values)) {
					foreach ($values as $item) {
						if($temp  == "") $temp = "'".$item."'";
						else $temp = $temp.",'".$item."'";
					}

					$values = $temp;
					$temp   = "";
				}

				$sql = "INSERT INTO ".$table."(".$fields.", created_by, created_date) VALUES (".$values.", '".$_SESSION['tulisan_user_username']."',NOW())";

				$result = $this->db->query($sql);
				if($result){
					$feedStatus	= "success";
					$feedType   = "success";
					$feedMessage= "The process has been successful";
					$feedId 	= $this->db->lastInsertId();
				}

				$feedType = $sql;
			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData, "feedId" => $feedId);

			/* result fetch */
			$json = $resultList;

			return $json;

		}

		//UPDATE DATA
		public function update($table, $values, $id){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to collect data!";
			$feedData	= array();
			$feedId		= "";

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				if(is_array($values)) {
					foreach ($values as $item) {
						if($temp  == "") $temp = $item;
						else $temp = $temp.",".$item;
					}

					$values = $temp;
					$temp   = "";
				}

				$sql = "UPDATE ".$table." SET ".$values.", changed_by = '".$_SESSION['tulisan_user_username']."', changed_date = NOW() WHERE id_data = '".$id."'";

				$result = $this->db->query($sql);
				if($result){
					$feedStatus	= "success";
					$feedType   = "success";
					$feedMessage= "The process has been successful";
				}

				$feedType = $sql;
			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;

		}

		//UPLOAD IMAGE
		public function uploadSingleImage($image, $dir, $table, $field, $id, $que = ""){
			error_reporting(E_ALL);
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to upload data!";
			$feedData	= array();

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				/*upload image*/
				if(isset($image)){

					$file_name = $image['name'];
				  $file_size = $image['size'];
				  $file_tmp  = $image['tmp_name'];
				  $file_type = $image['type'];

					$Validextensions = array("jpeg", "JPEG", "jpg", "JPG", "png", "PNG", "gif", "GIF");
					$temporary 		 = explode(".", $file_name);
					$fileExtension   = end($temporary);
					$newFileName 	 = $id."_".$que.date("Ymdhisa").".".$fileExtension;
					$saveAs 		 = "../assets/".$dir."/".$newFileName;

					if (in_array($fileExtension, $Validextensions)) {
						if(move_uploaded_file($file_tmp, $saveAs)){
							$sql = "UPDATE ".$table." SET ".$field."='".$newFileName."' WHERE id_data ='".$id."'";

							$result = $this->db->query($sql);
							if($result){
								$feedStatus	= "success";
								$feedType   = "success".is_dir($saveAs);
								$feedMessage= "The process has been successful";
							}
						}else{
							$feedMessage = $feedMessage." HERE ".$dir." :: ".$saveAs;
						}
					}
				}
				/*upload end*/

			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;

		}

		public function uploadMultiImage($image, $dir, $table, $field, $id){
			error_reporting(E_ALL);
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to upload data!";
			$feedData	= array();

			$temp		= "";
			$counter	= 0;

			/* open connection */
			$gate = $this->db;
			if($gate){

				/*upload image*/
				if(isset($image)){

					foreach($image['tmp_name'] as $key => $tmp_name ){
						$counter++;
					    $file_name = $key.$image['name'][$key];
					    $file_size = $image['size'][$key];
					    $file_tmp  = $image['tmp_name'][$key];
					    $file_type = $image['type'][$key];

						$Validextensions = array("jpeg", "JPEG", "jpg", "JPG", "png", "PNG", "gif", "GIF");
						$temporary 		 = explode(".", $file_name);
						$fileExtension   = end($temporary);
						$newFileName 	 = $dir."_".$id."(".$counter.")".".".$fileExtension;
						$saveAs 		 = "../assets/".$dir."/".$newFileName;

						if (in_array($fileExtension, $Validextensions)) {
							if(move_uploaded_file($file_tmp, $saveAs)){
								$temp = ($temp == "") ? $newFileName : $temp.",".$newFileName;
							}

							if($temp != ""){
								$newFileName = $temp;

								$sql = "UPDATE ".$table." SET ".$field."='".$newFileName."' WHERE id_data ='".$id."'";
								$result = $this->db->query($sql);
								if($result){
									$feedStatus	= "success";
									$feedType   = "success";
									$feedMessage= "The process has been successful";
								}
							}
						}

					}

				}
				/*upload end*/

			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;

		}

		public function uploadZoomImage($image, $dir, $table, $field, $id, $que){
			error_reporting(E_ALL);
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to upload data!";
			$feedData	= array();

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				/*upload image*/
				if(isset($image)){

					$file_name = $image['name'];
				    $file_size = $image['size'];
				    $file_tmp  = $image['tmp_name'];
				    $file_type = $image['type'];

					$Validextensions = array("jpeg", "JPEG", "jpg", "JPG", "png", "PNG", "gif", "GIF");
					$temporary 		 = explode(".", $file_name);
					$fileExtension   = end($temporary);
					$newFileName 	 	 = $dir."_".$id."_".$que.".".$fileExtension;
					$saveAs 		 		 = "../assets/".$dir."/large/".$newFileName;

					if (in_array($fileExtension, $Validextensions)) {
						if(move_uploaded_file($file_tmp, $saveAs)){

							$this->imageThumb($saveAs, "../assets/products/small/".$newFileName, 340);
							$sql = "UPDATE ".$table." SET ".$field."='".$newFileName."' WHERE id_data ='".$id."'";

							$result = $this->db->query($sql);
							if($result){
								$feedStatus	= "success";
								$feedType   = "success";
								$feedMessage= "The process has been successful";
							}
						}
					}
				}
				/*upload end*/

			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;

		}

		public function imageThumb($src,$dest,$desired_width = false, $desired_height = false){
		    /*If no dimenstion for thumbnail given, return false */
		    // if (!$desired_height&&!$desired_width) return false;
		    $fparts = pathinfo($src);

		    $ext = strtolower($fparts['extension']);
		    /* if its not an image return false */
		    if (!in_array($ext,array('gif','jpg','png','jpeg'))) return false;

		    /* read the source image */
		    if ($ext == 'gif')
		        $resource = imagecreatefromgif($src);
		    else if ($ext == 'png')
		        $resource = imagecreatefrompng($src);
		    else if ($ext == 'jpg' || $ext == 'jpeg')
		        $resource = imagecreatefromjpeg($src);

		    $width  = imagesx($resource);
		    $height = imagesy($resource);
		    /* find the "desired height" or "desired width" of this thumbnail, relative to each other, if one of them is not given  */
		    if(!$desired_height) $desired_height = floor($height*($desired_width/$width));
		    if(!$desired_width)  $desired_width  = floor($width*($desired_height/$height));

		    /* create a new, "virtual" image */
		    $virtual_image = imagecreatetruecolor($desired_width,$desired_height);

		    /* copy source image at a resized size */
		    imagecopyresized($virtual_image,$resource,0,0,0,0,$desired_width,$desired_height,$width,$height);

		    /* create the physical thumbnail image to its destination */
		    /* Use correct function based on the desired image type from $dest thumbnail source */
		    $fparts = pathinfo($dest);
		    $ext = strtolower($fparts['extension']);
		    /* if dest is not an image type, default to jpg */
		    if (!in_array($ext,array('gif','jpg','png','jpeg'))) $ext = 'jpg';
		    $dest = $fparts['dirname'].'/'.$fparts['filename'].'.'.$ext;

		    if ($ext == 'gif')
		        imagegif($virtual_image,$dest);
		    else if ($ext == 'png')
		        imagepng($virtual_image,$dest,1);
		    else if ($ext == 'jpg' || $ext == 'jpeg')
		        imagejpeg($virtual_image,$dest,100);

		    return true;
		}

		//UPLOAD FILE
		public function uploadFile($image, $dir, $table, $field, $id, $custom_name = ""){
			error_reporting(E_ALL);
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Something went wrong, failed to upload data!";
			$feedData	= array();

			$temp		= "";

			/* open connection */
			$gate = $this->db;
			if($gate){

				/*upload image*/
				if(isset($image)){

					$file_name = $image['name'];
			    $file_size = $image['size'];
			    $file_tmp  = $image['tmp_name'];
			    $file_type = $image['type'];

					$temporary 		 = explode(".", $file_name);
					$fileExtension = end($temporary);
					$newFileName 	 = (($custom_name != "") ? (str_replace(' ', '', $custom_name)).".".$fileExtension : "file_".$id.".".$fileExtension);
					$saveAs 		   = "../assets/".$dir."/".$newFileName;

					if(move_uploaded_file($file_tmp, $saveAs)){
						$sql = "UPDATE ".$table." SET ".$field."='".$newFileName."' WHERE id_data ='".$id."'";
						$result = $this->db->query($sql);
						if($result){
							$feedStatus	= "success";
							$feedType   = "success".is_dir($saveAs);
							$feedMessage= "The process has been successful";
						}
					}
				}
				/*upload end*/

			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;

		}

	}

?>
