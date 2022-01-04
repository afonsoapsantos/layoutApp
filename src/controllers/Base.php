<?php
namespace Src\controllers;

use Exception;
use Slim\Views\Twig;
use Src\traits\Template;

abstract class Base
{
   use Template;


   public static function debug(mixed $val)
    {
       echo '<pre>';
       var_dump($val);
       echo '</pre>';
       die();
    }
}


?>