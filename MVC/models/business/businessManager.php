<?php
require_once('models/business/business.php');

class BusinessManager extends Manager {

    public function getBusinessInfo()
    {
        $conn = $this->getDataBase();

        $sql = 'SELECT * FROM business b ';

        $stmt = $conn->prepare($sql);

        $stmt->execute();

        $business = [];

        while($data = $stmt->fetch(PDO::FETCH_ASSOC)) 
        {
            $business[] = new Business($data);
        }
        return $business;
    }

}