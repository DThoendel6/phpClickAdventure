<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        Made it to the end screen! Have you found all 7 endings?
        <table> 
            <tr>
                <th>Ending Name</th>    
                <th>Ending Time</th>  
            </tr>
            <br>
            <?php foreach ($endings as $ending) { ?>
                <tr>
                    <td><?php controllerSecurity::xecho($ending->getEndingName()); ?></td>
                    <td><?php controllerSecurity::xecho($ending->getEndingTime()); ?></td>
                </tr>
                <br>
            <?php } ?>
        </table>

        <form action="./index.php" method="post">
            <input type="hidden" name="action" value="nextArea">
            <input type="hidden" name="nextLocation" value="1">
            <input type="submit" value="Play Again"><br><br>
        </form>
    </body>
</html>
