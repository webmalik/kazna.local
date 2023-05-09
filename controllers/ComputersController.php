<?php

class ComputersController {

    public static function actionIndex() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("computers");

        $comp = new Computers();
        $computers = $comp->getAllComputers();

        require_once (ROOT . '/view/computers/index.php');

        return true;
    }

    public static function actionView($slug) {
        $user_info = FrontController::checkUser();

        $comp = new Computers();
        $computer = $comp->getComputerBySlug($slug);
        $comp_po = $comp->getPoBySlug($slug);
        $page["title"] = "Комп'ютер: ".$computer["comp_name"];

        require_once (ROOT . '/view/computers/view.php');

        return true;
    }

    public static function actionAddpo($slug) {
        $user_info = FrontController::checkUser();

        $comp = new Computers();
        $computer = $comp->getComputerBySlug($slug);
        $page["title"] = "Комп'ютер: ".$computer["comp_name"];

        if(isset($_POST["submit"])) {
            //print_r($_FILES);
            if ($_FILES['csv']['size'] > 0) {

                //Получаем CSV файл
                $file = $_FILES['csv']['tmp_name'];
                $handle = fopen($file, "r");
                $result  = $comp->insertPO($slug, $handle);
            }
        }

        require_once (ROOT . '/view/computers/addpo.php');

        return true;
    }

    public static function actionAdd() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("computer_add");

        $comp = new Computers();

        $comp_name = '';
        $comp_login = '';
        $name = User::getUserList();
        $os = '';
        $ip = '';
        $monitor = '';
        $system = '';
        $klav = '';
        $mouse = '';

        $errors = '';

        if(isset($_POST["submit"])) {
            $comp_name = trim($_POST["comp_name"]);
            $comp_login = trim($_POST["comp_login"]);
            $name = trim($_POST["name"]);
            $os = trim($_POST["os"]);
            $ip = trim($_POST["ip"]);
            $monitor = trim($_POST["monitor"]);
            $system = trim($_POST["system"]);
            $klav = trim($_POST["klav"]);
            $mouse = trim($_POST["mouse"]);

            if(!Front::checkText($comp_name)) {
                $errors[] = "Ім'я не може бути менше 3 символів";
            }

            if($errors == false) {
                $result = $comp -> register($comp_name, $comp_login, $name, $os, $ip, $monitor, $system, $klav, $mouse);
            }
        }

        require_once (ROOT . '/view/computers/add.php');

        return true;
    }

    public static function actionEdit($id) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("computer_edit");

        $comp = new Computers();
        $computer = $comp->getComputerById($id);

        $page["title"] = $page["title"]." ".$computer['comp_name'];

        $comp_name = '';
        $comp_login = '';
        $name = User::getUserList();
        $os = '';
        $ip = '';
        $monitor = '';
        $system = '';
        $klav = '';
        $mouse = '';

        $errors = '';

        if(isset($_POST["submit"])) {
            $comp_name = trim($_POST["comp_name"]);
            $comp_login = trim($_POST["comp_login"]);
            $name = trim($_POST["name"]);
            $os = trim($_POST["os"]);
            $ip = trim($_POST["ip"]);
            $monitor = trim($_POST["monitor"]);
            $system = trim($_POST["system"]);
            $klav = trim($_POST["klav"]);
            $mouse = trim($_POST["mouse"]);

            if(!Front::checkText($comp_name)) {
                $errors[] = "Ім'я не може бути менше 3 символів";
            }

            if($errors == false) {
                $result = $comp ->edit($computer['id'], $comp_name, $comp_login, $name, $os, $ip, $monitor, $system, $klav, $mouse);
            }
        }

        require_once (ROOT . '/view/computers/edit.php');

        return true;
    }

    public static function actionDelete($slug) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("computer_del");


        $comp = new Computers();
        $computer = $comp->getComputerBySlug($slug);
        $page["title"] = $page["title"]." ".$computer['comp_name'];

        $errors = '';

        if(isset($_POST["submit"])) {
            if($errors == false) {
                $result = $comp ->delete($slug);
            }
        }
        if (isset($_POST["cancel"])) {
            header("Location: /computers");
        }

        require_once (ROOT . '/view/computers/delete.php');

        return true;
    }

}