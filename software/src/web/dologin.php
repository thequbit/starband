<?php

	require_once("./tools/LoginManager.class.php");

	session_start();
	$_SESSION['invalidlogin'] = false;
	
	// reset any set username information
	if( isset($_SESSION['username']) )
	{
		unset($_SESSION['username']);
		unset($_SESSION['loggedin']);
		unset($_SESSION['invalidlogin']);
	}
	
	// get post data
	$username = $_POST['myusername'];
	$password = $_POST['mypassword'];
	
	// get user validation
	$loginmgr = new LoginManager();
	$displayname = $loginmgr->Validate($username,$password);
	
	if( $displayname == null )
	{
		// unsuccessful, invalid login credentials
		
		$_SESSION['invalidlogin'] = true;
		
		header("location: login.php");
	}
	else
	{
		// success!
		
		$_SESSION['username'] = $username;
		$_SESSION['displayname'] = $displayname;
		
		// redirect to the dashboard (main page).
		header("location: dashboard.php");
	}
	
?>