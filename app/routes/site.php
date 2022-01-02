<?php

    use Src\controllers\HomeController;
    use Slim\App;
    use Src\controllers\ImageController;

return function(App $app) {
        $app->get('/', HomeController::class.':index');
        $app->get('/images', ImageController::class.':get');
    }
?>  