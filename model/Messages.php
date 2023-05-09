<?php

class Messages {

    public static function getAllDialogByUser($id) {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM dialog WHERE user_1 ='.$id." OR user_2=".$id." ORDER BY date DESC");

        // Получение и возврат результатов
        $i = 0;
        $dialog = array();
        while ($row = $result->fetch()) {
            $dialog[$i]['id'] = $row['id'];
            $dialog[$i]['user_1'] = $row['user_1'];
            $dialog[$i]['user_2'] = $row['user_2'];
            $i++;
        }
        return $dialog;
    }

    public static function getMessageByDialog($dialog = '1') {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM messages WHERE dialog ='.$dialog.' ORDER BY date');

        // Получение и возврат результатов
        $i = 0;
        $messages = array();
        while ($row = $result->fetch()) {
            $messages[$i]['id'] = $row['id'];
            $messages[$i]['dialog'] = $row['dialog'];
            $messages[$i]['sender'] = $row['sender'];
            $messages[$i]['message'] = $row['message'];
            $messages[$i]['date'] = $row['date'];
            $messages[$i]['status'] = $row['status'];
            $i++;
        }
        return $messages;
    }

    public static function newMessage($dialog, $sender, $message) {
        $db = DataBase::getConnection();

        $status = 1;

        $time = time();
        Messages::updateDialog($dialog);

        $sql = 'INSERT INTO `messages`( `dialog`, `sender`, `message`, `date`, `status`) VALUES (:dialog, :sender, :message, :time, :status)';

        $result = $db->prepare($sql);
        $result->bindParam(':dialog', $dialog, PDO::PARAM_STR);
        $result->bindParam(':sender', $sender, PDO::PARAM_STR);
        $result->bindParam(':message', $message, PDO::PARAM_STR);
        $result->bindParam(':time', $time, PDO::PARAM_STR);
        $result->bindParam(':status', $status, PDO::PARAM_STR);

        return $result->execute();
    }

    public static function updateDialog($dialog) {
        $db = DataBase::getConnection();
        $date = time();

        $sql = "UPDATE `dialog` SET `date` = :date WHERE id = :dialog";

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);
        $result->bindParam(':dialog', $dialog, PDO::PARAM_STR);
        $result->bindParam(':date', $date, PDO::PARAM_STR);
        return $result->execute();
    }

    public static function countMessage($dialog, $user) {
        $db = DataBase::getConnection();

        $sql = 'SELECT count(*) FROM messages m
            JOIN dialog d ON m.dialog = d.id
            WHERE m.status = 1 AND m.dialog = :dialog
            AND m.sender != d.user_1 AND m.sender != :user';

        $result = $db->prepare($sql);
        $result->bindParam(':dialog', $dialog, PDO::PARAM_STR);
        $result->bindParam(':user', $user, PDO::PARAM_STR);
        $result->execute();
        $res = $result->fetchColumn();

        if ($res == 0) {
            $sql = 'SELECT COUNT(*) FROM messages m
            JOIN dialog d ON m.dialog = d.id
            WHERE m.status = 1 AND m.dialog = :dialog
            AND m.sender != d.user_2 AND m.sender != :user';

            $result = $db->prepare($sql);
            $result->bindParam(':dialog', $dialog, PDO::PARAM_STR);
            $result->bindParam(':user', $user, PDO::PARAM_STR);
            $result->execute();
            $res = $result->fetchColumn();

            if($res == 0) {
                return 0;
            } else return $res;
        }else return $res;
    }

    public static function readMessage($dialog, $sender) {
        $db = DataBase::getConnection();

        $sql = "UPDATE `messages` SET `status` = 0, `is_new` = 0 WHERE sender !=:sender AND dialog = :dialog";

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);
        $result->bindParam(':dialog', $dialog, PDO::PARAM_STR);
        $result->bindParam(':sender', $sender, PDO::PARAM_STR);
        return $result->execute();
    }

    public static function isNewMessage($user) {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM messages m
            JOIN dialog d ON m.dialog = d.id
            WHERE m.status = 1 AND m.is_new = 1 AND m.sender != '.$user.' AND (d.user_1 = '.$user.' OR d.user_2 = '.$user.')');

        // Получение и возврат результатов
        $i = 0;
        $messages = array();
        while ($row = $result->fetch()) {
            $messages[$i]['id'] = $row['id'];
            $messages[$i]['dialog'] = $row['dialog'];
            $messages[$i]['sender'] = $row['sender'];
            $messages[$i]['message'] = $row['message'];
            $messages[$i]['date'] = $row['date'];
            $messages[$i]['status'] = $row['status'];
            $i++;
        }
        return $messages;
    }

    public static function isNotMessage($user) {

        $db = DataBase::getConnection();

        $sql = "UPDATE `messages m` SET `is_new` = 1 JOIN dialog d ON m.dialog = d.id
            WHERE m.status = 1 AND m.is_new = 1 AND m.sender != :user AND (d.user_1 = :user OR d.user_2 = :user";

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);
        $result->bindParam(':user', $user, PDO::PARAM_STR);
        return $result->execute();
    }


}