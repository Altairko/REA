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

		$profile=Users::findFirst($this->dispatcher->getParam("id"));

		if (!$profile)
		{
			$this->flash->error("Пользователь не существует");
			$this->view->prof_user=false;
		} else
		{
			$this->view->prof_user=true;
			$this->view->prof_username=$profile->username;
			$this->view->prof_email=$profile->email;
			$this->view->prof_name=$profile->name;
			$this->view->prof_phone=$profile->phone;
			$profile_sale=Buyers::findByid_users($this->dispatcher->getParam("id"));
            $this->view->prof_sex=$profile->sex;
			$this->view->prof_sale=count($profile_comments);
		}
	}
	public function editAction()
	{
		
	}
}
