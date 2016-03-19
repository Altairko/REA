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
		$products = Real::find();
		$this->view->products = $products;
    }

	public function addAction(){
		$this->tag->setTitle('Каталог | Добавить недвижимость');
		parent::initialize();
		$auth = $this->session->get('auth');
		if ($auth['id'] == '') {
			$this->flash->error("Для добавления товара пожалуйста зарегистрируйтесь!");
			$this->view->user = false;
		} else {
			$this->view->user = true;
			$categorys = Category::find();
			$this->view->categorys = $categorys;
			if ($this->request->isPost()) {
				$real = new Real();
				$real->user_id = $auth['id'];
				$real->name = $this->request->getPost('name');
				$real->price = $this->request->getPost('price');
				$real->cover = $this->request->getPost('cover');
				$real->description = $this->request->getPost('description');
				$real->category = $this->request->getPost('categorys');
				$real->reserve = 0;
				$real->img1 = $this->request->getPost('img1');
				$real->img2 = $this->request->getPost('img2');
				$real->img3 = $this->request->getPost('img3');
				if (($real->save() == false)) {
					foreach ($real->getMessages() as $message) {
						$this->flash->error((string)$message);
					}
				} else {
					$this->flash->success('Данные успешно сохранены');
				}
			}
		}

	}

	public function viewsAction(){
		$products = Real::findFirst($this->dispatcher->getParam("id"));
		$this->tag->setTitle('Каталог | '.$products->name);
		parent::initialize();
		$this->view->product = $products;
		$author = Users::findFirst($products->user_id);
		$this->view->author_name = $author->name;
		$this->view->author_phone = $author->phone;
	}
}

