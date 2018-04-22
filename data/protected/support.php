<?php

	Class support {
		public function __construct(){
			// if (session_status() == PHP_SESSION_NONE) {session_start();} // session start
			if (session_id() == '') { session_start(); }
			require_once('protected/config.php');
			$this->db = openGate();
		}

		public function requestData($post, $target){
			switch($target){
				case "feedback" 				: $resultList = $this->fetchAllRequest('feedback', array("id_data", "name", "email", "category", "subject", "message"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "feedback_policy" 	: $resultList = $this->fetchAllRequest('feedback_policy', array("id_data", "name", "email", "phone", "title", "page", "paragraph", "message"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "mailing_list" 		: $resultList = $this->fetchAllRequest('mailing_list', array("id_data", "email"), $post['keyword'], "ORDER BY id_data ASC", $post['page']); break;
				case "systemFetch" 			: $resultList = $this->fetchSingleRequest('system', array("id_data", "logo", "item_viewer", "food_viewer", "medical_viewer", "acc_owner", "acc_number", "acc_bank", "item_policies", "money_policies"), $post['keyword'], "ORDER BY id_data ASC"); break;
				default	   							: $resultList = array( "feedStatus" => "failed", "feedType" => "danger", "feedMessage" => "Something went wrong, failed to collect data!", "feedData" => array()); break;
			}

			/* result fetch */
			$json = $resultList;

	        return $json;
		}

		public function removeData($post, $target){
			switch($target){
				case "feedback" 				: $resultList = $this->deleteById('feedback', $post['id']); break;
				case "feedback_policy" 	: $resultList = $this->deleteById('feedback_policy', $post['id']); break;
				case "mailing_list" 	  : $resultList = $this->deleteById('mailing_list', $post['id']); break;

				default	   : $resultList = array( "feedStatus" => "failed", "feedType" => "danger", "feedMessage" => "Something went wrong, failed to collect data!", "feedData" => array()); break;
			}

			/* result fetch */
			$json = $resultList;

	        return $json;
		}

		public function addData($post, $target){
			switch($target){
				case "feedback"  :
					$fields = array("name", "email", "category", "subject", "message");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('feedback', $fields, $values);
				break;

				case "feedback_policy"  :
					$fields = array("name", "email", "phone", "title", "page", "paragraph", "message");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? nl2br(str_replace("'", "\'", $post[$key])) : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('feedback_policy', $fields, $values);
				break;

				case "mailing_list"  :
					$fields = array("email");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						array_push($values, $value);
					}

					$resultList = $this->insert('mailing_list', $fields, $values);
				break;

				default	   		: $resultList = array( "feedStatus" => "failed", "feedType" => "danger", "feedMessage" => "Something went wrong, failed to collect data!", "feedData" => array()); break;

			}

			/* result fetch */
			$json = $resultList;

      return $json;
		}

		public function updateData($post, $target){
			switch($target){
				case "system"  :
					$fields = array("acc_owner", "acc_number", "acc_bank");
					$values = array();
					foreach ($fields as $key) {
						$value = (isset($post[$key]) && $post[$key] != "") ? $post[$key] : "";
						$values[$key] = $key." = '".str_replace(',','',$value)."'";
					}

					$resultList = $this->update('system', $values, $post['id_data']);

					if($resultList["feedStatus"] == "success" && isset($post['id_data']) && $post['id_data']!="") {
						if(isset($_FILES["logo"])){
							$upload = $this->uploadFile($_FILES["logo"], "system", "system", "logo", $post['id_data'], "logo");
							$resultList["feedUploadFile"] = $upload['feedMessage'];
						}

						if(isset($_FILES["item_viewer"])){
							$upload = $this->uploadFile($_FILES["item_viewer"], "system", "system", "item_viewer", $post['id_data'], "item_viewer");
							$resultList["feedUploadFile"] = $upload['feedMessage'];
						}
						if(isset($_FILES["food_viewer"])){
							$upload = $this->uploadFile($_FILES["food_viewer"], "system", "system", "food_viewer", $post['id_data'], "food_viewer");
							$resultList["feedUploadFile"] = $upload['feedMessage'];
						}
						if(isset($_FILES["medical_viewer"])){
							$upload = $this->uploadFile($_FILES["medical_viewer"], "system", "system", "medical_viewer", $post['id_data'], "medical_viewer");
							$resultList["feedUploadFile"] = $upload['feedMessage'];
						}

						if(isset($_FILES["item_policies"])){
							$upload = $this->uploadFile($_FILES["item_policies"], "system", "system", "item_policies", $post['id_data'], "item_policies");
							$resultList["feedUploadFile"] = $upload['feedMessage'];
						}

						if(isset($_FILES["money_policies"])){
							$upload = $this->uploadFile($_FILES["money_policies"], "system", "system", "money_policies", $post['id_data'], "money_policies");
							$resultList["feedUploadFile2"] = $upload['feedMessage'];
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

		public function fetchAllRequest($table, $fields, $conditions = "", $orderBy = "", $paging = "1"){
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
				$temp = ($temp - 1) * 20;

				$paging = "LIMIT ".$temp.",20";

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

				$user = (isset($_SESSION['tulisan_user_username']) ? $_SESSION['tulisan_user_username'] : 'guest');
				$sql = "INSERT INTO ".$table."(".$fields.", created_by, created_date) VALUES (".$values.", '".$user."',NOW())";

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

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage." - ".$saveAs, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;

		}
	}

?>
