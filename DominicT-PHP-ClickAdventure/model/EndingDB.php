<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of EndingDB
 * @var $ending Ending
 * @author dt420622
 */
class EndingDB {
    //put your code here
     public static function getEnding($endingID){
        $db = Database::getDB();
 
      $query = 'SELECT * FROM endings '
              . 'WHERE endingID = :endingID';
      $statement = $db->prepare($query);
      $statement->bindValue(':endingID', $endingID );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
    public static function createEnding($currentEndingAchieved){
        $db = Database::getDB();
 
      $query = 'INSERT INTO ending(endingName,endingTime, playerEnd, endingID) '
              . 'VALUES(:endingTitle,CURRENT_TIMESTAMP,:playerEnd,:endingID)';
      $statement = $db->prepare($query);
      $statement->bindValue(':endingTitle', $currentEndingAchieved->getEndingName() );
      $statement->bindValue(':playerEnd', $currentEndingAchieved->getPlayerEnd() );
      $statement->bindValue(':endingID', $currentEndingAchieved->getEndingID() );
      $statement->execute();
    }
     public static function getPlayerEndings($playerID){
        $db = Database::getDB();
 
      $query = 'SELECT * FROM ending '
              . 'WHERE playerEnd = :playerID';
      $statement = $db->prepare($query);
      $statement->bindValue(':playerID', $playerID );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
    
    public static function checkPlayerEndings($playerID, $endingID){
        $db = Database::getDB();
 
      $query = 'SELECT * FROM ending '
              . 'WHERE playerEnd = :playerID '
              . 'AND EndingID = :endingID';
      $statement = $db->prepare($query);
      $statement->bindValue(':playerID', $playerID );
      $statement->bindValue(':endingID', $endingID );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
}
