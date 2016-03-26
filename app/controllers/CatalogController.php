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

	public function addAction()
	{
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

	public function viewsAction()
	{
		$products = Real::findFirst($this->dispatcher->getParam("id"));
		$this->tag->setTitle('Купить - ' . $products->name . ' по лучшей цене ' . $products->price . ' руб.');
		parent::initialize();
		$this->view->product = $products;
		$di_id = $this->dispatcher->getParams("id");
		$this->view->id = $di_id['id'];
		$author = Users::findFirst($products->user_id);
		$this->view->author_name = $author->name;
		$this->view->author_phone = $author->phone;
	}

	public function editAction()
	{
		$this->tag->setTitle('Каталог | Изменить товар');
		parent::initialize();
		$products = Real::findFirst($this->dispatcher->getParams("id"));
		$auth = $this->session->get('auth');
		$profile = $auth['id'];
		$get_id = $products->user_id;
		if ($profile != $get_id) {
			$this->flash->error("Нет прав редактирования!");
			$this->view->prof_user = false;
		} else {
			$this->view->prof_user = true;
			$this->view->product = $products;
			/*Если есть данные, то сохраняем*/
			if ($this->request->isPost()) {
				$products->name = $this->request->getPost('name');
				$products->price = $this->request->getPost('price');
				$products->cover = $this->request->getPost('cover');
				$products->description = $this->request->getPost('description');
				$products->img2 = $this->request->getPost('img2');
				$products->img3 = $this->request->getPost('img3');
				$products->img4 = $this->request->getPost('img4');

				if ($products->update() == false) {
					foreach ($products->getMessages() as $message) {
						$this->flash->error((string)$message);
					}
				} else {
					$this->flash->success('Данные успешно сохранены');
				}
			}
		}
	}

	public function deleteAction(){
		$products = Real::findFirst($this->dispatcher->getParams("id"));
		$auth = $this->session->get('auth');
		$profile = $auth['id'];
		$get_id = $products->user_id;
		if ($profile != $get_id) {
			$this->flash->error("Нет прав удаления!");
			$this->view->prof_user = false;
		} else {
			$this->view->prof_user = true;
			$this->view->id = $this->dispatcher->getParams("id");
			if ($products->delete() == false) {
				foreach ($products->getMessages() as $message) {
					$this->flash->error((string)$message);
				}
			} else {
				$this->flash->success('Данные успешно удалены');
			}
		}
	}
}

