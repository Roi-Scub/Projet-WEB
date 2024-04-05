<?php

/*#	Nom	Type	Interclassement	Attributs	Null	Valeur par défaut	Commentaires	Extra	Action
	1	Notice_Id Primaire	int			Non	Aucun(e)			Modifier Modifier	Supprimer Supprimer	
	2	Notice_Grade	decimal(15,2)			Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	3	Notice_Comment	varchar(255)	utf8mb4_general_ci		Oui	NULL			Modifier Modifier	Supprimer Supprimer	
	4	Business_Id Index	int			Non	Aucun(e)			Modifier Modifier	Supprimer Supprimer	
	5	Profile_Id Index	int			Non	Aucun(e)			Modifier Modifier	Supprimer Supprimer	
*/ 

class Notice extends Model
{
    protected $_Id;
    protected $_Grade;
    protected $_Comment;
    protected $_Id;
    protected $_Id;
    
    public function __construct(array $data)
    {
        $this->hydrate($data, 'Notice_');
    }

    public function hydrate(array $data)
    {
        foreach ($data as $key => $value)
        {
            $key = str_replace('Notice_', '', $key);
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
            $this->_Id = $id;
        }
    }

    public function setGrade($grade)
    {
        $grade = (float) $grade;
        if($grade > 0)
        {
            $this->_Grade = $grade;
        }
    }

    public function setComment($comment)
    {
        if(is_string($comment))
        {
            $this->_Comment = $comment;
        }
    }

    public function setBusinessId($businessId)
    {
        $businessId = (int) $businessId;
        if($businessId > 0)
        {
            $this->_BusinessId = $businessId;
        }
    }

    public function setProfileId($profileId)
    {
        $profileId = (int) $profileId;
        if($profileId > 0)
        {
            $this->_ProfileId = $profileId;
        }
    }

    public function getId()
    {
        return $this->_Id;
    }

    public function getGrade()
    {
        return $this->_Grade;
    }

    public function getComment()
    {
        return $this->_Comment;
    }

    public function getBusinessId()
    {
        return $this->_BusinessId;
    }

    public function getProfileId()
    {
        return $this->_ProfileId;
    }

}