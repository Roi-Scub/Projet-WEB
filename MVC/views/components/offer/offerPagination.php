<?php

$this->_smarty->assign('offersPagination', $offersPagination);

$offerPaginationRender=$this->_smarty->fetch('views/components/offer/offerPagination.tpl');

?>