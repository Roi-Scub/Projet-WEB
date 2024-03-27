<?php
class Business {

    /*
	Nom	Type	Interclassement	Attributs	Null	Valeur par défaut	Commentaires	Extra	Action
	1	Business_Id Primaire	int			Non	Aucun(e)			Modifier Modifier	Supprimer Supprimer	
	2	Business_Name	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	3	Business_Description	text	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	4	Business_Sector	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	5	Business_Banner	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	6	Business_Profile_Picture	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	7	Business_Deleted_At	date			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	8	Profile_Id Index	int			Oui	NULL			Modifier Modifier	Supprimer Supprimer	

    */

    private $_id;
    private $_name;
    private $_description;
    private $_sector;
    private $_banner;
    private $_profilePicture;
    private $_deletedAt;
    private $_profileId;

    public function __construct(array $data)
    {
        $this->hydrate($data, 'Business_');
    }

    public function hydrate(array $data)
    {
        foreach ($data as $key => $value)
        {
            $key = str_replace('Business_', '', $key);
            $key = str_replace('_', '', $key);
            $method = 'set'.ucfirst($key);

            if (method_exists($this, $method))
            {
                $this->$method($value);
            }
        }
    }

    public function setBusinessId($id)
    {
        $id = (int) $id;
        if($id > 0)
        {
            $this->_id = $id;
        }
    }

    public function setBusinessName($name)
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

    public function setSector($sector)
    {
        if(is_string($sector))
        {
            $this->_sector = $sector;
        }
    }

    public function setBanner($banner)
    {
        if(is_string($banner))
        {
            $this->_banner = $banner;
        }
    }

    public function setBusinessProfilePicture($profilePicture)
    {
        if(is_string($profilePicture))
        {
            $this->_profilePicture = $profilePicture;
        }
    }

    public function setDeletedAt($deletedAt)
    {
        $this->_deletedAt = $deletedAt;
    }

    public function setProfileId($profileId)
    {
        $profileId = (int) $profileId;
        if($profileId > 0)
        {
            $this->_profileId = $profileId;
        }
    }

    public function getBusinessId()
    {
        return $this->_id;
    }

    public function getBusinessName()
    {
        return $this->_name;
    }

    public function getDescription()
    {
        return $this->_description;
    }

    public function getSector()
    {
        return $this->_sector;
    }

    public function getBanner()
    {
        return $this->_banner;
    }

    public function getBusinessProfilePicture()
    {
        return $this->_profilePicture;
    }

    public function getDeletedAt()
    {
        return $this->_deletedAt;
    }

    public function getProfileId()
    {
        return $this->_profileId;
    }

}


