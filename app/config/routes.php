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
	"/catalog/views/{id}",
	array(
		"controller" => "catalog",
		"action" => "views"
	)
);
$router->add(
	"/catalog/edit/{id}",
	array(
		"controller" => "catalog",
		"action" => "edit"
	)
);
$router->add(
	"/catalog/delete/{id}",
	array(
		"controller" => "catalog",
		"action" => "delete"
	)
);
return $router;