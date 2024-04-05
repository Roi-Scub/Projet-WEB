<?php

class Wishlist {


    private $_profileId;
    private $_offerId;

    public function __construct(array $data)
    {
        $this->hydrate($data, 'Wishlist_');
    }

    public function hydrate(array $data)
    {
        foreach ($data as $key => $value)
        {
            $key = str_replace('Wishlist_', '', $key);
            $key = str_replace('_', '', $key);
            $method = 'set'.ucfirst($key);

            if (method_exists($this, $method))
            {
                $this->$method($value);
            }
        }
    }

    public function getProfileId()
    {
        return $this->_profileId;
    }

    public function getOfferId()
    {
        return $this->_offerId;
    }

    public function setProfileId($profileId)
    {
        $this->_profileId = $profileId;
    }

    public function setOfferId($offerId)
    {
        $this->_offerId = $offerId;
    }



}


?>