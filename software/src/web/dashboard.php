<? 
	//Make sure we are logined in, and we are admin.
	session_start();
	if( !isset($_SESSION['username']) )
	{
		header("location:login.php");
	}
?>

<?php require_once("_header.php"); ?>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script>
	
		$(document).ready(function() {
			
			// do stuff
			
		}
	
	</script>

	<div class="logout">
		<a href="dologout.php">logout</a>
	</div>

<?php require_once("_footer.php"); ?>