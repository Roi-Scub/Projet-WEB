<?php

require_once('libs/Smarty.class.php'); // Inclure la bibliothèque Smarty

// Connexion à la base de données (remplacez les détails par les vôtres)
$smarty = new Smarty();

require('database.php');
session_start();
// Récupérer les informations du pilote depuis la base de données (exemple)
$query = "SELECT u.Prenom, u.Nom, u.date_de_naissance, u.photo_profil, u.banniere FROM utilisateur u WHERE u.ID_utilisateur = $profileId  ;";
$result = $conn->query($query);



// Assigner les données à Smarty
$piloteinfo = $result->fetch_all(MYSQLI_ASSOC);

// Assigner les données à Smarty
$smarty->assign('piloteinfo', $piloteinfo);
// Afficher le template complété
$smarty->display('Composants/pilote.tpl');

?>
