<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Button
 *
 * @author dominic
 */
class Button {
    //put your code here
    private $buttonID, $buttonAreaID, $buttonNextAreaID, $buttonText, $buttonEndingID;
    function __construct($buttonID, $buttonAreaID, $buttonNextAreaID, $buttonText, $buttonEndingID) {
        $this->buttonID = $buttonID;
        $this->buttonAreaID = $buttonAreaID;
        $this->buttonNextAreaID = $buttonNextAreaID;
        $this->buttonText = $buttonText;
        $this->buttonEndingID = $buttonEndingID;
    }
    function getButtonID() {
        return $this->buttonID;
    }

    function getButtonAreaID() {
        return $this->buttonAreaID;
    }

    function getButtonNextAreaID() {
        return $this->buttonNextAreaID;
    }

    function getButtonText() {
        return $this->buttonText;
    }

    function setButtonID($buttonID) {
        $this->buttonID = $buttonID;
    }

    function setButtonAreaID($buttonAreaID) {
        $this->buttonAreaID = $buttonAreaID;
    }

    function setButtonNextAreaID($buttonNextAreaID) {
        $this->buttonNextAreaID = $buttonNextAreaID;
    }

    function setButtonText($buttonText) {
        $this->buttonText = $buttonText;
    }
    function getButtonEndingID() {
        return $this->buttonEndingID;
    }

    function setButtonEndingID($buttonEndingID) {
        $this->buttonEndingID = $buttonEndingID;
    }



}
