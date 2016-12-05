<?php
	date_default_timezone_set('Asia/Kolkata'); # This line is necessary in some cases 
	$date=date("d/m/y h:i:s a");
	setcookie("cookie", $date, time()+3600*24*30);
	if(!isset($_COOKIE["cookie"])) {
		print("You are visiting for first time");
	} else {
		print("Your last visit: ".$_COOKIE["cookie"]);
	}
?>