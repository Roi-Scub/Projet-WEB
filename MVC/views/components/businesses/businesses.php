<?php

$businessManager = new businessManager();
$businesses = $businessManager->getBusinessInfo(10, 0);
var_dump($businesses);


$this->_smarty->assign('business', $businesses);

$businessRender = $this->_smarty->fetch('views/components/businesses/businesses.tpl');

?>
