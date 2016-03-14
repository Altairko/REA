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
		"action" => "index"
	)
);
$router->add(
	"/profile/edit/{id}",
	array(
		"controller" => "profile",
		"action" => "edit"
	)
);
$router->add(
	"/catalog/{category}/{alias}",
	array(
		"controller" => "catalog",
		"action" => "views"
	)
);
return $router;