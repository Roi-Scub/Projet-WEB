<?php

require_once('views/SmartView.php');
require_once('controllers/Controller.php');

class Router {
    private $_controller;
    private $_view;

    private const DEMO_MODE = true;

    public function routeReq() {
        try {

            // Autoload for loading the classes of the models folder
            spl_autoload_register(function ($class) {
                if (file_exists('models/' . $class .'.php')) require_once('models/' . $class .'.php');

                // Load the classes of the subfolders of the models folder
                foreach (glob('models/*', GLOB_ONLYDIR) as $folder) {
                    if (file_exists($folder . '/' . $class . '.php')) require_once($folder . '/' . $class . '.php');
                }
            });

            // Auto launch the session if it is not already started
            if (session_status() == PHP_SESSION_NONE) session_start();


            $url = '';
            
            // Check if the url is defined
            if (isset($_GET['url'])) {

                // Get all parameters from the url with a url filter https://www.php.net/manual/en/filter.filters.sanitize.php
                $url = explode('/', filter_var($_GET['url'], FILTER_SANITIZE_URL));

                
                /** 
                 * The controller name is the first parameter of the url with the first letter in uppercase and the rest in lowercase.
                 * @example Url "www.example.com/foo/..." set in this variable "Foo".
                 */
                $controller = ucfirst(strtolower($url[0]));
                var_dump($controller);
                /** 
                 * The controller class is the controller name with the suffix 'Controller' and the extension '.php'.
                 */
                $controllerClass = $controller . 'Controller';
                var_dump($controllerClass);
                /**
                 * The controller file is in the controllers folder with the controller class name and the extension '.php'
                 */
                $controllerFile = 'controllers/' . $controllerClass . '.php';
                var_dump($controllerFile);

                

                // Particular cases
                switch ($url[0]) {
                    case 'login' :
                    case 'logout' :
                        $controllerClass = 'AuthController';
                        $controllerFile = 'controllers/AuthController.php';
                        break;
                    default:
                        // Verify if the user is logged in
                        if (!isset($_SESSION['profileId'])) header('Location: http://stages-cove.fr/login');
                        break;
                }

                // Check if the controller file exists
                if (file_exists($controllerFile)) {
                    var_dump("la");
                    require_once($controllerFile);
                    var_dump($controllerFile);
                    $this->_controller = new $controllerClass($url);
                    var_dump($this->_controller);
                } else {
                    throw new Exception('Page introuvable');
                }
            } else {
              
                // Verify if the user is logged in
                if (!isset($_SESSION['profileId'])) header('Location: http://stages-cove.fr/login');

                // If the url is not defined, the default controller is the IndexController
                require_once('controllers/IndexController.php');
                $this->_controller = new IndexController($url);
               
            }

        } catch (Exception $e) {
            $errorMessage = $e->getMessage();
            $this->_view = new SmartyView('Error');
            $this->_view->generate(array('statusCode' => 404, 'debugMode' => true, 'statusMessage' => $errorMessage), NULL, NULL);
        }
    }
}
?>