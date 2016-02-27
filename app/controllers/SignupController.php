<?php
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
use Phalcon\Tag;
use Phalcon\Mvc\Controller;
class SignupController extends ControllerBase
{
	 public function initialize()
    {
        // Устанавливаем заголовок документа
        $this->tag->setTitle('Регистрация');
        parent::initialize();
    }
	public function indexAction()
	{
		if ($this->request->isPost()) {
		    $username = $this->request->getPost('username', 'alphanum');
		    $email = $this->request->getPost('email', 'email');
		    $password = $this->request->getPost('password');
		    $name = $this->request->getPost('name');
		    $phone = $this->request->getPost('phone');

		    $user = new Users();
		    $user->username = $username;
		    $user->email = $email;
		    $user->password = sha1($password);
		    $user->name = $name;
		    $user->created_at = new Phalcon\Db\RawValue('now()');
		    $user->active = 'Y';
		    $user->class = '1';
		    $user->phone = $phone;

		    if ($user->save() == false) {
		        foreach ($user->getMessages() as $message) {
		            $this->flash->error((string) $message);
		        }
		    } else {
		        $this->tag->setDefault('email', '');
		        $this->tag->setDefault('password', '');
		        $this->flash->success('Спасибо за регистрацию, пожалуйста войдите в вашу учетную запись');
		        return $this->view->pick("login/index");
		    }
		}
	}
}

