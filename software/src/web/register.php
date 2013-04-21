<?php require_once("_header.php"); ?>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script>
	
		$(document).ready(function() {
			
			// do stuff
			
		}
	
	</script>

	<div class="loginentry">

		<form name="loginform" action="dologin.php" method="post">

			Name:</br>
			<input name="myusername" type="text" id="myusername"></br>
			</br>

			Zip code:</br>
			<input name="myusername" type="text" id="myusername"></br>
			</br>
			</br>

			Email Address:</br>
			<input name="myusername" type="text" id="myusername"></br>
			</br>
			
			Password:</br>
			<input name="mypassword" type="password" id="mypassword"></br>
			</br>
			
		
		</form>
	
	</div>
	
	<div class="buttonwrapper">
		<div class="button" id="loginbutton">Register</div>
	</div>

<?php require_once("_footer.php"); ?>