<?php
namespace Src\traits;

use Exception;
use Slim\Views\Twig;

trait Template
{
    public function getTwig()
    {
        try {
            return Twig::create(DIR_VIEWS, [ 'cache' => false ]);
        } catch (Exception $e) {
            var_dump($e->getMessage());
        }
    }

    public function setView($name)
    {
        return $name.EXT_VIEWS;
    }
}

?>