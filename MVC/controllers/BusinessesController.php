<?php

class BusinessesController extends Controller
{
    
    public function __construct($url)
    {
       //var_dump("la");
        $this->checkURL($url, 0);
        //var_dump($url);
        $this->businesses();
        //("businesses");
    }

    private function businesses()
    {
        //var_dump("businesses");
        $businessManager = new BusinessManager();
        if (isset($_GET['id']) && is_numeric($_GET['id'])){
            $business = $businessManager->getBusinessById($_GET['id']);
             } else {
     
             $business = $businessManager->getBusinessInfo(10, 0);
             }


        $this->_view = new SmartyView('Businesses');
        //var_dump($this->_view);
        $this->_view->generate(array());
       
    }

}
?>