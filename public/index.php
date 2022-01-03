<?php

use DI\Container;
use Psr\Log\LoggerInterface;
use Slim\Factory\AppFactory;
use Psr\Http\Message\ServerRequestInterface;
use Slim\App;

require __DIR__ . '/../vendor/autoload.php';
require '../src/helpers/config.php';

$container = new Container();

$settings = require __DIR__.'/../app/settings/settings.php';
$settings($container);

$dependencies = require __DIR__.'/../app/dependencies.php';
$dependencies($container);

AppFactory::setContainer($container);
$app = AppFactory::create();
$callableResolver = $app->getCallableResolver();

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
            'options' => [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
            ],
        ]
    ];
});

$eloquent = $container->get('eloquent')['db'];

$capsule = new \Illuminate\Database\Capsule\Manager;
$capsule->addConnection($eloquent);
$capsule->setAsGlobal();
$capsule->bootEloquent();

//Routes
$rsite = require __DIR__.'/../app/routes/site.php';
$rsite($app);

$settings = $container->get('settings');

$displayErrorDetails = $settings['displayErrorDetails'];
$logError = $settings['logError'];
$logErrorDetails = $settings['logErrorDetails'];

//Add Routing Middleware
$app->addRoutingMiddleware();

// Add Error Middleware
$app->addErrorMiddleware($displayErrorDetails, $logError, $logErrorDetails);


$app->run();

?>