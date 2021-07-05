<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AreaDB
 *
 * @author dominic
 */
class AreaDB {
    //put your code here
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
