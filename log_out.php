<?php
	require_once 'include/dbcon.php';

	$q_adminname = $conn->query("SELECT * FROM `admin` WHERE `id` = '$_SESSION[id]'") or die(mysqli_error());
	$f_adminname = $q_adminname->fetch_array();
	$admin_name = $f_adminname['firstname']." ".$f_adminname['lastname'];