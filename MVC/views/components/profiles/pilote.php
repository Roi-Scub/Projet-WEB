<?php


$profileManager = new ProfileManager();
echo "<br>";
echo "<br>";
//var_dump($profileManager);
$profileId = $_SESSION['profileId'];  
$profile = $profileManager->getProfileInfo($profileId);
echo "<br>";
//var_dump($profile);
//$profileArr = [];
//echo "pilote";


$this->_smarty->assign('profile', $profile);
var_dump($profile);
$piloteRender = $this->_smarty->fetch('views/components/profiles/pilote.tpl');

?>