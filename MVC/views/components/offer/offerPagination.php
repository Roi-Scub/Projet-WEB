<?php


//$this->_smarty->assign('offersPagination', $offersPagination);
$this->_smarty->assign("currentPage", $_GET['page']);
$this->_smarty->assign("max", $max);
$offerPaginationRender = $this->_smarty->fetch('views/components/offer/offerPagination.tpl');


      

    



?>