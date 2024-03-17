<?php
require_once('models/offers/Offers.php');
require_once('views/components/offer/offerPagination.php');


class OfferManager extends Manager
{

        //Get all offers

        public function getOffersInfo()
        {
            

            $conn = $this->getDataBase();

            $sql = 'SELECT o.Offer_Name, o.Offer_Lenght, o.Offer_Date, o.Offer_Id, o.Offer_Description, o.Offer_Remuneration, o.Offer_Number_Of_Places, o.Offer_Number_Of_Places_Taken, b.Business_Name, b.Business_Profile_Picture FROM offer o JOIN business b ON o.Business_Id = b.Business_Id /*LIMIT $offset, $itemsPerPage*/';

            $stmt = $conn->prepare($sql);

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

}