<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PlayerDB
 *
 * @author dominic
 */
class PlayerDB {
    //put your code here
    
    public static function insertNewPlayer($currentPlayer){
        $db = Database::getDB();
 
      $query = 'INSERT INTO players (playerUserName, PlayerEmail, PlayerPasswordHash)'
              . 'VALUES (:userName, :email, :password)';
      $statement = $db->prepare($query);
      $statement->bindValue(':userName', $currentPlayer->getUserName() );
      $statement->bindValue(':email', $currentPlayer->getEmail() );
      $statement->bindValue(':password', $currentPlayer->getPassword());
      $statement->execute();
      $idNum = $db->lastInsertId(); 
      $statement->closeCursor();
      return $idNum; 
    }
    
    public static function setPlayerItem($currentPlayer){
        $db = Database::getDB();
        
      $query = 'UPDATE players SET playerItem = :playerItem'
              . ' WHERE PlayerID = :currentID';
      $statement = $db->prepare($query);
      $statement->bindValue(':currentID', $currentPlayer->getId());
      $statement->bindValue(':playerItem', $currentPlayer->getPlayerItem());
      $statement->execute();
      $statement->closeCursor();
      return;
    }

    public static function getPasswordHash($userName){
        $db = Database::getDB();
 
      $query = 'SELECT playerPasswordHash FROM players '
              . 'WHERE playerUserName = :userName';
      $statement = $db->prepare($query);
      $statement->bindValue(':userName', $userName );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
    public static function compareUserName($userName){
        $db = Database::getDB();
 
      $query = 'SELECT PlayerUserName FROM players '
              . 'WHERE PlayerUserName = :username';
      $statement = $db->prepare($query);
      $statement->bindValue(':username', $userName );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
    public static function compareEmail($email){
        $db = Database::getDB();
 
      $query = 'SELECT PlayerEmail FROM players '
              . 'WHERE PlayerEmail = :email';
      $statement = $db->prepare($query);
      $statement->bindValue(':email', $email );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
    public static function getPlayer($userName){
        $db = Database::getDB();
 
      $query = 'SELECT * FROM players '
              . 'WHERE playerUserName = :userName';
      $statement = $db->prepare($query);
      $statement->bindValue(':userName', $userName );
      $statement->execute();
      $results =  $statement->fetchAll();
      return $results;
    }
    
}
