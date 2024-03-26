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

        // OfferFilter $offerFilter, int $limit, int $offset
        //var_dump($offers);  
       // Récupérez le numéro de page depuis l'URL
        if (isset($_GET['page']) && is_numeric($_GET['page']))
        $offers = $offers = $offerManager->getOffersInfo(10, ($_GET['page'] - 1) * 10);
        else 

        $offers = $offerManager->getOffersInfo(10, 0);
      

        var_dump("offers");
        $this->_view = new SmartyView('Offers');
        //var_dump($this->_view);
        //getOfferValues
        $this->_view->generate(array());
       
    }

}