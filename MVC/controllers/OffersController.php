<?php

class OffersController extends Controller
{
     

    
    public function __construct($url)
    {
       var_dump("la");
        $this->checkURL($url, 0);
        var_dump($url);
        $this->offers();
        var_dump("ici");
    }

    private function offers()
    {
        

        //$this->_manager = new OfferManager();
        $offerManager = new OfferManager();
        //var_dump($offerManager);
        // OfferFilter $offerFilter, int $limit, int $offset
        //var_dump($offers);  
       // Récupérez le numéro de page depuis l'URL
        if (isset($_GET['page']) && is_numeric($_GET['page'])){
       $offers = $offerManager->getOffersInfo(10, ($_GET['page'] - 1) * 10);
        } else {

        $offers = $offerManager->getOffersInfo(10, 0);
        }

        var_dump($offers);

        var_dump("offers");
        foreach ($offers as $offer){
            echo "<br>";
            echo "<br>";
            require_once('models/business/businessManager.php');
            //var_dump($offer);
            $businessManager = new BusinessManager();
            var_dump($businessManager);    
            $companyInfo = $businessManager->getBusinessInfo($offer->getBusinessId());
            var_dump($offer->getBusinessId());
            // Ajouter les informations sur l'entreprise à l'offre
           // $offer->setName($companyInfo->getBusinessName());
            //$offer->setProfilePicture($companyInfo->getBusinessProfilePicture());
        }
        $this->_view = new SmartyView('Offers');
        echo '<br>';
        echo '<br>';
        var_dump($this->_view);
        
        //var_dump($this->_view);
        //getOfferValues
        $this->_view->generate(array($offers, 'max'=> $max ));
       
    }

}