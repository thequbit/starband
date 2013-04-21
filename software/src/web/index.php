<?php require_once("_header.php"); ?>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script>
	
		$(document).ready(function() {
			// assign buttons
			
			var loginbutton = document.getElementById('login');
			loginbutton.onclick = function() {
				window.location = "login.php"
			};
			
			var registerbutton = document.getElementById('register');
			registerbutton.onclick = function() {
				window.location = "register.php"
			};
			
		});
		
	</script>
			
	<div class="description">

		<p>a project that came out of the 2013 NASA Space Apps Challenge, starband is a fun take on how those of us still down on earth can feel a little closer to the stars and planets above.</p>
		<p>after picking your favorite celestial bodies by name, constellation, or using Google Sky, your starband will flash any time you can look to the skies and observe them.</p>
		<p>you can also link multiple bands together to share your star gazing experience with others.</p>
		<p>through collaboration and the sharing of knowledge, we can change the world.  opensource all the things.</p>
		

	</div>

	<div id="buttons">
		<div class="buttonwrapper">
			<div class="button" id="login">Login</div>
		</div>
		<div class="buttonwrapper">
			<div class="button" id="register">Register</div>
		</div>
	</div>

<?php require_once("_footer.php"); ?>