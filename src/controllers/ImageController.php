<?php
namespace Src\controllers;

use Src\models\Image;
use Psr\Container\ContainerInterface;
use Illuminate\Pagination\Paginator;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;

class ImageController extends Base
{
    private $container;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function get(Request $request, Response $response)
    {   
        $pageParam = (int) $request->getQueryParams()['page'];
        $page      = ($pageParam > 0) ? $pageParam : 1;
        $limit     = 15; // Number of posts on one page
        $skip      = ($page - 1) * $limit;
        $count     = count(Image::all()); // Count of all images

        return $this->getTwig()->render($response, $this->setView('site/images'), [
            "titlePage" => 'Images',
            'pagination'    => [
                'needed'    => $count > $limit,
                'count'     => $count,
                'page'      => $page,
                'lastpage'  => (ceil($count / $limit) == 0 ? 1 : ceil($count / $limit)),
                'limit'     => $limit,
            ],
            'items'         => Image::skip($skip)->take($limit)->get()
          ]); 
    }

}


?>