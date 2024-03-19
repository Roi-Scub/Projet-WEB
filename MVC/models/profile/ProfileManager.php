<?php
require_once('models/profile/Profile.php');
class ProfileManager extends Manager
{

    public function verifyLogin($email, $password)
    {
        $conn = $this->getDataBase();

        $sql = 'SELECT * FROM profile WHERE `Profile_Mail` = :email LIMIT 1';

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':email', $email);

        $stmt->execute();
        
        
        if($stmt->rowCount() != 0)
        {
            var_dump($profile ="test");
            $profile = new Profile($stmt->fetch(PDO::FETCH_ASSOC));
            
            password_verify($password, $profile->getPasswordHash()) ? $profile : $profile = null;
            var_dump($profile);
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
        echo "<br>";
        var_dump($profileId);

        foreach (ProfileType::cases() as $profileType )
        {
            var_dump($profileId);
            $sql = 'SELECT count(*) AS "is'. ucfirst($profileType->value) .'" FROM `'. $profileType->value .'` WHERE `Profile_Id` =:profileId LIMIT 1';
            var_dump($sql);
            $stmt = $db->prepare($sql);
            $stmt->bindParam(':profileId', $profileId);

            $stmt->execute();

            if ($stmt->fetch(PDO::FETCH_NUM)[0] != 0)
            {
                return $profileType;
            }	

        }    
        
        return ProfileType::eleve;
    }
    
    public function getProfileInfo()
    {
        //var_dump($profileId);
        $db = $this->getDataBase();

        $sql = 'SELECT * FROM profile WHERE `Profile_Id` =:profileId ';

        $stmt = $db->prepare($sql);

        $stmt->bindParam(':profileId', $profileId);
        
        $stmt->execute();
        
        

        $profile = [];

        while($data = $stmt->fetch(PDO::FETCH_ASSOC)) 
        {
            var_dump($data);

            $profile[] = new Profile($data);
        }
        return $profile;
        //var_dump($profileInfo);
    }

}