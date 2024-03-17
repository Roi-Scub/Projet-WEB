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
        var_dump("offers");
        $this->_view = new SmartyView('Offers');
        //var_dump($this->_view);
        $this->_view->generate(array(),null,null);
       
    }

}