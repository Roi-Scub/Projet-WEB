<?php

$moduleName = "profile";
 echo "profileModule";

 $this->appendStyle('profile.css');

$this->_smarty->assign('profileId', $_SESSION['profileId']);
$this->_smarty->assign('profileType', $_SESSION['profileType']->value);

//require_once('views/components/profiles/eleve.php');
require_once('views/components/profiles/pilote.php');
require_once('views/components/profiles/admin.php');


if ($_SESSION['profileType']->value == 'eleve') {

    $profileRender = $eleveRender;
    

} else if ($_SESSION['profileType']->value == 'pilote') {
    
    $profileRender = $piloteRender;

} else if ($_SESSION['profileType']->value == 'admin') {

    $profileRender = $adminRender;

}

$mainRender = $profileRender;

?>