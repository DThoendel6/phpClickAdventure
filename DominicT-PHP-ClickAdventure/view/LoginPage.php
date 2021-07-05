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
                    <h1>Login</h1>
                    <form action="index.php" method="post">

                        <input type="hidden" name="action" value="loginPlayer">
                        
                        <label>Username:</label><br>
                        <input type="text" name="loginUName" value=""><br>
                        <p style="color: red"><?php controllerSecurity::xecho($uName) ?></p>

                        <label>Password:</label><br>
                        <input type="password" name="loginPassword" value=""><br>
                        <p style="color: red"><?php controllerSecurity::xecho($pWord) ?></p> 

                        <label>&nbsp;</label><br>
                        <input type="submit" value="Login"><br>
                    </form>
                    <br> OR <br>
                    <form action="index.php" method="post">

                        <input type="hidden" name="action" value="homePage">
                        <input type="submit" value="Back to Register"><br>
                    </form>
                </div>
            </main>                
            <footer>

            </footer>
        </div>

    </body>
</html>
