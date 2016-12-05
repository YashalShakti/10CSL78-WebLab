<?php
	session_start();	
	if (!isset($_SESSION["count"])) {
		print "You are visiting for the first time.";
		$_SESSION["count"]=1;
	} else {
		print "Visit count: ".++$_SESSION["count"];
	}
?>

<!-- You can use session_destroy(); after session_start(); once to restart the counter -->