<?php

	session_start();
	unset($_SESSION['username']);
	unset($_SESSION['loggedin']);
	unset($_SESSION['invalidlogin']);

?>

<?php require_once("_header.php"); ?>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script>
	
		$(document).ready(function() {
			
			// do stuff
			
		}
	
	</script>

	<META HTTP-EQUIV="refresh" CONTENT="1;URL=index.php">

	<div>
		<br><br>
		Loggin Out ...
	</div>
	
<?php require_once("_footer.php"); ?>