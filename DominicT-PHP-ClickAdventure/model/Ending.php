<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Ending
 *
 * @author dt420622
 */
class Ending {
    private $endingPlacementID, $endingName, $endingTime, $playerEnd, $endingID;
    
    function __construct($endingPlacementID, $endingName, $endingTime, $playerEnd, $endingID) {
        $this->endingPlacementID = $endingPlacementID;
        $this->endingName = $endingName;
        $this->endingTime = $endingTime;
        $this->playerEnd = $playerEnd;
        $this->endingID = $endingID;
    }
    function getEndingPlacementID() {
        return $this->endingPlacementID;
    }

    function getEndingName() {
        return $this->endingName;
    }

    function getEndingTime() {
        return $this->endingTime;
    }

    function getPlayerEnd() {
        return $this->playerEnd;
    }

    function getEndingID() {
        return $this->endingID;
    }

    function setEndingPlacementID($endingPlacementID) {
        $this->endingPlacementID = $endingPlacementID;
    }

    function setEndingName($endingName) {
        $this->endingName = $endingName;
    }

    function setEndingTime($endingTime) {
        $this->endingTime = $endingTime;
    }

    function setPlayerEnd($playerEnd) {
        $this->playerEnd = $playerEnd;
    }

    function setEndingID($endingID) {
        $this->endingID = $endingID;
    }


}
