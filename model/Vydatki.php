<?php

class Vydatki {

    const LIMIT_LIST = 10;

    public static function registerKost($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to) {
        $db = DataBase::getConnection();

        $sql = 'INSERT INTO `kost`(`to_mail`, `number`, `date_mail`, `date_to`, `description`, `work_mail`, `work_to`) VALUES (:to_mail, :number, :date_mail, :date_to, :description, :work_mail, :work_to)';

        $result = $db->prepare($sql);
        $result->bindParam(':to_mail', $to_mail, PDO::PARAM_STR);
        $result->bindParam(':number', $number, PDO::PARAM_STR);
        $result->bindParam(':date_mail', $date_mail, PDO::PARAM_STR);
        $result->bindParam(':date_to', $date_to, PDO::PARAM_STR);
        $result->bindParam(':description', $description, PDO::PARAM_STR);
        $result->bindParam(':work_mail', $work_mail, PDO::PARAM_STR);
        $result->bindParam(':work_to', $work_to, PDO::PARAM_STR);
        $result->execute();

        $res = $db->query('SELECT Count(id) FROM kost');
        $r = $res->fetch();

        return $r[0];
    }

    public static function getAllKost($list) {

        $db = DataBase::getConnection();
        $offset = ($list-1)*self::LIMIT_LIST;
        // Запрос к БД
        $result = $db->query('SELECT * FROM kost'
            .' ORDER BY `id` DESC '
            .' LIMIT '.self::LIMIT_LIST
            .' OFFSET '.$offset
        );

        // Получение и возврат результатов
        $i = 0;
        $mail = array();
        while ($row = $result->fetch()) {
            $mail[$i]['id'] = $row['id'];
            $timest_to = strtotime($row['date_to']);
            $timest_mail = strtotime($row['date_mail']);
            $mail[$i]['date_to'] = date("d.m.Y", $timest_to);
            $mail[$i]['date_mail'] = date("d.m.Y", $timest_mail);
            $mail[$i]['to_mail'] = $row['to_mail'];
            $mail[$i]['number'] = $row['number'];
            $mail[$i]['description'] = $row['description'];
            $mail[$i]['work_mail'] = $row['work_mail'];
            $mail[$i]['work_to'] = $row['work_to'];
            $i++;
        }
        return $mail;
    }

    public static function registerRozp($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to) {
        $db = DataBase::getConnection();

        $sql = 'INSERT INTO `rozp`(`to_mail`, `number`, `date_mail`, `date_to`, `description`, `work_mail`, `work_to`) VALUES (:to_mail, :number, :date_mail, :date_to, :description, :work_mail, :work_to)';

        $result = $db->prepare($sql);
        $result->bindParam(':to_mail', $to_mail, PDO::PARAM_STR);
        $result->bindParam(':number', $number, PDO::PARAM_STR);
        $result->bindParam(':date_mail', $date_mail, PDO::PARAM_STR);
        $result->bindParam(':date_to', $date_to, PDO::PARAM_STR);
        $result->bindParam(':description', $description, PDO::PARAM_STR);
        $result->bindParam(':work_mail', $work_mail, PDO::PARAM_STR);
        $result->bindParam(':work_to', $work_to, PDO::PARAM_STR);
        $result->execute();

        $res = $db->query('SELECT Count(id) FROM rozp');
        $r = $res->fetch();

        return $r[0];
    }

    public static function getAllRozp($list) {

        $db = DataBase::getConnection();
        $offset = ($list-1)*self::LIMIT_LIST;
        // Запрос к БД
        $result = $db->query('SELECT * FROM rozp'
            .' ORDER BY `id` DESC '
            .' LIMIT '.self::LIMIT_LIST
            .' OFFSET '.$offset
        );

        // Получение и возврат результатов
        $i = 0;
        $mail = array();
        while ($row = $result->fetch()) {
            $mail[$i]['id'] = $row['id'];
            $timest_to = strtotime($row['date_to']);
            $timest_mail = strtotime($row['date_mail']);
            $mail[$i]['date_to'] = date("d.m.Y", $timest_to);
            $mail[$i]['date_mail'] = date("d.m.Y", $timest_mail);
            $mail[$i]['to_mail'] = $row['to_mail'];
            $mail[$i]['number'] = $row['number'];
            $mail[$i]['description'] = $row['description'];
            $mail[$i]['work_mail'] = $row['work_mail'];
            $mail[$i]['work_to'] = $row['work_to'];
            $i++;
        }
        return $mail;
    }

    public static function getTotalKost()
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'SELECT count(id) AS count FROM kost';

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Выполнение коменды
        $result->execute();

        // Возвращаем значение count - количество
        $row = $result->fetch();
        return $row['count'];
    }

    public static function getTotalRozp()
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'SELECT count(id) AS count FROM rozp';

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Выполнение коменды
        $result->execute();

        // Возвращаем значение count - количество
        $row = $result->fetch();
        return $row['count'];
    }

    public static function getLastDate($table) {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'SELECT date_to FROM '.$table.' ORDER BY id DESC LIMIT 1';

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Выполнение коменды
        $result->execute();

        // Возвращаем значение count - количество
        $row = $result->fetch();
        return $row['date_to'];
    }

}