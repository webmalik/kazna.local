<?php

class Pages
{
    public function getPageBySlug ($slug) {
        if($slug) {
            $db = DataBase::getConnection();

            $result = $db -> query('SELECT * FROM pages WHERE slug = \''.$slug.'\'');
            $result -> setFetchMode(PDO::FETCH_ASSOC);
            $newsItem = $result -> fetch();

            return $newsItem;
        }
    }
}