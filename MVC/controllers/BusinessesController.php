<?php

class BusinessesController extends Controller
{
    
    public function __construct($url)
    {
       //var_dump("la");
        $this->checkURL($url, 0);
        //var_dump($url);
        //$this->businesses();
        if ($url[0] == 'businesses') {
            $this->businesses();
        } else if ($url[0] == 'businessesCRUD'){
            $this->businessesCRUD();
        } else if ($url[0] == 'businessesView'){
            $this->businessesView();
        }

       
        //("businesses");

    }

    private function businesses()
    {
        //var_dump("businesses");
        $businessManager = new BusinessManager();
        
        if (isset($_GET['page']) && is_numeric($_GET['page'])){
            $business = $businessManager->getBusinessInfo(10, ($_GET['page'] - 1) * 10);
            $page = $_GET['page'];
             } else {
            $page = 1;
             $business = $businessManager->getBusinessInfo(10, 0);
             }
          
        $max = $businessManager->getMaxPage();

        $this->_view = new SmartyView('Businesses');
        //var_dump($this->_view);
        $this->_view->generate(array('business' => $business, 'page' => $page, 'max' => $max));
       
    }

    private function businessesCRUD()
    {
        $this->_view = new SmartyView('BusinessesCRUD');
        $this->_view->generate(array());
    }

    private function businessesView()
    {
        //var_dump("businessesView");

        $businessManager = new BusinessManager();
        
        $business = $businessManager->getBusinessById($_GET['id']);

        //var_dump($business);
        $this->_view = new SmartyView('BusinessesView');
        //var_dump($this->_view);
        $this->_view->generate(array('business' => $business));
    }

}
?>