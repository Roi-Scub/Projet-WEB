<?php

/**
 * Cette classe est utilisée comme un filtre pour les offres.
 * Les filtres possibles sont :
 * - Speciality
 * - Level
 * - Start date
 * - End date
 * - City
 * - Renumeration
 */

class OfferFilter 
{
   
    private $_speciality;
    private $_level;
    private $_startDate;
    private $_endDate;
    private $_city;
    private $_renumeration;

    public function __construct(array $data)
    {
        $this->hydrate($data);
    }

    // --- FUNCTIONS ---

    public function hydrate(array $data)
    {
        foreach ($data as $key => $value)
        {
            $method = 'set'.ucfirst($key);

            if (method_exists($this, $method))
            {
                $this->$method($value);
            }
        }
    }

    /**
     *Cette fonction est utilisée pour obtenir le filtre SQL pour les offres.
     */
    public function getSQLFilter()
    {
        $sqlFilter = '';

        if ($this->_speciality != '') $sqlFilter .= ' AND Offer_Speciality = :speciality';
        if ($this->_level != '') $sqlFilter .= ' AND level = :level';
        if ($this->_startDate != '') $sqlFilter .= ' AND start_date >= :startDate';
        if ($this->_endDate != '') $sqlFilter .= ' AND end_date <= :endDate';
        if ($this->_city != '') $sqlFilter .= ' AND city = :city';
        if ($this->_renumeration != '') $sqlFilter .= ' AND renumeration = :renumeration';

        
        $sqlFilter = substr($sqlFilter, 5);

        return $sqlFilter;
    }

    /**
     * Cette fonction est utilisée pour lier les paramètres à la requête SQL préparée.
     */
    public function bindParams($statement)
    {
        if ($this->_speciality != '') $statement->bindParam(':speciality', $this->_speciality);
        if ($this->_level != '') $statement->bindParam(':level', $this->_level);
        if ($this->_startDate != '') $statement->bindParam(':startDate', $this->_startDate);
        if ($this->_endDate != '') $statement->bindParam(':endDate', $this->_endDate);
        if ($this->_city != '') $statement->bindParam(':city', $this->_city);
        if ($this->_renumeration != '') $statement->bindParam(':renumeration', $this->_renumeration);
    }

    // --- SETTERS ---


    public function setSpeciality($speciality)
    {
        if (is_string($speciality)) $this->_speciality = $speciality;
    }

    public function setLevel($level)
    {
        if (is_string($level)) $this->_level = $level;
    }

    public function setStartDate($startDate)
    {
        if (is_string($startDate)) $this->_startDate = $startDate;
    }

    public function setEndDate($endDate)
    {
        if (is_string($endDate)) $this->_endDate = $endDate;
    }

    public function setCity($city)
    {
        if (is_string($city)) $this->_city = $city;
    }

    public function setRenumeration($renumeration)
    {
        if (is_string($renumeration)) $this->_renumeration = $renumeration;
    }

    // --- GETTERS ---



    public function getSpeciality()
    {
        return $this->_speciality;
    }

    public function getLevel()
    {
        return $this->_level;
    }

    public function getStartDate()
    {
        return $this->_startDate;
    }

    public function getEndDate()
    {
        return $this->_endDate;
    }

    public function getCity()
    {
        return $this->_city;
    }

    public function getRenumeration()
    {
        return $this->_renumeration;
    }



}