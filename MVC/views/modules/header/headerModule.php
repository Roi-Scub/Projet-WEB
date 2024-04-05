<?php

$componentName = "header";
$this->appendStyle('global.css');

//require_once('views/components/header/header.php');

//$this->_smarty->assign('componentHeader', $headerRenderGlobale);

//&headerRenderGlobal = $this->_smarty->fetch('modules/header/template.tpl');

$headerRenderGlobal = $this->_smarty->fetch('views/modules/' . $componentName . '/template.tpl');

?>