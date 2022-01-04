<?php
namespace Src\controllers;

use Src\models\Image;
use Psr\Container\ContainerInterface;
use Illuminate\Pagination\Paginator;

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