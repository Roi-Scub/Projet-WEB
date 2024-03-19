<?php
require_once('models/profile/ProfileManager.php');
$profileManager = new ProfileManager();
$profile = $profileManager->getProfileInfo($_SESSION['profileId']);
$profileArr = [];

foreach ($profile as $p ) {
  
    $reflection = new ReflectionClass($p);

    $id = $reflection->getProperty('_id');
    $id->setAccessible(true);
    $idValue = $id->getValue($p);

    $firstName = $reflection->getProperty('_firstName');
    $firstName->setAccessible(true);
    $firstNameValue = $firstName->getValue($p);

    $lastName = $reflection->getProperty('_lastName');
    $lastName->setAccessible(true);
    $lastNameValue = $lastName->getValue($p);

    $mail = $reflection->getProperty('_mail');
    $mail->setAccessible(true);
    $mailValue = $mail->getValue($p);

    $birthday = $reflection->getProperty('_birthday');
    $birthday->setAccessible(true);
    $birthdayValue = $birthday->getValue($p);

    $pictureLink = $reflection->getProperty('_pictureLink');
    $pictureLink->setAccessible(true);
    $pictureLinkValue = $pictureLink->getValue($p);

    $bannerLink = $reflection->getProperty('_bannerLink');
    $bannerLink->setAccessible(true);
    $bannerLinkValue = $bannerLink->getValue($p);

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


$eleveRender = $this->_smarty->fetch('views/components/profiles/eleve.tpl');

?>