<?php

$moduleName = "footer";
$this->_smarty->appendStyle('global/styles/global.css');

require_once('views/components/footer/footer.php');
$this->smarty->assign('componentFooter', $footerRender);

&footerRenderGlobal = $this->_smarty->fetch('modules/footer/template.tpl');
?>