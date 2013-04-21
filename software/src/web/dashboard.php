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
			
			var namebutton = document.getElementById('name');
			namebutton.onclick = function() {
				window.location = "addstar.php?via=name"
			};
			
			var constellationbutton = document.getElementById('constellation');
			constellationbutton.onclick = function() {
				window.location = "addstar.php?via=constellation"
			};
			
			var locationbutton = document.getElementById('location');
			 locationbutton.onclick = function() {
				window.location = "addstar.php?via=location"
			};
			
			var otherbutton = document.getElementById('other');
			otherbutton.onclick = function() {
				window.location = "addstar.php?via=other"
			};
			
		});
	
	</script>

	<div class="logout">
		<a href="dologout.php">logout</a>
	</div>

	<div class="description">
	
		You're logged in, great!
		</br>
		
		<div class="buttonwrapper">
			<div class="widebutton" id="name">Name</div>
		</div>
		</br>
		
		<div class="buttonwrapper">
			<div class="widebutton" id="constellation">Constellation</div>
		</div>
		</br>
	
		<div class="buttonwrapper">
			<div class="widebutton" id="location">Location</div>
		</div>
		</br>
		</br>
		
		<div class="buttonwrapper">
			<div class="widebutton" id="other">Other</div>
		</div>
		</br>
		
	</div>

<?php require_once("_footer.php"); ?>