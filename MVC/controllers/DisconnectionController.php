<?php 

class DisconnectionController extends Controller
{
    public function __construct($url)
    {
        //var_dump("la");
        $this->checkURL($url, 0);
        $this->disconnection();
        
        
    }
    
    private function disconnection()
    {
        //var_dump("ici");
        $this->_view = new SmartyView('Disconnection');
        //var_dump($this->_view);
        $this->_view->generate(array(), null, null);
        
    }

}
?>