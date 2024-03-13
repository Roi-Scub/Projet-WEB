<?php

require_once('libs/Smarty.class.php'); 

// Inclure la bibliothèque Smarty
$smarty = new Smarty();
require_once('database.php');



$ID_offre = $_GET['id'];
// Connexion à la base de données (remplacez les détails par les vôtres)


$query = "SELECT o.nom_de_l_offre, o.duree_de_l_offre, o.date_de_l_offre, o.description_de_l_offre, o.salaire, o.nombre_de_places, o.nombre_de_places_prises, e.Entreprise, e.photo_entreprise FROM offre o JOIN entreprise e ON o.ID_entreprise = e.ID_entreprise WHERE ID_offre = $ID_offre ";
$result = $conn->query($query);

// Assigner les données à Smarty
$offres = $result->fetch_all(MYSQLI_ASSOC);
$smarty->assign('offres', $offres);



?>