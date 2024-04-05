<?php 

class ProfileController extends Controller {

    public function __construct($url)
    {
        //var_dump("la");
        $this->checkURL($url, 0);
        //var_dump($url);
        $this->profile();
        //var_dump("ici");
    }

    private function profile()
    {
        $_SESSION['profileId'];
        //var_dump($_SESSION['profileId']);
        $profileManager = new ProfileManager();
        //var_dump('profileId');
        //var_dump($profileManager);
        
        $profile = $profileManager->getProfileInfo($_SESSION['profileId']);
        //var_dump($profile);
        //var_dump("profile");
        
        $this->_view = new SmartyView('profile');
        //var_dump($this->_view);
        $this->_view->generate(array($profile));
       
    }
}

?>