<?php

class Buyers extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var integer
     */
    public $id_users;

    /**
     *
     * @var integer
     */
    public $id_sale;

    /**
     *
     * @var string
     */
    public $naimen;

    /**
     *
     * @var string
     */
    public $price;

    /**
     *
     * @var integer
     */
    public $bay;

    /**
     *
     * @var string
     */
    public $date;

    /**
     *
     * @var string
     */
    public $doc;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'buyers';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Buyers[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Buyers
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
