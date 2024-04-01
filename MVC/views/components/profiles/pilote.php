<?php


$profileManager = new ProfileManager();
echo "<br>";
echo "<br>";

$profileId = $_SESSION['profileId'];  

$profile = $profileManager->getProfileInfo($profileId);
$studentInfo = $profileManager->getStudentInfo(5, 0);

$offerManager = new OfferManager();
$offers = $offerManager->getOffersInfo(5, 0);
echo "<br>";
//var_dump($profile);
//$profileArr = [];
echo "pilote";

$this->_smarty->assign('offers', $offers);
$this->_smarty->assign('profile', $profile);
$this->_smarty->assign('studentInfo', $studentInfo);

var_dump($studentInfo);

$piloteRender = $this->_smarty->fetch('views/components/profiles/pilote.tpl');

?>