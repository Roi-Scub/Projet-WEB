<?php

/**
 * This class is used like a filter for the offers.
 * Possible filters are:
 * - Keywords
 * - Speciality
 * - Level
 * - Start date
 * - End date
 * - City
 * - Renumeration
 */

class OfferFilter 
{
    private $_keywords;
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
     * This function is used to get the SQL filter for the offers.
     */
    public function getSQLFilter()
    {
        $sqlFilter = '';

        if ($this->_keywords != '') $sqlFilter .= ' AND (title LIKE :keywords OR description LIKE :keywords)';
        if ($this->_speciality != '') $sqlFilter .= ' AND Offer_Speciality = :speciality';
        if ($this->_level != '') $sqlFilter .= ' AND level = :level';
        if ($this->_startDate != '') $sqlFilter .= ' AND start_date >= :startDate';
        if ($this->_endDate != '') $sqlFilter .= ' AND end_date <= :endDate';
        if ($this->_city != '') $sqlFilter .= ' AND city = :city';
        if ($this->_renumeration != '') $sqlFilter .= ' AND renumeration = :renumeration';

        // Remove the first ' AND ' from the string
        $sqlFilter = substr($sqlFilter, 5);

        return $sqlFilter;
    }

    /**
     * This function is used to bind the parameters to the SQL prepare statement.
     */
    public function bindParams($statement)
    {
        if ($this->_keywords != '') $statement->bindParam(':keywords', $this->_keywords);
        if ($this->_speciality != '') $statement->bindParam(':speciality', $this->_speciality);
        if ($this->_level != '') $statement->bindParam(':level', $this->_level);
        if ($this->_startDate != '') $statement->bindParam(':startDate', $this->_startDate);
        if ($this->_endDate != '') $statement->bindParam(':endDate', $this->_endDate);
        if ($this->_city != '') $statement->bindParam(':city', $this->_city);
        if ($this->_renumeration != '') $statement->bindParam(':renumeration', $this->_renumeration);
    }

    // --- SETTERS ---

    public function setKeywords($keywords)
    {
        if (is_string($keywords)) $this->_keywords = $keywords;
    }

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

    public function getKeywords()
    {
        return $this->_keywords;
    }

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