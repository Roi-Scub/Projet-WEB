<?php

$componentName = "footer";

$this->appendStyle('global.css');

//require_once('views/components/footer/footer.php');

//$this->_smarty->assign('componentFooter', $footerRenderGlobale);

$footerRenderGlobal = $this->_smarty->fetch('views/modules/' . $componentName . '/template.tpl');
?>

