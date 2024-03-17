<?php
// --- Configuration du nom de la vue ---
$moduleName = "offers";
// --- Configuration du style de la vue ---
$this->appendStyle('offers.css');


// --- Récupération des données pour le module ---
require_once('views/components/offer/offerList.php');
//require_once('views/components/offer/offerFilter.php');
require_once('views/components/offer/offerPagination.php');
//require_once('views/modules/header/headerModule.php');
//require_once('views/modules/footer/footerModule.php');
require_once('views/modules/header/headerModule.php');
// --- assignation des variables pour le rendu final ---
$this->_smarty->assign('componentOfferList', $offerListRender);
//$this->_smarty->assign('componentOfferFilter', $offerFilterRender);
$this->_smarty->assign('componentOfferPagination', $offerPaginationRender);

// --- assignation des variables pour le rendu final ---

$mainRender = $this->_smarty->fetch('views/modules/offers/template.tpl');
$headerRender = $headerRenderGlobal;
//$headerRender = $headerRenderGlobal;
//$footerRender = $footerRenderGlobal;

?>