<?php

$moduleName = "legalTerms";
$this->appendStyle('legalTerms.css');

require_once('views/components/legalTerms/legalTerms.php');
require_once('views/modules/header/headerModule.php');
require_once('views/modules/footer/footerModule.php');


$this->_smarty->assign('componentLegalTerms', $legalTermsRender);


$mainRender = $this->_smarty->fetch('views/modules/' . $moduleName . '/template.tpl');
$headerRender = $headerRenderGlobal;
$footerRender = $footerRenderGlobal;

?>