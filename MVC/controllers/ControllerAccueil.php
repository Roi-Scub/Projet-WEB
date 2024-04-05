<?php
class ControllerAccueil
{
    private $_articleManager;
    private $_view;


    // Constructeur
    public function __construct($articles)
    {
        if(isset($articles) && is_countable($articles) && count($articles) > 1)
            throw new Exception('Page introuvable');
        else 
            $this->articles();
    }
    // Affiche la liste de tous les articles
    private function articles()
    {
        $this->_articleManager = new ArticleManager;
        $articles = $this->_articleManager->getArticles();

        require_once('views/viewAccueil.php'); 
        //$this->_view = new View('Accueil');
        //$this->_view->generate(array('articles' => $articles));
    }

    /*public function includeView()
    {
        include 'views/accueil.php';
    }*/
}?>