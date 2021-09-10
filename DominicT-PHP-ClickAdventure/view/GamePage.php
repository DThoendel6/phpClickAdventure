<!DOCTYPE html>
<!--
-Author: Dominic Thoendel
-->
<html>
    <head>
        <meta charset="UTF-8">
		<title>Click Adventure</title>
		<link href="main.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head>

    <body>
        <form action="./index.php" method="post">
                <input type="hidden" name="action" value="logout">
                <input type="submit" value="Logout"><br>
        </form>
        <h1><?php controllerSecurity::xecho($currentName) ?>'s Game </h1>
		<div id="Story">
			<?php echo $currentStory ?>
		</div>
        <br><br>
		<?php foreach ($buttons as $button) { ?>
        <!--the buttonID for the endings page is "666", 
		- if the location is 666 then you'll be sent to 
		- the end, instead of the next page.-->
			<?php if ($button->getButtonNextAreaID() === "666") { ?>
				<form action="./index.php" method="post">
					<input type="hidden" name="action" value="endings">
					<input type="hidden" name="endingID" value="<?php controllerSecurity::xecho($button->getButtonEndingID()) ?>">
					<input type="submit" value="<?php controllerSecurity::xecho($button->getButtonText()) ?>"><br><br>
				</form>
			<?php } else { ?>
			<!--if the next area is not the ending area, it will 
			- generate new buttons showing you your options-->
				<form action="./index.php" method="post">
					<input type="hidden" name="action" value="nextArea">
					<input type="hidden" name="nextLocation" value="<?php controllerSecurity::xecho($button->getButtonNextAreaID()) ?>">
                    <input type="submit" value="<?php controllerSecurity::xecho($button->getButtonText()) ?>"><br><br>
                </form>
            <?php } ?>
		<?php } ?>
        <img src="./images/<?php echo $currentTerrain ?>.png" alt="Background Image" width="480" height="360" align="center">
    </body>
</html>
