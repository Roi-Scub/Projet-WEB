<?php
require_once('models/profile/ProfileManager.php');
$profileManager = new ProfileManager();
$profile = $profileManager->getProfileInfo('profileId');
echo "<br>";
var_dump($profile);
$profileArr = [];
echo "pilote";


foreach ($profile as $profile ) {

    //var_dump($profile);
    
  $reflection = new ReflectionClass($profile);
    //echo $reflection;
  $id = $reflection->getProperty('_id');
  $id->setAccessible(true);
  $idValue = $id->getValue($profile);

  $firstName = $reflection->getProperty('_firstName');
  $firstName->setAccessible(true);
  $firstNameValue = $firstName->getValue($profile);

  $lastName = $reflection->getProperty('_lastName');
  $lastName->setAccessible(true);
  $lastNameValue = $lastName->getValue($profile);

  $mail = $reflection->getProperty('_mail');
  $mail->setAccessible(true);
  $mailValue = $mail->getValue($profile);

  $birthday = $reflection->getProperty('_birthday');
  $birthday->setAccessible(true);
  $birthdayValue = $birthday->getValue($profile);

  $pictureLink = $reflection->getProperty('_pictureLink');
  $pictureLink->setAccessible(true);
  $pictureLinkValue = $pictureLink->getValue($profile);

  $bannerLink = $reflection->getProperty('_bannerLink');
  $bannerLink->setAccessible(true);
  $bannerLinkValue = $bannerLink->getValue($profile);

    
    $profileArr = [
        'id' => $idValue,
        'firstName' => $firstNameValue,
        'lastName' => $lastNameValue,
        'mail' => $mailValue,
        'birthday' => $birthdayValue,
        'pictureLink' => $pictureLinkValue,
        'bannerLink' => $bannerLinkValue
    ];
}

$this->_smarty->assign('profile', $profileArr);
//var_dump($profileArr);

$piloteRender = $this->_smarty->fetch('views/components/profiles/pilote.tpl');

?>