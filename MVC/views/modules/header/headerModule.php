<?php

$moduleName = "header";
$this->_smarty->appendStyle('global/styles/global.css');

require_once('view/components/header/header.php');
$this->smarty->assign('componentHeader', $headerRenderGlobal);

//&headerRenderGlobal = $this->_smarty->fetch('modules/header/template.tpl');

$headerRender = $this->_smarty->fetch('modules/header/template.tpl');

?>