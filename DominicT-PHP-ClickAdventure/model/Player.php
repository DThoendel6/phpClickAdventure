<?php

/**
 * @author dominic
 */
class Player {
    private $playerID, $userName, $email, $password, $playerItem; 
    
    function __construct($userName, $email, $password, $playerItem="None", $playerID=0 ) {
        $this->playerID = $playerID;
        $this->userName = $userName;
        $this->email = $email;
        $this->password = $password;
        $this->playerItem = $playerItem;
    }
    function getId() {
        return $this->id;
    }

    function getUserName() {
        return $this->userName;
    }

    function getEmail() {
        return $this->email;
    }

    function getPassword() {
        return $this->password;
    }

    function getPlayerItem() {
        return $this->playerItem;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setUserName($userName) {
        $this->userName = $userName;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setPassword($password) {
        $this->password = $password;
    }

    function setPlayerItem($playerItem) {
        $this->playerItem = $playerItem;
    }

}
