<?php

$moduleName = "businesses";
$this->appendStyle('businesses.css');


require_once('views/components/businesses/businesses.php');
require_once('views/modules/footer/footerModule.php');
require_once('views/modules/header/headerModule.php');

$this->_smarty->assign('businessRender', $businessRender);

$headerRender = $headerRenderGlobal;
$mainRender = $this->_smarty->fetch('views/modules/businesses/template.tpl');
$footerRender = $footerRenderGlobal;


?>
