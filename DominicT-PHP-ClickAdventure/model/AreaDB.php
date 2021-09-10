<!--
-Author: Dominic Thoendel
-->
<?php
class AreaDB {
    public static function getNextLocaiton($nextLocation){
      $db = Database::getDB();
 
      $query = 'SELECT areaID, areaTerrain, areaStory, areaItem, areaItemCheck FROM locations '
              . 'WHERE areaID = :nextLocation';
      $statement = $db->prepare($query);
      $statement->bindValue(':nextLocation', $nextLocation );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
}
