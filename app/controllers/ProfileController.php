<?php
use Phalcon\Mvc\Controller;

class ProfileController extends ControllerBase
{
	public function initialize()
	{
		// Устанавливаем заголовок документа
		$this->tag->setTitle('Просмотр профиля');
		parent::initialize();
	}


	public function indexAction()
	{

		$profile = Users::findFirst($this->dispatcher->getParam("id"));

		if (!$profile) {
			$this->flash->error("Пользователь не существует");
			$this->view->prof_user = false;
		} else {
			$this->view->prof_user = true;
			$this->view->prof_username = $profile->username;
			$this->view->prof_email = $profile->email;
			$this->view->prof_name = $profile->name;
			$this->view->prof_phone = $profile->phone;
			$profile_sale = Buyers::findByid_users($this->dispatcher->getParam("id"));
			$this->view->prof_sex = $profile->sex;
			$this->view->prof_sale = count($profile_comments);
			$this->view->prof_day = intval((strtotime(date("Y-m-d H:i:s")) - strtotime($profile->created_at)) / (60 * 60 * 24));
			$class = ClassUser::findFirst($profile->class);
			$this->view->prof_class = $class->description;
		}
	}

	public function editAction()
	{
		$this->tag->setTitle('Редактирование профиля');
		parent::initialize();
		$auth = $this->session->get('auth');
		$profile = $auth['id'];
		$get_id = $this->dispatcher->getParam("id");
		if ($profile != $get_id) {
			$this->flash->error("Нет прав редактирования!");
			$this->view->prof_user = false;
		} else {
			$this->view->prof_user = true;
			$profile = Users::findFirst($this->dispatcher->getParam("id"));
			$this->view->prof_username = $profile->username;
			$this->view->prof_email = $profile->email;
			$this->view->prof_name = $profile->name;
			$this->view->prof_phone = $profile->phone;
			$profile_sale = Buyers::findByid_users($this->dispatcher->getParam("id"));
			$this->view->prof_sex = $profile->sex;
			/*Если есть данные, то сохраняем*/
			if ($this->request->isPost()) {
				$user = Users::findFirst($auth['id']);
				$old_password = sha1($this->request->getPost('old_password'));
				$password = $user->password;
				if (($old_password == $password) && ($old_password != '')) {
					if ($this->request->getPost('password') != '') {
						$user->password = sha1($this->request->getPost('password'));
					}
					$user->id = $auth['id'];
					$user->email = $this->request->getPost('email');
					$user->phone = $this->request->getPost('phone');
					$user->sex = $this->request->getPost('sex');

					if (($user->update() == false) or ($old_password != $password)) {
						foreach ($user->getMessages() as $message) {
							$this->flash->error((string)$message);
						}
					} else {
						$this->flash->success('Данные успешно сохранены');
					}
				}
			}
		}
	}
}
