<?php
require_once('libs/Smarty.class.php'); // Inclure la bibliothèque Smarty


// Récupérer les offres d'emploi depuis la base de données (exemple)
$itemsPerPage = 10; // Nombre d'éléments par page
$page = isset($_GET['page']) ? intval($_GET['page']) : 1; // Récupérez le numéro de page depuis l'URL

// Calculez l'offset (décalage) en fonction du numéro de page
$offset = ($page - 1) * $itemsPerPage;

// Requête SQL avec LIMIT pour paginer les résultats
$query = "SELECT o.nom_de_l_offre, o.duree_de_l_offre, o.date_de_l_offre,o.ID_offre, o.description_de_l_offre, o.salaire, o.nombre_de_places, o.nombre_de_places_prises, e.Entreprise, e.photo_entreprise FROM offre o JOIN entreprise e ON o.ID_entreprise = e.ID_entreprise LIMIT $offset, $itemsPerPage;";
$result = $conn->query($query);


// Assigner les données à Smarty
$offres = $result->fetch_all(MYSQLI_ASSOC);
$smarty->assign('offres', $offres);
$smarty->assign('value',$value);
?>