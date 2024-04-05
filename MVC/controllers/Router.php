<?php

require_once('views/SmartView.php');
require_once('controllers/Controller.php');

class Router {
    private $_controller;
    private $_view;

    private const DEMO_MODE = true;

    public function routeReq() {
        try {

            //Charge les classes du dossier models.
            spl_autoload_register(function ($class) {
                if (file_exists('models/' . $class .'.php')) require_once('models/' . $class .'.php');

                //  Charge les classes des sous-dossiers du dossier models.
                foreach (glob('models/*', GLOB_ONLYDIR) as $folder) {
                    if (file_exists($folder . '/' . $class . '.php')) require_once($folder . '/' . $class . '.php');
                }
            });

            //  Lance automatiquement la session si elle n'est pas déjà démarrée.
            if (session_status() == PHP_SESSION_NONE) session_start();


            $url = '';
            
            // Check if the url is defined
            if (isset($_GET['url'])) {

                //  récupere les parametres de l'url avec un filtre url
                $url = explode('/', filter_var($_GET['url'], FILTER_SANITIZE_URL));

                
                /** 
                 *  Le controller est le premier paramètre de l'url avec la première lettre en majuscule et le reste en minuscule.
                 * @example Url "www.example.com/foo/..." set in this variable "Foo".
                 */
                $controller = ucfirst(strtolower($url[0]));
                //echo "<br>";
                //var_dump($controller);
                /** 
                 * la classe controller est le nom du controller avec le suffixe 'Controller' et l'extension '.php'.
                 */
                if ($controller == 'Offerscrud'){

                    $controller = 'Offers';

                } else if ($controller == 'Businessescrud'){

                    $controller = 'Businesses';

                } else if ($controller == 'Businessesview') {
                        
                        $controller = 'Businesses';
    
                    
                }else if ($controller == 'Profilecrud'){

                    $controller = 'Profile';
                } else {
                        
                    $controllerClass = $controller . 'Controller';

                }

                $controllerClass = $controller . 'Controller';
                //echo "<br>";
                //var_dump($controllerClass);
                /**
                 * Le fichier du controller et dans le dossier controllers sous le nom de classeController.php
                 */
                $controllerFile = 'controllers/' . $controllerClass . '.php';
                //echo "<br>";
                //var_dump($controllerFile);

                

                // Cas particuliers
                switch ($url[0]) {
                    case 'login' :
                    case 'logout' :
                        $controllerClass = 'AuthController';
                        $controllerFile = 'controllers/AuthController.php';
                        break;
                    default:
                        // Verifier si l'utilisateur est connecté
                        if (!isset($_SESSION['profileId'])) header('Location: http://stages-cove.fr/login');
                        break;
                }

                // Verifier si le dossier existe
                if (file_exists($controllerFile)) {
                    //var_dump("la");
                    require_once($controllerFile);
                   
                    //echo "test";
                    //var_dump($controllerFile);
                    $this->_controller =  new $controllerClass($url);
                    //echo "<br>";
                    //var_dump($this->_controller);
                } else {
                    //echo "hello";
                    throw new Exception('Page introuvable');
                }
            } else {
              
                // Verifier si l'utilisateur est connecté
                if (!isset($_SESSION['profileId'])) header('Location: http://stages-cove.fr/login');
                    //echo "test";
                // Si l'url n'est pas définit, le controller de défaut est l'index
                require_once('controllers/IndexController.php');
                $this->_controller = new IndexController($url);
                //var_dump($this->_controller);
               
            }

        } catch (Exception $e) {
            //echo "exception";
            $errorMessage = $e->getMessage();
            $this->_view = new SmartyView('Error');
            $this->_view->generate(array('statusCode' => 404, 'debugMode' => true, 'statusMessage' => $errorMessage), NULL, NULL);
        }
    }
}
?>