<?php
$itemsPerPage = 10; // Nombre d'éléments par page
$page = isset($_GET['page']) ? intval($_GET['page']) : 1; // Récupérez le numéro de page depuis l'URL

// Calculez l'offset (décalage) en fonction du numéro de page
$offset = ($page - 1) * $itemsPerPage;

//$this->_smarty->assign('offersPagination', $offersPagination);

$offerPaginationRender=$this->_smarty->fetch('views/components/offer/offerPagination.tpl');

?>