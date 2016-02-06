<?php

class Real extends \Phalcon\Mvc\Model
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
    public $name;

    /**
     *
     * @var string
     */
    public $price;

    /**
     *
     * @var string
     */
    public $cover;

    /**
     *
     * @var string
     */
    public $description;

    /**
     *
     * @var integer
     */
    public $reserve;

    /**
     *
     * @var string
     */
    public $category;

    /**
     *
     * @var string
     */
    public $img2;

    /**
     *
     * @var string
     */
    public $img3;

    /**
     *
     * @var string
     */
    public $img4;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'real';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Real[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Real
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
