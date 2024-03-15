<?php

/**
     * This class is a model to map the Offer table and PHP objects.
     * 
*/

class Profile extends Mapping
{

    /*
	#	Nom	Type	Interclassement	Attributs	Null	Valeur par défaut	Commentaires	Extra	Action
	1	Profile_Id Primaire	int			Non	Aucun(e)			Modifier Modifier	Supprimer Supprimer	
	2	Profile_First_Name	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	3	Profile_Last_Name	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	4	Profile_Mail	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	5	Profile_Password_Hash	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	6	Profile_Birthday	date			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	7	Profile_Picture_Link	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	8	Profile_Banner_Link	varchar(255)	utf8mb4_0900_ai_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	9	Profile_Deleted_At	date			Oui	NULL			Modifier Modifier	Supprimer Supprimer	

*/

    private $_id;
    private $_firstName;
    private $_lastName;
    private $_mail;
    private $_passwordHash;
    private $_birthday;
    private $_pictureLink;
    private $_bannerLink;
    private $_deletedAt;
    
    public function __construct(array $data)
    {
        $this->hydrate($data, 'Profile_');
    }

    public function setId($id)
    {
        $id = (int) $id;
        if($id > 0)
        {
            $this->_id = $id;
        }
    }

    public function setFirstName($firstName)
    {
        if(is_string($firstName))
        {
            $this->_firstName = $firstName;
        }
    }

    public function setLastName($lastName)
    {
        if(is_string($lastName))
        {
            $this->_lastName = $lastName;
        }
    }

    public function setMail($mail)
    {
        if(is_string($mail))
        {
            $this->_mail = $mail;
        }
    }

    public function setPasswordHash($passwordHash)
    {
        if(is_string($passwordHash))
        {
            $this->_passwordHash = $passwordHash;
        }
    }

    public function setBirthday($birthday)
    {
        $this->_birthday = $birthday;
    }

    public function setPictureLink($pictureLink)
    {
        if(is_string($pictureLink))
        {
            $this->_pictureLink = $pictureLink;
        }
    }

    public function setBannerLink($bannerLink)
    {
        if(is_string($bannerLink))
        {
            $this->_bannerLink = $bannerLink;
        }
    }

    public function setDeletedAt($deletedAt)
    {
        $this->_deletedAt = $deletedAt;
    }

    public function getId()
    {
        return $this->_id;
    }

    public function getFirstName()
    {
        return $this->_firstName;
    }

    public function getLastName()
    {
        return $this->_lastName;
    }

    public function getMail()
    {
        return $this->_mail;
    }

    public function getPasswordHash()
    {
        return $this->_passwordHash;
    }

    public function getBirthday()
    {
        return $this->_birthday;
    }

    public function getPictureLink()
    {
        return $this->_pictureLink;
    }

    public function getBannerLink()
    {
        return $this->_bannerLink;
    }

    public function getDeletedAt()
    {
        return $this->_deletedAt;
    }



}