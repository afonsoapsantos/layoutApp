<?php

use Psr\Container\ContainerInterface;

return function (ContainerInterface $container)
{
    $container = function ($container){
        $capsule = new \Illuminate\Database\Capsule\Manager;
        $capsule->addConnection($container['settings']['db']);

        $capsule->setAsGlobal();
        $capsule->bootEloquent();

        return $capsule;
    };
}

?>