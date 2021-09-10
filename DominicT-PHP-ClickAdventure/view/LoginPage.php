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
		<div class="loginPage">
			<h1>Login</h1>
			<form action="index.php" method="post">

				<input type="hidden" name="action" value="loginPlayer">
                        
				<label>Username:</label><br>
				<input type="text" name="loginUName" value=""><br>
				<p style="color: red"><?php controllerSecurity::xecho($uName) ?></p>

				<label>Password:</label><br>
				<input type="password" name="loginPassword" value=""><br>
				<p style="color: red"><?php echo $pWord ?></p> 

				<br>
				<input type="submit" value="Login"><br>
			</form>
			<br> OR <br><br>
			<form action="index.php" method="post">
				<input type="hidden" name="action" value="homePage">
				<input type="submit" value="Back to Register"><br>
			</form>
		</div>
    </body>                      
	<footer>

	</footer>
       

    
</html>
