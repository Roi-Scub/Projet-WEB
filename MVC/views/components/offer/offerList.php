<?php

$this->_smarty->assign('offers', $offers);

$offerListRender=$this->_smarty->fetch('views/components/offer/offerList.tpl');

?>