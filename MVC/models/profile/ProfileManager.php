<?php

class ProfileManager extends Manager
{

    public function verifyLogin($email, $password)
    {
        $conn = $this->getDataBase();

        $sql = "SELECT * FROM 'profile' WHERE `Profile_Mail` = :email LIMIT 1";

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':email', $email);

        $stmt->execute();

        if($stmt->rowCount() != 0)
        {
            $profile = new Profile($stmt->fetch(PDO::FETCH_ASSOC));
            password_verify($password, $profile->getPasswordHash()) ? $profile : $profile = null;

        } 
        else 
        {
            $profile = null;
        }

        return $profile;
    }

    public function getProfileType($profileId)
    {
        $db = $this->getDataBase();

        foreach (ProfileType::cases() as $profileType)
        {

            $sql = 'SELECT count(*) AS "is'. ucfirst($profileType->value) .'" FROM `'. $profileType->value .'` WHERE `Profile_Id` =:profileId LIMIT 1';

            $stmt = $db->prepare($sql);
            $stmt->bindParam(':profileId', $profileId);

            $stmt->execute();

            if ($stmt->fetch(PDO::FETCH_NUM)[0] != 0)
            {
                return $profileType;
            }	

        }    
        
        return ProfileType::Student;
    }


}