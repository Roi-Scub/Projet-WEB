<?php

class BusinessManager extends Manager {

    public function getBusinessInfo()
    {
        $conn = $this->getDataBase();

        $sql = 'SELECT * FROM business';

        $stmt = $conn->prepare($sql);

        $stmt->execute();

        $business = $stmt->fetch(PDO::FETCH_ASSOC);

        return $business;
    }

}