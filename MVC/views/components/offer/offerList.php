<?php
require('models/offers/offersManager.php');
$offersManager = new OfferManager();
$offers = $offersManager->getOffersInfo();
$OffersArr = [];
//var_dump($offers);
foreach ($offers as $offer) {

    $reflection = new ReflectionClass($offer);

    $id = $reflection->getProperty('_id');
    $id->setAccessible(true);
    $idValue = $id->getValue($offer);

    $name = $reflection->getProperty('_name');
    $name->setAccessible(true);
    $nameValue = $name->getValue($offer);

    $desc = $reflection->getProperty('_description');
    $desc->setAccessible(true);
    $descValue = $desc->getValue($offer);

    $date = $reflection->getProperty('_date');
    $date->setAccessible(true);
    $dateValue = $date->getValue($offer);

    $startDate = $reflection->getProperty('_startDate');
    $startDate->setAccessible(true);
    $startDateValue = $startDate->getValue($offer);

    $lenght = $reflection->getProperty('_lenght');
    $lenght->setAccessible(true);
    $lenghtValue = $lenght->getValue($offer);

    $remuneration = $reflection->getProperty('_remuneration');
    $remuneration->setAccessible(true);
    $remunerationValue = $remuneration->getValue($offer);

    $numberOfPlaces = $reflection->getProperty('_numberOfPlaces');
    $numberOfPlaces->setAccessible(true);
    $numberOfPlacesValue = $numberOfPlaces->getValue($offer);

    $deletedAt = $reflection->getProperty('_deletedAt');
    $deletedAt->setAccessible(true);
    $deletedAtValue = $deletedAt->getValue($offer);

    $numberOfPlacesTaken = $reflection->getProperty('_numberOfPlacesTaken');
    $numberOfPlacesTaken->setAccessible(true);
    $numberOfPlacesTakenValue = $numberOfPlacesTaken->getValue($offer);

    

    $OffersArr[] = [
        'name' => $nameValue,
        'id' => $idValue,
        'desc' => $descValue,
        'date' => $dateValue,
        'startDate' => $startDateValue,
        'lenght' => $lenghtValue,
        'remuneration' => $remunerationValue,
        'numberOfPlaces' => $numberOfPlacesValue,
        'deletedAt' => $deletedAtValue,
        'numberOfPlacesTaken' => $numberOfPlacesTakenValue

    ];

}



$this->_smarty->assign('offers', $OffersArr);

$offerListRender=$this->_smarty->fetch('views/components/offer/offerList.tpl');

?>