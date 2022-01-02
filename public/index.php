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

$eloquent = require __DIR__.'/../app/settings/eloquent.php';
$eloquent($container);

$dependencies = require __DIR__.'/../app/dependencies.php';
$dependencies($container);

$eloquent = $container->get('eloquent');

$eloquent = function ($eloquent) {
    $capsule = new \Illuminate\Database\Capsule\Manager;
    $capsule->addConnection($eloquent['db']);

    $capsule->setAsGlobal();
    $capsule->bootEloquent();

    return $capsule;
};

AppFactory::setContainer($container);
$app = AppFactory::create();
$callableResolver = $app->getCallableResolver();

//Routes
$rsite = require __DIR__.'/../app/routes/site.php';
$rsite($app);

$settings = $container->get('settings');

$displayErrorDetails = $settings['displayErrorDetails'];
$logError = $settings['logError'];
$logErrorDetails = $settings['logErrorDetails'];

// Add Routing Middleware
$app->addRoutingMiddleware();

// Add Error Middleware
$app->addErrorMiddleware($displayErrorDetails, $logError, $logErrorDetails);


$app->run();

?>