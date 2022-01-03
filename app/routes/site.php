<?php

use Src\models\Bootstrap;

    use Src\controllers\HomeController;
    use Slim\App;
    use Src\controllers\ImageController;

return function(App $app) {

        $app->get('/', ImageController::class.':get');
    }
?>  