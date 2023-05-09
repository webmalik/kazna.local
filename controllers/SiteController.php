<?php

class SiteController extends FrontController
{
    public function actionIndex() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("home");

        require_once (ROOT . '/view/site/index.php');

        return true;
    }

    public function actionNotadmin() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("error");

        require_once (ROOT . '/view/site/not-admin.php');

        return true;
    }
}