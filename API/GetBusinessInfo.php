<?php



// Récupérer les offres d'emploi depuis la base de données (exemple)
$query = "SELECT e.Entreprise, e.Description, e.Secteur_activite, e.photo_entreprise, e.banniere_entreprise FROM entreprise e ";
$result = $conn->query($query);



// Assigner les données à Smarty
$entreprise = $result->fetch_all(MYSQLI_ASSOC);

// Assigner les données à Smarty
$smarty->assign('entreprise', $entreprise);
// Afficher le template complété
?>