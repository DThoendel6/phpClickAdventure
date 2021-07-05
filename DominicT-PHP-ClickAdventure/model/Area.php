<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Area
 *
 * @author dominic
 */
class Area {
    //put your code here
     private $areaID, $areaTerrain, $areaStory, $areaItem, $areaItemCheck;
     
     function __construct($areaID, $areaTerrain, $areaStory, $areaItem, $areaItemCheck) {
         $this->areaID = $areaID;
         $this->areaTerrain = $areaTerrain;
         $this->areaStory = $areaStory;
         $this->areaItem = $areaItem;
         $this->areaItemCheck = $areaItemCheck;

     }

     function getAreaID() {
         return $this->areaID;
     }

     function getAreaTerrain() {
         return $this->areaTerrain;
     }

     function getAreaStory() {
         return $this->areaStory;
     }

     function setAreaID($areaID) {
         $this->areaID = $areaID;
     }

     function setAreaTerrain($areaTerrain) {
         $this->areaTerrain = $areaTerrain;
     }

     function setAreaStory($areaStory) {
         $this->areaStory = $areaStory;
     }
     function getAreaItem() {
         return $this->areaItem;
     }

     function getAreaItemCheck() {
         return $this->areaItemCheck;
     }

     function setAreaItem($areaItem) {
         $this->areaItem = $areaItem;
     }

     function setAreaItemCheck($areaItemCheck) {
         $this->areaItemCheck = $areaItemCheck;
     }


}
