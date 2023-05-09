<?php

class Klients {

    public static function getAllKlients() {

        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM klients');

        // Получение и возврат результатов
        $i = 0;
        $klients = array();
        while ($row = $result->fetch()) {
            $klients[$i]['id'] = $row['id'];
            $klients[$i]['name_s'] = $row['name_s'];
            $klients[$i]['name_p'] = $row['name_p'];
            $klients[$i]['krk'] = $row['krk'];
            $klients[$i]['edrpou'] = $row['edrpou'];
            $klients[$i]['address'] = $row['address'];
            $klients[$i]['tel_1'] = $row['tel_1'];
            $klients[$i]['tel_2'] = $row['tel_2'];
            $klients[$i]['ker_pos'] = $row['ker_pos'];
            $klients[$i]['ker'] = $row['ker'];
            $klients[$i]['buh_pos'] = $row['buh_pos'];
            $klients[$i]['buh'] = $row['buh'];
            $klients[$i]['budget_mb'] = $row['budget_mb'];
            $klients[$i]['budget_db'] = $row['budget_db'];
            $klients[$i]['inshi'] = $row['inshi'];
            $klients[$i]['budget_kod'] = $row['budget_kod'];
            $klients[$i]['budget_name'] = $row['budget_name'];
            $i++;
        }
        return $klients;
    }

    public static function getKlientById($id) {

        $db = DataBase::getConnection();

        $sql = 'SELECT * FROM klients WHERE id = :id';

        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);

        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        return $result->fetch();
    }

    public static function register($name_s, $name_p, $krk, $edrpou, $address, $tel_1, $tel_2, $ker_pos, $ker, $buh_pos, $buh, $budget_mb, $budget_db,$budget_name,$budget_kod, $inshi) {
        $db = DataBase::getConnection();

        $sql = 'INSERT INTO `klients`(`name_s`, `name_p`, `krk`, `edrpou`, `address`, `tel_1`, `tel_2`, `ker_pos`, `ker`, `buh_pos`, `buh`, `budget_mb`, `budget_db`,`budget_name`,`budget_kod`, `inshi`) '
                . 'VALUES (:name_s, :name_p, :krk, :edrpou, :address, :tel_1, :tel_2, :ker_pos, :ker, :buh_pos, :buh, :budget_mb, :budget_db, :budget_name, :budget_kod, :inshi)';

        $result = $db->prepare($sql);
        $result->bindParam(':name_s', $name_s, PDO::PARAM_STR);
        $result->bindParam(':name_p', $name_p, PDO::PARAM_STR);
        $result->bindParam(':krk', $krk, PDO::PARAM_STR);
        $result->bindParam(':edrpou', $edrpou, PDO::PARAM_STR);
        $result->bindParam(':address', $address, PDO::PARAM_STR);
        $result->bindParam(':tel_1', $tel_1, PDO::PARAM_STR);
        $result->bindParam(':tel_2', $tel_2, PDO::PARAM_STR);
        $result->bindParam(':ker_pos', $ker_pos, PDO::PARAM_STR);
        $result->bindParam(':ker', $ker, PDO::PARAM_STR);
        $result->bindParam(':buh_pos', $buh_pos, PDO::PARAM_STR);
        $result->bindParam(':buh', $buh, PDO::PARAM_STR);
        $result->bindParam(':budget_mb', $budget_mb, PDO::PARAM_STR);
        $result->bindParam(':budget_db', $budget_db, PDO::PARAM_STR);
        $result->bindParam(':budget_kod', $budget_kod, PDO::PARAM_STR);
        $result->bindParam(':budget_name', $budget_name, PDO::PARAM_STR);
        $result->bindParam(':inshi', $inshi, PDO::PARAM_STR);

        return $result->execute();
    }

    public static function edit($id, $name_s, $name_p, $krk, $edrpou, $address, $tel_1, $tel_2, $ker_pos, $ker, $buh_pos, $buh, $budget_mb, $budget_db,$budget_name,$budget_kod, $inshi)
    {
        $db = DataBase::getConnection();
        $sql = "UPDATE klients SET name_s = :name_s, name_p = :name_p, krk = :krk, edrpou = :edrpou, address = :address, tel_1 = :tel_1, tel_2 = :tel_2, ker_pos = :ker_pos, ker = :ker, buh_pos = :buh_pos, buh = :buh, budget_mb = :budget_mb, budget_db = :budget_db, budget_kod = :budget_kod, budget_name = :budget_name, inshi = :inshi WHERE id = :id";
        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);
        $result->bindParam(':name_s', $name_s, PDO::PARAM_STR);
        $result->bindParam(':name_p', $name_p, PDO::PARAM_STR);
        $result->bindParam(':krk', $krk, PDO::PARAM_STR);
        $result->bindParam(':edrpou', $edrpou, PDO::PARAM_STR);
        $result->bindParam(':address', $address, PDO::PARAM_STR);
        $result->bindParam(':tel_1', $tel_1, PDO::PARAM_STR);
        $result->bindParam(':tel_2', $tel_2, PDO::PARAM_STR);
        $result->bindParam(':ker_pos', $ker_pos, PDO::PARAM_STR);
        $result->bindParam(':ker', $ker, PDO::PARAM_STR);
        $result->bindParam(':buh_pos', $buh_pos, PDO::PARAM_STR);
        $result->bindParam(':buh', $buh, PDO::PARAM_STR);
        $result->bindParam(':budget_mb', $budget_mb, PDO::PARAM_STR);
        $result->bindParam(':budget_db', $budget_db, PDO::PARAM_STR);
        $result->bindParam(':budget_kod', $budget_kod, PDO::PARAM_STR);
        $result->bindParam(':budget_name', $budget_name, PDO::PARAM_STR);
        $result->bindParam(':inshi', $inshi, PDO::PARAM_STR);
        $result->bindParam(':id', $id, PDO::PARAM_STR);
        return $result->execute();;
    }


    public static function delete($id)
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Текст запроса к БД
        $sql = 'DELETE FROM klients WHERE id = :id';

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);
        return $result->execute();
    }


}