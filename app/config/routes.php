<?php
/*
 * Define custom routes. File gets included in the router service definition.
 */
 use Phalcon\Mvc\Router;
$router = new Router();
$router->add(
    "/profile/id/{id}",
    array(
        "controller" => "profile",
        "action"     => "index"
    )
);
return $router;