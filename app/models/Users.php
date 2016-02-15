<?php

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Validator\Email as EmailValidator;
use Phalcon\Mvc\Model\Validator\Uniqueness as UniquenessValidator;

class Users extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $username;

    /**
     *
     * @var string
     */
    public $email;

    /**
     *
     * @var string
     */
    public $password;

    /**
     *
     * @var string
     */
    public $name;

    /**
     *
     * @var string
     */
    public $created_at;

    /**
     *
     * @var string
     */
    public $active;

    /**
     *
     * @var integer
     */
    public $class;

    /**
     *
     * @var string
     */
    public $phone;

     /**
     *
     * @var string
     */
    public $sex;
    
    /**
     * Validations and business logic
     *
     * @return boolean
     */
    public function validation()
    {
        $this->validate(new EmailValidator(array(
            'field' => 'email'
        )));
         $this->validate(new UniquenessValidator(array(
                    'field' => 'email',
                    'message' => 'Извините, данный email зарегистрирован другим пользователем'
                )));
         $this->validate(new UniquenessValidator(array(
                    'field' => 'username',
                    'message' => 'Извините, данный логин зарегистрирован другим пользователем'
                )));
        if ($this->validationHasFailed() == true)
        {
            return false;
        }
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'users';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Users[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Users
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
