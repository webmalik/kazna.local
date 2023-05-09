<?php
class Front {

    public static function checkText($text) {
        if(strlen($text) > 3) {
            return true;
        }
        return false;
    }

    public static function getViddilList()
    {
        // Соединение с БД
        $db = DataBase::getConnection();

        // Запрос к БД
        $result = $db->query('SELECT * FROM viddil ORDER BY  name');

        // Получение и возврат результатов
        $i = 0;
        $VoddilList = array();
        while ($row = $result->fetch()) {
            $VoddilList[$i]['id'] = $row['id'];
            $VoddilList[$i]['name'] = $row['name'];
            $VoddilList[$i]['slug'] = $row['slug'];
            $i++;
        }
        return $VoddilList;
    }

    public static function getNameViddilById($id)
    {
        $db = DataBase::getConnection();

        $sql = 'SELECT * FROM viddil WHERE id = :id';

        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);

        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        $arr = $result->fetch();
        return $arr['name'];
    }

    public static function getURI() {
        if(!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    public static function getDialogId() {
        if(!empty($_SERVER['REQUEST_URI'])) {
            $res = trim($_SERVER['REQUEST_URI'], '/');
            return trim($res, '/');
        }
    }
}