<?php
function getConnection() {
	$dbhost="localhost";
	$dbuser="root";
	$dbpass="";
	$dbname="Matrix";
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbh;
}
	$sql = "select id as memberId, parent as parentId  ,user as otherInfo from users";
	try {
		$db = getConnection();
		$stmt = $db->query($sql);  
		$wines = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($wines);
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}
?>
