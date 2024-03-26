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
        require_once('models/offers/OfferManager.php');
        $this->_manager = new OfferManager();
        $offers = $this->_manager->getOffersInfo();
        //var_dump($offers);  
        $itemsPerPage = 10; // Nombre d'éléments par page
        $page = isset($_GET['page']) ? intval($_GET['page']) : 1; // Récupérez le numéro de page depuis l'URL

        // Calculez l'offset (décalage) en fonction du numéro de page
        $offset = ($page - 1) * $itemsPerPage;

        var_dump("offers");
        $this->_view = new SmartyView('Offers');
        //var_dump($this->_view);
        //getOfferValues
        $this->_view->generate(array());
       
    }

}