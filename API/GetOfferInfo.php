<?php
require_once('libs/Smarty.class.php'); // Inclure la bibliothèque Smarty

// Connexion à la base de données (remplacez les détails par les vôtres)
$smarty = new Smarty();

require('database.php');
session_start();
// Récupérer les offres d'emploi depuis la base de données (exemple)
$query = "SELECT o.nom_de_l_offre, o.duree_de_l_offre, o.date_de_l_offre, o.description_de_l_offre, o.salaire, o.nombre_de_places, o.nombre_de_places_prises, e.Entreprise, e.photo_entreprise FROM offre o JOIN entreprise e ON o.ID_entreprise = e.ID_entreprise ;";
$result = $conn->query($query);



// Assigner les données à Smarty
$offres = $result->fetch_all(MYSQLI_ASSOC);

// Assigner les données à Smarty
$smarty->assign('offres', $offres);
// Afficher le template complété
$smarty->display('Composants/offre.tpl');
?>