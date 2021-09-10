<!DOCTYPE html>
<!--
-Author: Dominic Thoendel
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Click Adventure</title>
        <link href="main.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
		<main>
			<div class="loginPage">
				<h1>Register your User</h1>
				<form action="index.php" method="post">
					<input type="hidden" name="action" value="startGame">
					
						<label>Username:</label><br>
						<input type="text" name="uName" value="<?php controllerSecurity::xecho($userName) ?>"><br>
						<p style="color: red"><?php controllerSecurity::xecho($uName) ?></p>

						<label>Email:</label><br>
						<input type="text" name="email" value="<?php controllerSecurity::xecho($email) ?>"><br>
						<p style="color: red"><?php controllerSecurity::xecho($emailCheck) ?></p>

						<label>Password:</label><br>
						<input type="password" name="password" value="<?php controllerSecurity::xecho($password) ?>"><br>
						<p style="color: red"><?php echo $pWord ?></p> 

						<br>
					<input type="submit" value="Register"><br>
				</form>
				<br> OR <br><br>
				<form action="index.php" method="post">

					<input type="hidden" name="action" value="LogIn">
					<input type="submit" value="Or Login"><br>
				</form>
			</div>
		</main>    
	</body>
	<footer>
	</footer>
   
</html>
