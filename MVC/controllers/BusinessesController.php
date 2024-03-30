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
        $this->_view = new SmartyView('Businesses');
        //var_dump($this->_view);
        $this->_view->generate(array());
       
    }

}
?>