<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Stranded</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="main.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 

    </head>
    <body>
        <div class="center">
            <?php // include('links.php'); ?>
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
                        <p style="color: red"><?php controllerSecurity::xecho($pWord) ?></p> 

                        <label>&nbsp;</label><br>
                        <input type="submit" value="Register"><br>
                    </form>
                    <br> OR <br>
                    <form action="index.php" method="post">

                        <input type="hidden" name="action" value="LogIn">
                        <input type="submit" value="Or Login"><br>
                    </form>
                </div>
            </main>                
            <footer>

            </footer>
        </div>

    </body>
</html>
