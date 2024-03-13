<?php
// Récupérez les valeurs des filtres
$specialite = $_POST['specialite'];
$dateDebut = $_POST['dateDebut'];
$dateFin = $_POST['dateFin'];
$duree = $_POST['duree'];
$salaire = $_POST['salaire'];
$entreprise = $_POST['entreprise'];
$type = $_POST['type'];

var message2 = "Ici.";
                                    console.log(message2);  

// Exécutez une requête SQL pour récupérer les offres correspondantes
// (Adaptez cette requête en fonction de votre base de données)

$query = "SELECT * FROM offre o JOIN promotion p ON o.ID_promotion = p.ID_promotion JOIN entreprise e ON o.ID_entreprise = e.ID_entreprise WHERE Specialite = ?";

if (!empty($dateDebut)) {
    $query .= " AND date_debut_offre >= ?";
}

if (!empty($dateFin)) {
    $query .= " AND date_de_l_offre <= ?";
}

if (!empty($duree)) {
    $query .= " AND o.duree_de_l_offre = ?";
}

if (!empty($salaire)) {
    $query .= " AND o.salaire = ?";
}

if (!empty($entreprise)) {
    $query .= " AND e.entreprise = ?";
}

if (!empty($type)) {
    $query .= " AND o.type = ?";
}
$stmt = $conn->prepare($query);


$stmt->bind_param("sssiiss", );
$specialite, $dateDebut, $dateFin, $duree, $salaire, $entreprise, $type



$stmt->execute();

// Exécutez la requête et récupérez les résultats
$resultats = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

$stmt->close();

// Renvoyez les résultats au format JSON
echo json_encode(['resultats' => $resultats]);

?>