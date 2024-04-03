<?php

$businessManager = new businessManager();
$businesses = $businessManager->getBusinessById($_GET['id']);



$this->_smarty->assign('business', $businesses);

$businessViewRender = $this->_smarty->fetch('views/components/businesses/businessView.tpl');

?>