<?php
/**
 * LoginController
 *
 * Allows to authenticate users
 */
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
use Phalcon\Mvc\Controller;

class LoginController extends ControllerBase
{

	public function initialize()
	{
		// Устанавливаем заголовок документа
		$this->tag->setTitle('Вход');
		parent::initialize();
	}


	public function indexAction()
	{
		if ($this->session->has("auth"))
		{

			// Получение значения

			return $this->forward('login/start');
		}
	}


	/**
	 * Register an authenticated user into session data
	 *
	 * @param Users $user
	 */
	private function _registerSession(Users $user)
	{
		$this->session->set('auth', array(
				'id' => $user->id,
				'username' => $user->username,
				'name' => $user->name
			));
	}


	/**
	 * This action authenticate and logs an user into the application
	 *
	 */
	public function startAction()
	{

		$response = new \Phalcon\Http\Response();
		if ($this->request->isPost())
		{
			$email = $this->request->getPost('email');
			$password = $this->request->getPost('password');
			$user = Users::findFirst(array(
					"(email = :email: OR username = :email:) AND password = :password: AND active = 'Y'",
					'bind' => array('email' => $email, 'password' => sha1($password))
				));
			if ($user != false)
			{
				$this->_registerSession($user);

				return $response->redirect();
			}
			$this->flash->error('Неверный email/пароль');
			return $this->forward('login/index');
		}
		return $response->redirect();
	}


	/**
	 * Finishes the active session redirecting to the index
	 *
	 * @return unknown
	 */
	public function exitAction()
	{
		$this->session->remove('auth');
		$this->flash->success('Вы успешно вышли с сайта');
		return $this->forward("login/index");

	}


}
