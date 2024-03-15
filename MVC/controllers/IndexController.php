<?php 

class IndexController extends Controller
{
    public function __construct($url)
    {
        //var_dump("la");
        $this->checkURL($url, 0);
        $this->index();
        
        
    }
    
    private function index()
    {
        //var_dump("ici");
        $this->_view = new SmartyView('Index');
        //var_dump($this->_view);
        $this->_view->generate(array());
        
    }

}
?>