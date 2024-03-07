<?php
require_once('../API/libs/Smarty.class.php'); // Inclure la bibliothèque Smarty

// Initialiser Smarty
$smarty = new Smarty();

// Chargez le template complété (qui a déjà été assigné avec les données)
$smarty->display('../API/Composants/offre.tpl');


?>