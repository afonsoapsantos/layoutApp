<?php
declare(strict_types=1);

use DI\Container;


return function (Container $container) {
    $container->set('settings', function(){
        return [
            'displayErrorDetails' => true, // Should be set to false in production
            'logError'            => true,
            'logErrorDetails'     => true,
        ];
    });
};
