<?php

use DI\Container;

return function (Container $container)
{
    $container->set('eloquent', function(){
        return [
            'db' => [
                'driver' => 'mysql',
                'host' => 'localhost',
                'database' => 'layoutapp',
                'username' => 'root',
                'password' => '',
                'charset'   => 'utf8',
                'collation' => 'utf8_unicode_ci',
                'prefix'    => '',
            ]
        ];
    });
};

?>