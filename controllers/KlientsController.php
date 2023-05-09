<?php

class KlientsController {

    public static function actionIndex() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("klients");

        $kl = new Klients();
        $klients = $kl->getAllKlients();

        require_once (ROOT . '/view/klients/index.php');

        return true;
    }

    public static function actionView($id) {
        $user_info = FrontController::checkUser();
        $kl = new Klients();
        $klient = $kl->getKlientById($id);
        $page["title"] = "Клієнт: ".$klient["name_s"];

        require_once (ROOT . '/view/klients/view.php');

        return true;
    }

    public static function actionAdd() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("klient_add");

        $kl = new Klients();

        $name_s = '';
        $name_p = '';
        $krk = '';
        $edrpou = '';
        $address = '';
        $tel_1 = '';
        $tel_2 = '';
        $ker_pos = '';
        $ker = '';
        $buh_pos = '';
        $buh = '';
        $budget_mb = '0';
        $budget_db = '0';
        $budget_name = '-';
        $budget_kod = '-';
        $inshi= '0';

        $errors = '';

        if(isset($_POST["submit"])) {
            $name_s = trim($_POST["name_s"]);
            $name_p = trim($_POST["name_p"]);
            $krk = trim($_POST["krk"]);
            $edrpou = trim($_POST["edrpou"]);
            $address = trim($_POST["address"]);
            $tel_1 = trim($_POST["tel_1"]);
            $tel_2 = trim($_POST["tel_2"]);
            $ker_pos = trim($_POST["ker_pos"]);
            $ker = trim($_POST["ker"]);
            $buh_pos = trim($_POST["buh_pos"]);
            $buh = trim($_POST["buh"]);
            if(isset($_POST["budget_mb"])) {
                $budget_mb = trim($_POST["budget_mb"]);
            }else $budget_mb = '0';
            if(isset($_POST["budget_db"])) {
                $budget_db = trim($_POST["budget_db"]);
            }else $budget_db = '0';
            if(isset($_POST["inshi"])) {
                $inshi = trim($_POST["inshi"]);
            }else $inshi= '0';
            $budget_name = trim($_POST["budget_name"]);
            $budget_kod = trim($_POST["budget_kod"]);

            if($errors == false) {
                $result = $kl -> register($name_s, $name_p, $krk, $edrpou, $address, $tel_1, $tel_2, $ker_pos, $ker, $buh_pos, $buh, $budget_mb, $budget_db,$budget_name,$budget_kod, $inshi);
            }
        }

        require_once (ROOT . '/view/klients/add.php');

        return true;
    }

    public static function actionEdit($id) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("klient_edit");

        $kl = new Klients();
        $klient = $kl->getKlientById($id);
        
        $name_s = '';
        $name_p = '';
        $krk = '';
        $edrpou = '';
        $address = '';
        $tel_1 = '';
        $tel_2 = '';
        $ker_pos = '';
        $ker = '';
        $buh_pos = '';
        $buh = '';
        $budget_mb = '0';
        $budget_db = '0';
        $budget_name = '-';
        $budget_kod = '-';
        $inshi= '0';

        $errors = '';

        if(isset($_POST["submit"])) {
            $name_s = trim($_POST["name_s"]);
            $name_p = trim($_POST["name_p"]);
            $krk = trim($_POST["krk"]);
            $edrpou = trim($_POST["edrpou"]);
            $address = trim($_POST["address"]);
            $tel_1 = trim($_POST["tel_1"]);
            $tel_2 = trim($_POST["tel_2"]);
            $ker_pos = trim($_POST["ker_pos"]);
            $ker = trim($_POST["ker"]);
            $buh_pos = trim($_POST["buh_pos"]);
            $buh = trim($_POST["buh"]);
            if(isset($_POST["budget_mb"])) {
                $budget_mb = trim($_POST["budget_mb"]);
            }else $budget_mb = '0';
            if(isset($_POST["budget_db"])) {
                $budget_db = trim($_POST["budget_db"]);
            }else $budget_db = '0';
            if(isset($_POST["inshi"])) {
                $inshi = trim($_POST["inshi"]);
            }else $inshi= '0';
            $budget_name = trim($_POST["budget_name"]);
            $budget_kod = trim($_POST["budget_kod"]);
            
            if($errors == false) {
                $result = $kl->edit($id, $name_s, $name_p, $krk, $edrpou, $address, $tel_1, $tel_2, $ker_pos, $ker, $buh_pos, $buh, $budget_mb, $budget_db,$budget_name,$budget_kod, $inshi);
            }
        }

        require_once (ROOT . '/view/klients/edit.php');

        return true;
    }

    public static function actionDelete($id) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("klients_del");


        $kl = new Klients();
        $klient = $kl->getKlientById($id);
        $page["title"] = $page["title"]." ".$klient['name_s'];

        $errors = '';

        if(isset($_POST["submit"])) {
            if($errors == false) {
                $result = $kl->delete($id);
            }
        }
        if (isset($_POST["cancel"])) {
            header("Location: /klients");
        }

        require_once (ROOT . '/view/klients/delete.php');

        return true;
    }

}