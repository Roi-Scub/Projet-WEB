


<?php


require_once('libs/Smarty.class.php'); // Inclure la bibliothèque Smarty

// Connexion à la base de données (remplacez les détails par les vôtres)
$smarty = new Smarty();


$profileId = $_GET['id'];

require('database.php');
session_start();
// Récupérer les informations du pilote depuis la base de données (exemple)
$query = "SELECT u.Prenom, u.Nom, u.date_de_naissance, u.photo_profil, u.banniere, u.login, a.Nom_de_l_adresse, a.Code_postal, a.ville, a.pays, c.CV, c.Secteur, c.lettre FROM utilisateur u JOIN habite h ON h.ID_utilisateur = u.ID_utilisateur JOIN adresse a ON a.ID_adresse = h.ID_adresse JOIN eleve e ON e.ID_utilisateur = u.ID_utilisateur JOIN candidature c ON c.ID_utilisateur = e.ID_utilisateur WHERE u.ID_utilisateur = $profileId  ;";
$result = $conn->query($query);

$ID_visiteur = "1";

// Assigner les données à Smarty
$studentinfo = $result->fetch_all(MYSQLI_ASSOC);

// Assigner les données à Smarty
$smarty->assign('studentinfo', $studentinfo);
// Afficher le template complété
$smarty->display('Composants/student.tpl');
?>

