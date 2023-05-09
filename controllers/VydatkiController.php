<?php

class VydatkiController extends FrontController
{

    public function actionKost($list = 1) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("kost");
        $vydatki = new Vydatki();
        $total = $vydatki->getTotalKost();
        $pagination = new Pagination($total,$list,Vydatki::LIMIT_LIST,'list-');
        $kost = $vydatki->getAllKost($list);

        require_once(ROOT . '/view/vydatki/kost/index.php');

        return true;
    }

    public static function actionAddkost() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("kost_add");

        $vydatki = new Vydatki();

        $to_mail = '';
        $number = '';
        $date_mail = '';
        $date_to = '';
        $description = '';
        $work_mail = 'Прошу внести';
        $work_to = User::getUserList();

        $errors = '';

        if(isset($_POST["submit"])) {
            $to_mail = trim($_POST["to_mail"]);
            $number = trim($_POST["number"]);
            $description = trim($_POST["description"]);
            $date_mail = trim($_POST["date_mail"]);
            $date_to = trim($_POST["date_to"]);
            $work_to = trim($_POST["work_to"]);


            if($errors == false) {
                $result = $vydatki -> registerKost($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to);
            }
        }

        require_once(ROOT . '/view/vydatki/kost/add.php');

        return true;
    }

    public function actionRozp($list = 1) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("rozp");
        $vydatki = new Vydatki();
        $total = $vydatki->getTotalRozp();
        $pagination = new Pagination($total,$list,Vydatki::LIMIT_LIST,'list-');
        $rozp = $vydatki->getAllRozp($list);

        require_once(ROOT . '/view/vydatki/rozp/index.php');

        return true;
    }

    public static function actionAddrozp() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("rozp_add");

        $vydatki = new Vydatki();

        $to_mail = '';
        $number = '';
        $date_mail = '';
        $date_to = '';
        $description = 'Розподіл';
        $work_mail = 'Прошу внести в облік';
        $work_to = User::getUserList();

        $errors = '';

        if(isset($_POST["submit"])) {
            $to_mail = trim($_POST["to_mail"]);
            $number = trim($_POST["number"]);
            $date_mail = trim($_POST["date_mail"]);
            $date_to = trim($_POST["date_to"]);
            $work_to = trim($_POST["work_to"]);


            if($errors == false) {
                $result = $vydatki -> registerRozp($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to);
            }
        }

        require_once(ROOT . '/view/vydatki/rozp/add.php');

        return true;
    }
}