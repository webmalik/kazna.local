<?php

class FrontController {

    public static function checkUser() {
        if(User::checkLogged()) {
            return $user_info = User::getUserById($_SESSION['user']);
        }
        return false;
    }   

    public static function checkText($text) {
        if(strlen($text) > 3) {
            return true;
        }
        return false;
    }

}

?>