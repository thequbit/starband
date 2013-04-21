<?php

	require_once("DatabaseTool.class.php");
	

	class LoginManager
	{
	
		function Validate($username, $password)
		{
	
			dprint( "validate() Start." );
			
			try
			{
		
				$db = new DatabaseTool();
			
				// create the query
				$query = 'SELECT COUNT(displayname) AS count, displayname FROM users WHERE username = ? AND password = ? AND verified <> 0';
			
				$passhash = md5($password);
			
				echo $passhash;
			
				$mysqli = $db->Connect();
				$stmt = $mysqli->prepare($query);
				$stmt->bind_param("ss", $username,$passhash);
				$results = $db->Execute($stmt);
			
				dprint( "Processing " . count($results) . " Results ..." );
			
				if( $results[0]['count'] != 0 )
					$displayname = $results[0]['displayname'];
				else
					$displayname = null;
			
				// close our DB connection
				$db->Close($mysqli, $stmt);
			
			}
			catch (Exception $e)
			{
				dprint( "Caught exception: " . $e->getMessage() );
			}
			
			dprint("Validate() Done.");
			
			return $displayname;
		}
	
		function CreateUser($username, $password, $displayname)
		{
	
			dprint( "validate() Start." );
			
			try
			{
		
				$db = new DatabaseTool();
			
				// create the query
				$query = 'INSERT INTO users(username,password,displayname) VALUES(?,?,?)';
			
				$passhash = md5($password);
			
				$mysqli = $db->Connect();
				$stmt = $mysqli->prepare($query);
				$stmt->bind_param("sss", $username,$passhash,$displayname);
				$results = $db->Execute($stmt);
			
				dprint( "Processing " . count($results) . " Results ..." );
			
				if( $results[0]['count'] != 0 )
					$displayname = $results[0]['displayname'];
				else
					$displayname = null;
			
				// close our DB connection
				$db->Close($mysqli, $stmt);
			
			}
			catch (Exception $e)
			{
				dprint( "Caught exception: " . $e->getMessage() );
			}
			
			dprint("Validate() Done.");
			
			return $displayname;
		}
	
	}