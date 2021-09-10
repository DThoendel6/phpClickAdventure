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
        <h3>Made it to the end screen! Have you found all 7 endings?</h3>
        <table> 
            <tr>
                <th>Ending Name</th>    
                <th>Ending Time</th>  
            </tr>
            
            <?php foreach ($endings as $ending) { ?>
                <tr>
                    <td><?php controllerSecurity::xecho($ending->getEndingName()); ?></td>
                    <td><?php controllerSecurity::xecho($ending->getEndingTime()); ?></td>
                </tr>
            <?php } ?>
        </table>
		<br>
        <form action="./index.php" method="post">
            <input type="hidden" name="action" value="nextArea">
            <input type="hidden" name="nextLocation" value="1">
            <input type="submit" value="Play Again"><br><br>
        </form>
    </body>
</html>
