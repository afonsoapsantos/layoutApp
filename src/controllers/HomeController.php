<?php
namespace Src\controllers;

class HomeController extends Base
{
  public function index($request, $response)
  {
      return $this->getTwig()->render($response, $this->setView('site/home'), [
        "titlePage" => 'Home'
      ]);
  }  
}


?>