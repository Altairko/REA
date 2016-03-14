<?php

use Phalcon\Mvc\Controller;

class CatalogController extends ControllerBase
{

	public function initialize()
	{
		// Устанавливаем заголовок документа
		$this->tag->setTitle('Каталог');
		parent::initialize();
	}

    public function indexAction()
    {

    }

	public function addAction(){
		$this->tag->setTitle('Каталог | Добавить недвижимость');
		parent::initialize();
	}
}

