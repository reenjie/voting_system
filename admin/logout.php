<?php
	session_start();
	unset($_SESSION['admin_id_token']);
	unset($_SESSION['electsched']);

	session_destroy();
	header("location:index.php");

?>