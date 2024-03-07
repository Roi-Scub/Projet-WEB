<?php
// Récupérez les valeurs des filtres
$specialite = $_POST['specialite'];
$dateDebut = $_POST['dateDebut'];
$dateFin = $_POST['dateFin'];
$duree = $_POST['duree'];
$salaire = $_POST['salaire'];
$entreprise = $_POST['entreprise'];
$type = $_POST['type'];

var message2 = "Bonjour, nigga monde !";
                                    console.log(message2);  

// Exécutez une requête SQL pour récupérer les offres correspondantes
// (Adaptez cette requête en fonction de votre base de données)

$query = "SELECT * FROM offres o JOIN promotion p ON o.ID_promotion = p.ID_promotion JOIN entreprise e ON o.ID_entreprise = e.ID_entreprise WHERE Specialite = '$specialite'";
if (!empty($dateDebut)) {
    $query .= " AND date_debut_offre >= '$dateDebut'";
}

if (!empty($dateFin)) {
    $query .= " AND date_de_l_offre <= '$dateFin'";
}

if (!empty($duree)) {
    $query .= " AND o.duree_de_l_offre = '$duree'";
}

if (!empty($salaire)) {
    $query .= " AND o.salaire = '$salaire'";
}

if (!empty($entreprise)) {
    $query .= " AND e.entreprise = '$entreprise'";
}

if (!empty($type)) {
    $query .= " AND o.type = '$type'";
}


// Exécutez la requête et récupérez les résultats
$resultats = $conn->query($query)->fetch_all(MYSQLI_ASSOC);


// Renvoyez les résultats au format JSON
echo json_encode(['resultats' => $resultats]);

?>