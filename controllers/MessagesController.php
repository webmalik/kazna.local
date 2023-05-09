<?php

class MessagesController {

    public static function actionIndex() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug('messages');
        $users = User::getUserList();

        $messages = new Messages();
        $dialogs = $messages -> getAllDialogByUser($user_info['id']);
        $messages = $messages -> getMessageByDialog();

        require_once (ROOT . '/view/messages/index.php');

        return true;
    }

    public static function actionDialog($dialog) {

        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug('messages');

        $messages = new Messages();
        $dialogs = $messages -> getAllDialogByUser($user_info['id']);
        $messager = $messages -> getMessageByDialog($dialog);

        foreach ($messager as $message) {
            if($message['sender'] === $user_info['id']) {
                if($message['status'] == 1) {
                    echo "<div class=\"no-read\">";
                    echo "<div class=\"message message-from\">";
                    echo "<p class=\"message-text\">".$message['message']."</p>";
                    echo "<p class=\"message-date\">".date('H:i d.m.Y', $message['date'])."</p>";
                    echo "</div>";
                    echo "</div>";
                }else {
                    echo "<div class=\"message message-from\">";
                    echo "<p class=\"message-text\">".$message['message']."</p>";
                    echo "<p class=\"message-date\">".date('H:i d.m.Y', $message['date'])."</p>";
                    echo "</div>";
                }

            }else {
                if($message['status'] == 1) {
                    echo "<div class=\"no-read\">";
                    echo "<div class=\"message message-to\">";
                    echo "<p class=\"message-text\">".$message['message']."</p>";
                    echo "<p class=\"message-date\">".date('H:i d.m.Y', $message['date'])."</p>";
                    echo "</div>";
                    echo "</div>";
                }else {
                    echo "<div class=\"message message-to\">";
                    echo "<p class=\"message-text\">".$message['message']."</p>";
                    echo "<p class=\"message-date\">".date('H:i d.m.Y', $message['date'])."</p>";
                    echo "</div>";
                }

            }
        }

        return true;
    }

    public static function actionAdd($dialog) {

        $user_info = FrontController::checkUser();

        $messages = new Messages();
        $messager = $messages -> getMessageByDialog($dialog);

        $message_post = $_POST['message'];

        $messages->newMessage($dialog, $user_info['id'], $message_post);

        return true;
    }

    public function actionRefresher() {
        $user_info = FrontController::checkUser();
        $dialogs = Messages::getAllDialogByUser($user_info['id']);
        $result = 0;

        foreach ($dialogs as $dialog) {
            $result += Messages::countMessage($dialog['id'], $user_info['id']);
        }
        $_SESSION['mess'] = $result;
        echo $_SESSION['mess'];
    }

    public function actionRead($id) {
        $user_info = FrontController::checkUser();
        Messages::readMessage($id, $user_info['id']);
        return '';
    }

    public static function actionPrintNewMessage($i = 0) {
        $user_info = FrontController::checkUser();
        $users = new User();
        $messages = new Messages();
        if ($i == 0) {
            $message = $messages->isNewMessage($user_info['id']);
            foreach ($message as $mess) {
                $user = $users->getUserById($mess['sender']);
                echo "<div class=\"new-message\" data-dialog = \"".$mess['dialog']."\" onclick='window.location.href=\"/messages\"'>";
                echo "<h4>У вас нове повідомлення</h4>";
                echo "<img class=\"avatar av-mess img-circle\" src=\"\\".$user['photo']."\" alt=\"".$user['last_name']." ".$user['first_name']." ".$user['middle_name']."\">";
                echo "<a href=\"/profile/".$user['login']."\">".$user['last_name']." ".$user['first_name']." ".$user['middle_name']."</a>";
                echo "<p>".$mess['message']."</p>";
                echo "</div>";
            }
        } else {

        }

    }

}

?>