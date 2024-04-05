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


   
    protected function checkURL($url, $maxArguments)
    {
        if(isset($url) && is_countable($url) && count($url) > $maxArguments + 1)
            throw new Exception('Page introuvable');
    }
}