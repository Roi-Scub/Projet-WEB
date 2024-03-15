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
            header('Location: http:/stages-cove.fr');
        }
        
        $error = null;
        if (isset($_POST['email']) && isset($_POST['password'])) 
        {
            $email = $_POST['email'];
            $password = $_POST['password'];
        
            $this->_manager = new ProfileManager();
            $profile = $this->_manager->verifyLogin($email, $password);
            
            if ($profile != null) 
            {
                $_SESSION['profileId'] = $profile->getId();
                $_SESSION['profileType'] = $this->_manager->getProfileType($profile->getId());

                header('Location: http:/stages-cove.fr');
            } 
            else 
            {
                $errorMsg = 'Login ou mot de passe incorrect';
              

            }
        
        
        }
    
        $this->_view = new SmartyView('login');
        $this->_view->generate(array('error' => $error), null, null);
       

        
        // Si l'utilisateur est déjà connecté, on le redirige vers la page d'accueil
        //if(isset($_POST['isLogin']))
        //{
        //    $user = $this->_userManager->getUser($_POST['isLogin']);
        //    if($user)
        //    {
        //        // On vérifie si le mot de passe est correct
        //        if(password_verify($_POST['password'], $user->password()))
        //        {
        //            $_SESSION['isLogin'] = $user->isLogin();
        //            $_SESSION['id'] = $user->id();
        //            $_SESSION['role'] = $user->role();
        //            header('Location: index.php');
        //        }
        //        // Si le mot de passe est incorrect, on affiche un message d'erreur
        //        else
        //        {
        //            $errorMsg = 'Mot de passe incorrect';
        //            $this->_view = new View('Error');
        //            $this->_view->generate(array('errorMsg' => $errorMsg));
        //        }
        //    }
        //    // Si le login est incorrect, on affiche un message d'erreur
        //    else
        //    {
        //        
        //        $errorMsg = 'Login incorrect';
        //        $this->_view = new View('Error');
        //        $this->_view->generate(array('errorMsg' => $errorMsg));
        //    }
        //}
    //
        //
        //else
        //{
        //    $this->_view = new View('Login');
        //    $this->_view->generate(array());
        //}
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


//<?php
//// AuthController.php
//
//class AuthController
//{
//    private $usersService;
//
//    public function __construct(UsersService $usersService)
//    {
//        $this->usersService = $usersService;
//    }
//
//    // Page de connexion
//    public function logIn()
//    {
//        // Afficher la vue de connexion
//        include 'views/login.php';
//    }
//
//    // Traitement de la connexion
//    public function processLogIn()
//    {
//        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
//            $username = $_POST['username'];
//            $password = $_POST['password'];
//
//            // Authentification de l'utilisateur
//            $isValid = $this->usersService->authenticateUser($username, $password);
//
//            if ($isValid) {
//                // Création de la session utilisateur
//                session_start();
//                $_SESSION['user'] = $username;
//
//                // Redirection vers la page d'accueil
//                header('Location: index.php');
//                exit;
//            } else {
//                // Mauvais identifiants, afficher un message d'erreur
//                $errorMessage = 'Nom d\'utilisateur ou mot de passe incorrect.';
//                include 'views/login.php';
//            }
//        }
//    }
//
//    // Déconnexion
//    public function logOut()
//    {
//        session_start();
//        session_destroy();
//        header('Location: index.php');
//        exit;
//    }
//}
//?>

