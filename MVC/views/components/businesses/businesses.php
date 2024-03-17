<?php
require('models/business/businessManager.php');
$businessManager = new businessManager();
$businesses = $businessManager->getBusinessInfo();
$businessesArr = [];

foreach ($businesses as $business) {

    $reflection = new ReflectionClass($business);

    $id = $reflection->getProperty('_id');
    $id->setAccessible(true);
    $idValue = $id->getValue($business);

    $name = $reflection->getProperty('_name');
    $name->setAccessible(true);
    $nameValue = $name->getValue($business);

    $desc = $reflection->getProperty('_description');
    $desc->setAccessible(true);
    $descValue = $desc->getValue($business);

    $banner = $reflection->getProperty('_banner');
    $banner->setAccessible(true);
    $bannerValue = $banner->getValue($business);

    $profilePicture = $reflection->getProperty('_profilePicture');
    $profilePicture->setAccessible(true);
    $profilePictureValue = $profilePicture->getValue($business);

    $sector = $reflection->getProperty('_sector');
    $sector->setAccessible(true);
    $sectorValue = $sector->getValue($business);


    $businessesArr[] = [
        'name' => $nameValue,
        'id' => $idValue,
        'desc' => $descValue,
        'banner' => $bannerValue,
        'profilePicture' => $profilePictureValue,
        'sector' => $sectorValue
    ];

}


$this->_smarty->assign('business', $businessesArr);

$businessRender = $this->_smarty->fetch('views/components/businesses/businesses.tpl');

?>
