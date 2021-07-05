<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ButtonDB
 *
 * @author dominic
 */
class ButtonDB {
    //put your code here
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
