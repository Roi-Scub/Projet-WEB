<?php


require_once('models/profile/ProfileManager.php');
$profileManager = new ProfileManager();
$profile = $profileManager->getProfileInfo($_SESSION['profileId']);
$profileArr = [];

foreach ($profile as $profile ) {
  
    $reflection = new ReflectionClass($profile);

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


$adminRender = $this->_smarty->fetch('views/components/profiles/admin.tpl');

?>