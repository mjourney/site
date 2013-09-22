<?php
	$requestPath = request_path();
	if(strlen($requestPath) == 0) {
		include_once 'page.home.tpl.php';
// 		include_once 'page.other.php';
		return;
	} else {
		include_once 'page.other.php';
		return;
	}
