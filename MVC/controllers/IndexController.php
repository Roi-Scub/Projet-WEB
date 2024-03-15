<?php 

class IndexController extends Controller
{
    public function __construct($url)
    {
        $this->checkURL($url, 0);
        $this->index();
    }

    private function index()
    {
        $this->_view = new SmartyView('Index');
        $this->_view->generate(array());
    }
}