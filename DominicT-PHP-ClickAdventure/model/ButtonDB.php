<!--
-Author: Dominic Thoendel
-->
<?php
class ButtonDB {
    public static function getNextLocaitonButtons($nextLocation){
        $db = Database::getDB();
 
      $query = 'SELECT * FROM buttons '
              . 'WHERE buttonAreaID = :nextLocation';
      $statement = $db->prepare($query);
      $statement->bindValue(':nextLocation', $nextLocation );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
    public static function getItemButtons($currentItemCheck){
      $db = Database::getDB();
 
      $query = 'SELECT * FROM buttons '
              . 'WHERE buttonItemCheck = :currentItemCheck';
      $statement = $db->prepare($query);
      $statement->bindValue(':currentItemCheck', $currentItemCheck );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
}
