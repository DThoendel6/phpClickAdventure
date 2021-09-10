<!--
-Author: Dominic Thoendel
-->
<?php
class Area {
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
