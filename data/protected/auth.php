<?php

	Class auth {
		public function __construct(){
			if (session_id() == '') { session_start(); }
			require_once('protected/config.php');
			$this->db = openGate();
		}

		public function login($post){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "failed";
			$feedType   = "danger";
			$feedMessage= "Username or password not match!";
			$feedData	= array();

			$temp		= "";
			$username = $post['username'];
			$password = $post['password'];

			/* open connection */
			$gate = $this->db;
			if($gate){

				$sql = "SELECT u.id_data, u.username, u.name, u.type, d.name as departement, u.picture FROM users u LEFT JOIN departments d ON u.departmentId = d.id_data WHERE u.username = '".$username."' AND u.password = md5('".$password."')";

				$result = $this->db->query($sql);
				if($result){
					$feedData   = $result->fetchAll(PDO::FETCH_ASSOC);
					if(isset($feedData[0]) && $feedData[0]['username'] != "" && $feedData[0]['username'] != null){
						$feedData		= $feedData[0];
						$feedStatus	= "success";
						$feedType   = "success";
						$feedMessage= "The process has been successful";

						$_SESSION['ayom_customer_id'] 			= $feedData['id_data'];
						$_SESSION['ayom_user_name'] 				= $feedData['name'];
						$_SESSION['ayom_user_username'] 		= $feedData['username'];
						$_SESSION['ayom_user_type'] 				= $feedData['type'];
						$_SESSION['ayom_user_picture'] 		  = $feedData['picture'];
						$_SESSION['ayom_user_departement']  = $feedData['departement'];
					}
				}
			}

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;
		}

		public function logout(){
			/* initial condition */
			$resultList = array();
			$feedStatus	= "success";
			$feedType   = "success";
			$feedMessage= "Success to logout!";
			$feedData	= array();

			$temp		= "";

			// remove all session variables
			session_unset();

			// destroy the session
			session_destroy();

			$resultList = array( "feedStatus" => $feedStatus, "feedType" => $feedType, "feedMessage" => $feedMessage, "feedData" => $feedData);

			/* result fetch */
			$json = $resultList;

			return $json;
		}
	}
?>
