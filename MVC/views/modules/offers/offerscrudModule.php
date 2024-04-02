<?php

$moduleName = "offersCRUD";

require_once('views/components/offer/offerCRUD.php');

require_once('views/modules/footer/footerModule.php');
require_once('views/modules/header/headerModule.php');

$this->appendStyle('offersCRUD.css');
$this->appendScript('offersCRUD.js');

$this->_smarty->assign('offerCRUD', $offerCRUD);

$mainRender = $this->_smarty->fetch('views/modules/offers/offerstemplate.tpl');
$headerRender = $headerRenderGlobal;
$footerRender = $footerRenderGlobal;

?>