<?php

$moduleName = "businessesView";

$this->appendStyle('businesses.css');

require_once('views/components/businesses/businessesview.php');
require_once('views/modules/footer/footerModule.php');
require_once('views/modules/header/headerModule.php');

$this->_smarty->assign('businessView', $businessView);

$headerRender = $headerRenderGlobal;
$mainRender = $this->_smarty->fetch('views/modules/businesses/businessesview.tpl');
$footerRender = $footerRenderGlobal;

?>