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

    public function get()
    {   
        $pdo = DB::connection()->get;
        var_dump($pdo);
        die();
        $img = Image::all();
        var_dump($img);
    }
}


?>