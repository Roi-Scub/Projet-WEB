<?php

$moduleName = "footer";
$this->_smarty->appendStyle('global/styles/global.css');



&footerRenderGlobal = $this->_smarty->fetch('modules/footer/template.tpl');

?>