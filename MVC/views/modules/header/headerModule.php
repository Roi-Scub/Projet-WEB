<?php

$moduleName = "header";
$this->_smarty->appendStyle('global/styles/global.css');

$this->smarty->assign('componentHeader', $headerRender);

&headerRenderGlobal = $this->_smarty->fetch('modules/header/template.tpl');

?>