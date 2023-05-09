<?php

class Mail {

    const LIMIT_MAIL = 25;

    public static function getAllMailOut($list) {

        $db = DataBase::getConnection();

        $offset = ($list-1)*self::LIMIT_MAIL;

        // Запрос к БД
        $result = $db->query('SELECT * FROM mail_out '
            .' ORDER BY `id` DESC '
            .' LIMIT '.self::LIMIT_MAIL
            .' OFFSET '.$offset
        );

        // Получение и возврат результатов
        $i = 0;
        $mail = array();
        while ($row = $result->fetch()) {
            $mail[$i]['id'] = $row['id'];
            $timest = strtotime($row['date']);
            $mail[$i]['date'] = date("d.m.Y", $timest);
            $mail[$i]['ind'] = $row['ind'];
            $mail[$i]['to_list'] = $row['to_list'];
            $mail[$i]['description'] = $row['description'];
            $mail[$i]['count_list'] = $row['count_list'];
            $mail[$i]['name'] = $row['name'];
            $mail[$i]['pr'] = $row['pr'];
            $i++;
        }
        return $mail;
    }
    
     public static function getAllMailOutNoLimit() {

        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM mail_out '
            .' ORDER BY `id`'
        );

        // Получение и возврат результатов
        $i = 0;
        $mail = array();
        while ($row = $result->fetch()) {
            $mail[$i]['id'] = $row['id'];
            $timest = strtotime($row['date']);
            $mail[$i]['date'] = date("d.m.Y", $timest);
            $mail[$i]['ind'] = $row['ind'];
            $mail[$i]['to_list'] = $row['to_list'];
            $mail[$i]['description'] = $row['description'];
            $mail[$i]['count_list'] = $row['count_list'];
            $mail[$i]['name'] = $row['name'];
            $mail[$i]['pr'] = $row['pr'];
            $i++;
        }
        return $mail;
    }
    

    public static function registerOut($date, $ind, $to_list, $description, $count_list, $name, $pr) {
        $db = DataBase::getConnection();

        $sql = 'INSERT INTO `mail_out`(`date`, `ind`, `to_list`, `description`, `count_list`, `name`, `pr`) VALUES (:date, :ind, :to_list, :description, :count_list, :name, :pr)';

        $result = $db->prepare($sql);
        $result->bindParam(':date', $date, PDO::PARAM_STR);
        $result->bindParam(':ind', $ind, PDO::PARAM_STR);
        $result->bindParam(':to_list', $to_list, PDO::PARAM_STR);
        $result->bindParam(':description', $description, PDO::PARAM_STR);
        $result->bindParam(':count_list', $count_list, PDO::PARAM_STR);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->bindParam(':pr', $pr, PDO::PARAM_STR);
        $result->execute();

        $res = $db->query('SELECT Count(id) FROM mail_out');
        $r = $res->fetch();

        return $ind."/".$r[0];
    }

    public static function registerDksu($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to) {
        $db = DataBase::getConnection();

        $sql = 'INSERT INTO `mail_dksu`(`to_mail`, `number`, `date_mail`, `date_to`, `description`, `work_mail`, `work_to`) VALUES (:to_mail, :number, :date_mail, :date_to, :description, :work_mail, :work_to)';

        $result = $db->prepare($sql);
        $result->bindParam(':to_mail', $to_mail, PDO::PARAM_STR);
        $result->bindParam(':number', $number, PDO::PARAM_STR);
        $result->bindParam(':date_mail', $date_mail, PDO::PARAM_STR);
        $result->bindParam(':date_to', $date_to, PDO::PARAM_STR);
        $result->bindParam(':description', $description, PDO::PARAM_STR);
        $result->bindParam(':work_mail', $work_mail, PDO::PARAM_STR);
        $result->bindParam(':work_to', $work_to, PDO::PARAM_STR);
        $result->execute();

        $res = $db->query('SELECT Count(id) FROM mail_dksu');
        $r = $res->fetch();

        return $r[0];
    }

    public static function getAllMailDksu($list) {

        $db = DataBase::getConnection();
        $offset = ($list-1)*self::LIMIT_MAIL;
        // Запрос к БД
        $result = $db->query('SELECT * FROM mail_dksu'
            .' ORDER BY `id` DESC '
            .' LIMIT '.self::LIMIT_MAIL
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

    public static function registerOrg($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to) {
        $db = DataBase::getConnection();

        $sql = 'INSERT INTO `mail_org`(`to_mail`, `number`, `date_mail`, `date_to`, `description`, `work_mail`, `work_to`) VALUES (:to_mail, :number, :date_mail, :date_to, :description, :work_mail, :work_to)';

        $result = $db->prepare($sql);
        $result->bindParam(':to_mail', $to_mail, PDO::PARAM_STR);
        $result->bindParam(':number', $number, PDO::PARAM_STR);
        $result->bindParam(':date_mail', $date_mail, PDO::PARAM_STR);
        $result->bindParam(':date_to', $date_to, PDO::PARAM_STR);
        $result->bindParam(':description', $description, PDO::PARAM_STR);
        $result->bindParam(':work_mail', $work_mail, PDO::PARAM_STR);
        $result->bindParam(':work_to', $work_to, PDO::PARAM_STR);
        $result->execute();

        $res = $db->query('SELECT Count(id) FROM mail_org');
        $r = $res->fetch();

        return $r[0];
    }

    public static function getAllMailOrg($list) {

        $db = DataBase::getConnection();
        $offset = ($list-1)*self::LIMIT_MAIL;
        // Запрос к БД
        $result = $db->query('SELECT * FROM mail_org'
            .' ORDER BY `id` DESC '
            .' LIMIT '.self::LIMIT_MAIL
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

    public static function getTotalOutMail()
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'SELECT count(id) AS count FROM mail_out';

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Выполнение коменды
        $result->execute();

        // Возвращаем значение count - количество
        $row = $result->fetch();
        return $row['count'];
    }

    public static function getTotalDksuMail()
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'SELECT count(id) AS count FROM mail_dksu';

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Выполнение коменды
        $result->execute();

        // Возвращаем значение count - количество
        $row = $result->fetch();
        return $row['count'];
    }

    public static function getTotalOrgMail()
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'SELECT count(id) AS count FROM mail_org';

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Выполнение коменды
        $result->execute();

        // Возвращаем значение count - количество
        $row = $result->fetch();
        return $row['count'];
    }
    
    public static function getAllGuMail() {

        $db = DataBase::getConnection();
        
        // Запрос к БД
        $result = $db->query('SELECT * FROM gu_mail');

        // Получение и возврат результатов
        $i = 0;
        $mail = array();
        while ($row = $result->fetch()) {
            $mail[$i]['id'] = $row['id'];
            $mail[$i]['name'] = $row['name'];
            $mail[$i]['name_sk'] = $row['name_sk'];
            $mail[$i]['post'] = strtolower(str_replace(",", "<br>", $row['post']));
            $mail[$i]['index'] = $row['index'];
            $i++;
        }
        return $mail;
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
    /*public static function getComputerBySlug($slug) {

        $db = DataBase::getConnection();

        $sql = 'SELECT * FROM computers WHERE comp_login = :slug';

        $result = $db->prepare($sql);
        $result->bindParam(':slug', $slug, PDO::PARAM_INT);

        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        return $result->fetch();
    }

    public static function getComputerById($id) {

        $db = DataBase::getConnection();

        $sql = 'SELECT * FROM computers WHERE id = :id';

        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);

        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        return $result->fetch();
    }



    public static function edit($id, $comp_name, $comp_login, $name, $os, $ip, $monitor, $system, $klav, $mouse)
    {
        $db = DataBase::getConnection();

        $sql = "UPDATE computers 
            SET comp_name = :comp_name, comp_login = :comp_login, name = :name, os = :os, ip = :ip, monitor = :monitor, system = :system, klav = :klav, mouse = :mouse
            WHERE id = :id";

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_STR);
        $result->bindParam(':comp_name', $comp_name, PDO::PARAM_STR);
        $result->bindParam(':comp_login', $comp_login, PDO::PARAM_STR);
        $result->bindParam(':name', $name, PDO::PARAM_STR); 
        $result->bindParam(':os', $os, PDO::PARAM_STR);
        $result->bindParam(':ip', $ip, PDO::PARAM_STR);
        $result->bindParam(':monitor', $monitor, PDO::PARAM_STR);
        $result->bindParam(':system', $system, PDO::PARAM_STR);
        $result->bindParam(':klav', $klav, PDO::PARAM_STR);
        $result->bindParam(':mouse', $mouse, PDO::PARAM_STR);
        return $result->execute();
    }


    public static function delete($slug)
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'DELETE FROM computers WHERE comp_login = :comp_login';

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);
        $result->bindParam(':comp_login', $slug, PDO::PARAM_INT);
        return $result->execute();
    }*/


}