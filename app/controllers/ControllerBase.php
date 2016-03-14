<?php

use Phalcon\Mvc\Controller;
use Phalcon\Tag;
use Phalcon\Mvc\Model\Query;

class ControllerBase extends Controller
{
	protected function initialize()
	{
		$this->tag->prependTitle('Агенство недвижимости | ');
		$this->view->setTemplateAfter('main');
		$auth = $this->session->get('auth');
		if (!$auth) {
			$usernames = '';
			$uid = 0;
			$this->view->session_user = false;
		} else {
			$this->view->session_user = true;
			$this->view->name = $auth['name'];
			$this->view->uid = $auth['id'];
		}
	}

	protected function forward($uri)
	{
		$uriParts = explode('/', $uri);
		$params = array_slice($uriParts, 2);
		return $this->dispatcher->forward(
			array(
				'controller' => $uriParts[0],
				'action' => $uriParts[1],
				'params' => $params
			)
		);
	}
}
