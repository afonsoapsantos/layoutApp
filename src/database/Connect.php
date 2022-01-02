<?php

class Conect
{
    private static $pdo = null;

    public function connection()
    {
        if( static::$pdo ){
            return static::$pdo;
        }

        try {
            static::$pdo = new PDO('mysql:host=localhost;dbname=layout', 'root', '', [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
            ]);
        } catch (PDOException $pdoe) {
            var_dump($pdoe->getMessage());
        }
    }
}



?>