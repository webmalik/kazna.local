<?php

class UserController extends FrontController
{
    public function actionRegistration() {
        $user_info = FrontController::checkUser();

        $pages = new Pages();
        $user = new User();
        $page = $pages->getPageBySlug("registration");

        $viddilList = Front::getViddilList();

        $first_name = '';
        $middle_name = '';
        $last_name = '';
        $email = '';
        $login = '';
        $password = '';

        $errors = '';

        if(isset($_POST["submit"])) {
            $first_name = trim($_POST["first_name"]);
            $middle_name = trim($_POST["middle_name"]);
            $last_name = trim($_POST["last_name"]);
            $viddil = trim($_POST["viddil"]);
            $email = trim($_POST["email"]);
            $login = trim($_POST["login"]);
            $password = trim($_POST["password"]);

            if(!$user->checkText($first_name)) {
                $errors[] = "Ім'я не може бути менше 3 символів";
            }

            if(!$user->checkText($middle_name)) {
                $errors[] = "Бо-батькові не може бути менше 3 символів";
            }

            if(!$user->checkText($last_name)) {
                $errors[] = "Прізвище не може бути менше 3 символів";
            }

            if(!$user->checkEmail($email)) {
                $errors[] = "Неправильно введений E-Mail";
            }

            if(!$user->checkLogin($login)) {
                $errors[] = "Логін повинен містити лише латинські літери та цифри";
            }

            if($user->checkEmailExists($email)) {
                $errors[] = "Даний E-Mail уже існує";
            }

            if($user->checkLoginExists($login)) {
                $errors[] = "Даний Логін уже існує";
            }

            if(!$user->checkPassword($password)) {
                $errors[] = "Пароль не може містити менше шести символів";
            }

            $password = $user->cryptPass($password);

            if($errors == false) {
                $result = $user -> register($first_name, $middle_name, $last_name, $viddil, $email, $login, $password);
            }
        }

        require_once "view/user/registration.php";
    }

    public function actionAuth() {
        $pages = new Pages();
        $user = new User();
        $page = $pages->getPageBySlug("auth");

        $errors = '';

        if(isset($_POST["submit"])) {
            $login = trim($_POST["login"]);
            $password = trim($_POST["password"]);
            $password = $user->cryptPass($password);
            if(!$user->checkLogin($login)) {
                $errors[] = "Логін повинен містити лише латинські літери та цифри";
            }else if(!$user->checkLoginExists($login)) {
                $errors[] = "Даний Логін не зареєстрований";
            } else if ($user->checkBlock($login)) {
                $errors[] = "Даний користувач заблокований";
            } else {
                $result = $user->checkUserData($login, $password);
                if($result === false) {
                    $errors[] = "Неправильно введений пароль";
                }
            }

            if($errors == false) {
                $user->auth($result);
                header("Location: /");
            }
        }

        require_once "view/user/auth.php";
    }

    public function actionMyprofile() {
        $user_info = FrontController::checkUser();
        $page["title"] = "Мій профіль - ".$user_info['last_name']." ".$user_info['first_name']." ".$user_info['middle_name'];

        require_once "view/user/myprofile.php";
    }

    public function actionProfile($login) {
        $user_info = FrontController::checkUser();

        $users = new User();
        $user = $users->getUserByLogin($login);
        $page["title"] = $user['last_name']." ".$user['first_name']." ".$user['middle_name'];
        
        require_once "view/user/profile.php";
    }

    public function actionLogout() {

        unset($_SESSION["user"]);

        header("Location: /");
    }

}