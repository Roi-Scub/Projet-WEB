<?php
class OfferManager extends Manager {

        //Get all offers

        public function getOffersInfo(int $limit, int $offset)
        {
           

            $conn = $this->getDataBase();

            $sql = 'SELECT o.Offer_Name, o.Offer_Lenght, o.Offer_Date, o.Offer_Id, o.Offer_Description, o.Offer_Remuneration, o.Offer_Number_Of_Places, o.Offer_Number_Of_Places_Taken, b.Business_Name, b.Business_Profile_Picture FROM offer o JOIN business b ON o.Business_Id = b.Business_Id LIMIT :limit OFFSET :offset ';

            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
            $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);

            $stmt->execute();

            //$dataa = $stmt->fetch(PDO::FETCH_ASSOC);  

            $offers = [];
           
            //var_dump($dataa);

            while($data = $stmt->fetch(PDO::FETCH_ASSOC)) 
            {
                $offers[] = new Offers($data);
            }
            return $offers;
        }

        public function createOffer()
        {
            $conn = $this->getDataBase();

            $sql = 'INSERT INTO offer (Offer_Name, Offer_Description, Offer_Date, Offer_Start_Date, Offer_Lenght, Offer_Remuneration, Offer_Number_Of_Places, Offer_Number_Of_Places_Taken, Business_Id, Profile_Id) VALUES (:Offer_Name, :Offer_Description, :Offer_Date, :Offer_Start_Date, :Offer_Lenght, :Offer_Remuneration, :Offer_Number_Of_Places, :Offer_Number_Of_Places_Taken, :Business_Id, :Profile_Id)';

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':Offer_Name', $this->_name);
            $stmt->bindParam(':Offer_Description', $this->_description);
            $stmt->bindParam(':Offer_Date', $this->_date);
            $stmt->bindParam(':Offer_Start_Date', $this->_startDate);
            $stmt->bindParam(':Offer_Lenght', $this->_lenght);
            $stmt->bindParam(':Offer_Remuneration', $this->_remuneration);
            $stmt->bindParam(':Offer_Number_Of_Places', $this->_numberOfPlaces);
            $stmt->bindParam(':Offer_Number_Of_Places_Taken', $this->_numberOfPlacesTaken);
            $stmt->bindParam(':Business_Id', $this->_businessId);
            $stmt->bindParam(':Profile_Id', $this->_profileId);

            $stmt->execute();
        }

        public function updateOffer()
        {

            $conn = $this->getDataBase();

            $sql = 'UPDATE offer SET Offer_Name = :Offer_Name, Offer_Description = :Offer_Description, Offer_Date = :Offer_Date, Offer_Start_Date = :Offer_Start_Date, Offer_Lenght = :Offer_Lenght, Offer_Remuneration = :Offer_Remuneration, Offer_Number_Of_Places = :Offer_Number_Of_Places, Offer_Number_Of_Places_Taken = :Offer_Number_Of_Places_Taken, Business_Id = :Business_Id, Profile_Id = :Profile_Id WHERE Offer_Id = :Offer_Id';

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':Offer_Name', $this->_name);
            $stmt->bindParam(':Offer_Description', $this->_description);
            $stmt->bindParam(':Offer_Date', $this->_date);
            $stmt->bindParam(':Offer_Start_Date', $this->_startDate);
            $stmt->bindParam(':Offer_Lenght', $this->_lenght);
            $stmt->bindParam(':Offer_Remuneration', $this->_remuneration);
            $stmt->bindParam(':Offer_Number_Of_Places', $this->_numberOfPlaces);
            $stmt->bindParam(':Offer_Number_Of_Places_Taken', $this->_numberOfPlacesTaken);
            $stmt->bindParam(':Business_Id', $this->_businessId);
            $stmt->bindParam(':Profile_Id', $this->_profileId);
            $stmt->bindParam(':Offer_Id', $this->_id);

            $stmt->execute();
        }

        public function deleteOffer()
        {
            $conn = $this->getDataBase();

            $sql = 'UPDATE FROM offer SET Offer_Deleted_At = :Offer_Deleted_At WHERE Offer_Id = :Offer_Id';

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':Offer_Id', $this->_id);
            $stmt->bindParam(':Offer_Deleted_At', $this->_deletedAt);

            $stmt->execute();
        }

        public function getOfferById()
        {
            $conn = $this->getDataBase();

            $sql = 'SELECT * FROM offer WHERE Offer_Id = :Offer_Id';

            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':Offer_Id', $this->_id);

            $stmt->execute();

            $data = $stmt->fetch(PDO::FETCH_ASSOC);

            return new Offers($data);
        }

        public function getMaxPage()
        {
            $conn = $this->getDataBase();

            $sql = 'SELECT COUNT(*) FROM offer';

            $stmt = $conn->prepare($sql);

            $stmt->execute();

            $maxPage = round($stmt->fetch(PDO::FETCH_ASSOC)['COUNT(*)'] / 10);

            return $maxPage;
        }


}

?>