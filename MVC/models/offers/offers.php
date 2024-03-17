<?php 
class Offers 
{
   /*	Nom	Type	Interclassement	Attributs	Null	Valeur par défaut	Commentaires	Extra	Action
	1	Offer_Id Primaire	int			Non	Aucun(e)			Modifier Modifier	Supprimer Supprimer	
	2	Offer_Name	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	3	Offer_Description	varchar(1024)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	4	Offer_Date	date			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	5	Offer_Start_Date	date			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	6	Offer_Lenght	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	7	Offer_Remuneration	decimal(10,2)			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	8	Offer_Number_Of_Places	int			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	9	Offer_Number_Of_Places_Taken	int			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	10	Offer_Deleted_At	date			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	11	Business_Id Index	int			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	12	Profile_Id Index	int			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
*/ 

    private $_id;
    private $_name;
    private $_description;
    private $_date;
    private $_startDate;
    private $_lenght;
    private $_remuneration;
    private $_numberOfPlaces;
    private $_numberOfPlacesTaken;
    private $_deletedAt;
    private $_businessId;
    private $_profileId;

    public function __construct(array $data)
    {
        $this->hydrate($data, 'Offer_');
    }

    public function hydrate(array $data)
    {
        foreach ($data as $key => $value)
        {
            $key = str_replace('Offer_', '', $key);
            $key = str_replace('_', '', $key);
            $method = 'set'.ucfirst($key);

            if (method_exists($this, $method))
            {
                $this->$method($value);
            }
        }
    }

    public function setId($id)
    {
        $id = (int) $id;
        if($id > 0)
        {
            $this->_id = $id;
        }
    }

    public function setName($name)
    {
        if(is_string($name))
        {
            $this->_name = $name;
        }
    }

    public function setDescription($description)
    {
        if(is_string($description))
        {
            $this->_description = $description;
        }
    }

    public function setDate($date)
    {
        $this->_date = $date;
    }

    public function setStartDate($startDate)
    {
        $this->_startDate = $startDate;
    }

    public function setLenght($lenght)
    {
        if(is_string($lenght))
        {
            $this->_lenght = $lenght;
        }
    }

    public function setRemuneration($remuneration)
    {
        $this->_remuneration = $remuneration;
    }

    public function setNumberOfPlaces($numberOfPlaces)
    {
        $numberOfPlaces = (int) $numberOfPlaces;
        if($numberOfPlaces > 0)
        {
            $this->_numberOfPlaces = $numberOfPlaces;
        }
    }

    public function setNumberOfPlacesTaken($numberOfPlacesTaken)
    {
        $numberOfPlacesTaken = (int) $numberOfPlacesTaken;
        if($numberOfPlacesTaken > 0)
        {
            $this->_numberOfPlacesTaken = $numberOfPlacesTaken;
        }
    }

    public function setDeletedAt($deletedAt)
    {
        $this->_deletedAt = $deletedAt;
    }

    public function setBusinessId($businessId)
    {
        $businessId = (int) $businessId;
        if($businessId > 0)
        {
            $this->_businessId = $businessId;
        }
    }

    public function setProfileId($profileId)
    {
        $profileId = (int) $profileId;
        if($profileId > 0)
        {
            $this->_profileId = $profileId;
        }
    }

    public function getId()
    {
        return $this->_id;
    }

    public function getName()
    {
        return $this->_name;
    }

    public function getDescription()
    {
        return $this->_description;
    }

    public function getDate()
    {
        return $this->_date;
    }

    public function getStartDate()
    {
        return $this->_startDate;
    }

    public function getLenght()
    {
        return $this->_lenght;
    }

    public function getRemuneration()
    {
        return $this->_remuneration;
    }

    public function getNumberOfPlaces()
    {
        return $this->_numberOfPlaces;
    }

    public function getNumberOfPlacesTaken()
    {
        return $this->_numberOfPlacesTaken;
    }

    public function getDeletedAt()
    {
        return $this->_deletedAt;
    }

    public function getBusinessId()
    {
        return $this->_businessId;
    }

    public function getProfileId()
    {
        return $this->_profileId;
    }


}