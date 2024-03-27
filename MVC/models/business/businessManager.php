<?php
require_once('models/business/business.php');

class BusinessManager extends Manager {

    public function getBusinessInfo()
    {
        $conn = $this->getDataBase();

        $sql = 'SELECT * FROM business b WHERE b.Business_Id = :Business_Id';

        
        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':Business_Id', $this->_id);

        $stmt->execute();

        $business = [];

        while($data = $stmt->fetch(PDO::FETCH_ASSOC)) 
        {
            $business[] = new Business($data);
        }
        return $business;
    }

    public function createBusiness()
    {
        $conn = $this->getDataBase();

        $sql = 'INSERT INTO business (Business_Name, Business_Description, Business_Sector, Business_Banner, Business_Profile_Picture) VALUES (:Business_Name, :Business_Description, :Business_Sector, :Business_Banner, :Business_Profile_Picture)';

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':Business_Name', $this->_name);
        $stmt->bindParam(':Business_Description', $this->_description);
        $stmt->bindParam(':Business_Sector', $this->_sector);
        $stmt->bindParam(':Business_Banner', $this->_banner);
        $stmt->bindParam(':Business_Profile_Picture', $this->_profilePicture);

        $stmt->execute();
    }

    public function updateBusiness()
    {
        $conn = $this->getDataBase();

        $sql = 'UPDATE business SET Business_Name = :Business_Name, Business_Description = :Business_Description, Business_Sector = :Business_Sector, Business_Banner = :Business_Banner, Business_Profile_Picture = :Business_Profile_Picture WHERE Business_Id = :Business_Id';

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':Business_Name', $this->_name);
        $stmt->bindParam(':Business_Description', $this->_description);
        $stmt->bindParam(':Business_Sector', $this->_sector);
        $stmt->bindParam(':Business_Banner', $this->_banner);

        $stmt->execute();



    }

    public function deleteBusiness()
    {

        $conn = $this->getDataBase();

        $sql = 'DELETE FROM business WHERE Business_Id = :Business_Id';

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':Business_Id', $this->_id);


    }

    public function getBusinessById()
    {

        $conn = $this->getDataBase();

        $sql = 'SELECT * FROM business WHERE Business_Id = :Business_Id';

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':Business_Id', $this->_id);

        $stmt->execute();

        $data = $stmt->fetch(PDO::FETCH_ASSOC);

        return new Business($data);

    }

}