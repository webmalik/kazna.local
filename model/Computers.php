<?php

class Computers {

    public static function getAllComputers() {

        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM computers');

        // Получение и возврат результатов
        $i = 0;
        $computers = array();
        while ($row = $result->fetch()) {
            $computers[$i]['id'] = $row['id'];
            $computers[$i]['comp_name'] = $row['comp_name'];
            $computers[$i]['comp_login'] = $row['comp_login'];
            $computers[$i]['name'] = $row['name'];
            $computers[$i]['os'] = $row['os'];
            $computers[$i]['ip'] = $row['ip'];
            $computers[$i]['monitor'] = $row['monitor'];
            $computers[$i]['system'] = $row['system'];
            $computers[$i]['klav'] = $row['klav'];
            $computers[$i]['mouse'] = $row['mouse'];
            $i++;
        }
        return $computers;
    }

    public static function getComputerBySlug($slug) {

        $db = DataBase::getConnection();

        $sql = 'SELECT * FROM computers WHERE comp_login = :slug';

        $result = $db->prepare($sql);
        $result->bindParam(':slug', $slug, PDO::PARAM_STR);

        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        return $result->fetch();
    }

    public static function getPoBySlug($slug) {
        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM comp_po WHERE comp = \''.$slug."'");

        // Получение и возврат результатов
        $i = 0;
        $computers = array();
        while ($row = $result->fetch()) {
            $computers[$i]['id'] = $row['id'];
            $computers[$i]['comp'] = $row['comp'];
            $computers[$i]['name'] = $row['name'];
            $computers[$i]['version'] = $row['version'];
            $computers[$i]['dev'] = $row['dev'];
            $computers[$i]['date'] = $row['date'];
            $i++;
        }
        return $computers;
    }

    public static function insertPO($name, $handle)
    {
        $db = DataBase::getConnection();
        while (($data = fgetcsv($handle, 0, ";")) !== false){
            if ($data[0]) {
                $sql = 'INSERT INTO `comp_po`(`name`, `comp`, `version`, `dev`, `date`) VALUES (:name, :comp, :version, :dev, :date)';

                $result = $db->prepare($sql);
                $result->bindParam(':name', $data[0], PDO::PARAM_STR);
                $result->bindParam(':comp', $name, PDO::PARAM_STR);
                $result->bindParam(':version', $data[1], PDO::PARAM_STR);
                $result->bindParam(':dev', $data[2], PDO::PARAM_STR);
                $result->bindParam(':date', $data[3], PDO::PARAM_STR);
                $result->execute();
            }
        }
        return true;
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

    public static function register($comp_name, $comp_login, $name, $os, $ip, $monitor, $system, $klav, $mouse) {
        $db = DataBase::getConnection();

        $sql = 'INSERT INTO `computers`(`name`, `ip`, `os`, `monitor`, `mouse`, `klav`, `system`, `comp_name`, `comp_login`) VALUES (:name, :ip, :os, :monitor, :mouse, :klav, :system, :comp_name, :comp_login)';

        $result = $db->prepare($sql);
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
    }


}