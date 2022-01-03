<?php
namespace Src\controllers;

use Src\models\Image;
use Illuminate\Support\Facades\DB;
use Psr\Container\ContainerInterface;

class ImageController extends Base
{
    private $container;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function get($request, $response)
    {   
        $images = Image::all();

        return $this->getTwig()->render($response, $this->setView('site/images'), [
            "titlePage" => 'Images',
            "items" => $images
          ]); 
    }
}


?>