<?php

/**
 * Class Controller : classe mère des contrôleurs
 *
 * il est utilisé pour charger les vues et les modèles
    */

abstract class Controller
{
    protected $_view;
    protected $_manager;


    // Méthode abstraite index
    //abstract public function index();

    // Méthode pour charger les vues
    //protected function loadView($view, $data = [])
    //{
    //    $this->_view = new View($view);
    //    $this->_view->generate($data);
    //}
//
    //// Méthode pour charger les modèles
    //protected function loadModel($model)
    //{
    //    require_once('models/'.$model.'.php');
    //    $this->$model = new $model();
    //}

    protected function checkURL($url, $maxArguments)
    {
        if(isset($url) && is_countable($url) && count($url) > $maxArguments + 1)
            throw new Exception('Page introuvable');
    }
}