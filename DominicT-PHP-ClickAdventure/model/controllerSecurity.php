<?php

class controllerSecurity {

    static function xssafe($data, $encoding = 'UTF-8') {

        return htmlspecialchars($data, ENT_QUOTES | ENT_HTML401, $encoding);
    }

    static function xecho($data) {

         echo self::xssafe($data);
    }

}
