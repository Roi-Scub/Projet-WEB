<?php
//
//$businessManager = new businessManager();
//$businesses = $businessManager->getBusinessInfo(10, 0);
//var_dump($businesses);


$this->_smarty->assign('business', $business);
$this->_smarty->assign("currentPage", $page);
$this->_smarty->assign("max", $max);

$businessRender = $this->_smarty->fetch('views/components/businesses/businesses.tpl');

?>
