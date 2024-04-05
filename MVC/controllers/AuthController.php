<?php //Authentification Controller 

class AuthController extends Controller
{
   

    // Constructeur de la classe AuthController
    public function __construct($url)
    {
       $this->checkURL($url, 0);

       switch ($url[0])
       {
           case 'login':
               $this->login();
               break;
           case 'logout':
               $this->logout();
               break;
           default:
               throw new Exception('Page introuvable');
       }
    }

    // Fonction de Connexion 
    private function login()
    {
        if (isset($_SESSION['profileId'])) {
            header('Location: http://stages-cove.fr');
        }
        
        $error = null;
        if (isset($_POST['email']) && isset($_POST['password'])) 
        {
            
            $email = $_POST['email'];
            $password = $_POST['password'];
            var_dump($email, $password);
            $this->_manager = new ProfileManager();
            $profile = $this->_manager->verifyLogin($email, $password);
            
            
            if ($profile != null) 
            {
                $_SESSION['profileId'] = $profile->getId();
                $_SESSION['profileType'] = $this->_manager->getProfileType($profile->getId());
                
                //var_dump($_SESSION['profileId']);
                header('Location: http://stages-cove.fr');
                
            } 
            else 
            {

                $errorMsg = 'Login ou mot de passe incorrect';
              
                
            }
        
        
        }
    
        $this->_view = new SmartyView('login');
        $this->_view->generate(array('error' => $error), null, null);
       

    }

    private function logout()
    {
        session_start();

        if(session_destroy())
        {
            header('Location: http:/stages-cove.fr/login');
        }
    }
}

//?>

