<?php

use Psr\Container\ContainerInterface;
use Illuminate\Container\Container;
use Illuminate\Database\Connection;
use Illuminate\Database\Connectors\ConnectionFactory;

class Conect
{
    private static $pdo = null;
    private $container;
    private $iContainer;
    private $conn;
    private $factory;    
    
    
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