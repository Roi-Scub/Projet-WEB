<?php

class LegalTermsController extends Controller
{
    public function __construct($url)
    {
        $this->checkURL($url, 0);
        $this->legalTerms();
    }

    private function legalTerms()
    {
        $this->_view = new SmartyView('LegalTerms');
        $this->_view->generate(array());
    }
}