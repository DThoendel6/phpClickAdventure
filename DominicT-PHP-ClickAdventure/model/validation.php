<!--
-Author: Dominic Thoendel
-Concepts taken from my PHP class given by Fred Scott
-->
<?php

class Validation {

    public static function isNotEmpty($arg, $label) {
        if ($arg === null || $arg === "") {
            return $label . ' must not be empty';
        } else {
            return "";
        }
    }

    public static function isUnique($arg, $label, $columnName) {
        if ($columnName === "userName") {
            $uCompare = PlayerDB::compareUserName($arg);
            if (empty($uCompare)) {
                return "";
            } else {
                return $label . ' is already taken';
            }
        } else if ($columnName === "email") {
            $uCompare = PlayerDB::compareEmail($arg);
            if (empty($uCompare)) {
                return "";
            } else {
                return $label . ' is already taken';
            }
        } else {
            return $label . ' invalid column';
        }
    }
    
    public static function checkUserName($arg, $label){
        if(!((strlen($arg)>=4)&&(strlen($arg)<=30))){
            return $label . " must be between 4 and 30 characters.";
        }
        if (preg_match('/^[A-Za-z]/', $arg) === 1) {
            return "";
        } else{
            return $label . " must begin with a letter.";
        }
        
    }
    
    public static function checkPassword($arg) {
        $counter = 0;
        $errorString = "\nYour password must have at least 3 of the following:<br>";
        if (preg_match('/[A-Z]/',$arg)===1) {
            $counter++;
            $errorString=$errorString."Included: You have at least 1 uppercase character <br>";
        }else{
            $errorString=$errorString."Not Included: You must have at least 1 uppercase character <br>";
        }
        if (preg_match('/[a-z]/',$arg)===1) {
            $counter++;
            $errorString=$errorString."Included: You have at least 1 lowercase character <br>";
        }else{
            $errorString=$errorString."Not Included: You must have at least 1 lowercase character <br>";
        }
        if (preg_match('/[0-9]/',$arg)===1) {
            $counter++;
            $errorString=$errorString."Included: You have at least 1 digit (0-9) <br>";
        }else{
            $errorString=$errorString."Not Included: You must have at least 1 digit (0-9) <br>";
        }
        if (preg_match('/[!@#$%^&*()?\-=_+<>]/',$arg)===1) {
            $counter++;
            $errorString=$errorString."Included: You have at least 1 special character (!@#$%^&*()?-=_+<>)<br>";
        }else{
            $errorString=$errorString."Not Included: You must have at least 1 special character (!@#$%^&*()?-=_+<>) <br>";
        }
        if ($counter >= 3) {
           return ""; 
        } else {
            return $errorString;
        }
    }

}
