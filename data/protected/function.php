<?php

	Class auth {
		public function __construct(){
      if (session_id() == '') { session_start(); }
			require_once('protected/config.php');
			$this->db = openGate();
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

				$sql = "INSERT INTO ".$table."(".$fields.", created_by, created_date) VALUES (".$values.", '".$_SESSION['ayom_user_username']."',NOW())";

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

				$sql = "UPDATE ".$table." SET ".$values.", change_by = '".$_SESSION['ayom_user_username']."', change_date = NOW() WHERE id_data = '".$id."'";

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
  }

?>
