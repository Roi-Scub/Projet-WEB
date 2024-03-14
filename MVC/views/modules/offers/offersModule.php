<?php
// --- Configuration du nom de la vue ---
$moduleName = "offers";
// --- Configuration du style de la vue ---
$this->_smarty->appendStyle('../../../global/styles/offers.css');

// --- Récupération des données pour le module ---
require_once('view/components/offer/offerList.php');
require_once('view/components/offer/offerFilter.php');
require_once('view/components/offer/offerPagination.php');

// --- assignation des variables pour le rendu final ---
$this->_smarty->assign('componentOfferList', $offerListRender);
$this->_smarty->assign('componentOfferFilter', $offerFilterRender);
$this->_smarty->assign('componentOfferPagination', $offerPaginationRender);

// --- assignation des variables pour le rendu final ---
$headerRender = $this->_smarty->fetch('modules/header/headerModule.php');
$mainRender=$this->_smarty->fetch('models/offers/template.tpl');
$footerRender = $this->_smarty->fetch('modules/footer/footerModule.php');

?>