<?php 


require('database.php');
// Créez une connexion

session_start();


// Récupérez les données du formulaire
$nom_offre = $_POST['nom_offre'];
$description = $_POST['description'];
$date_offre = $_POST['date_offre'];
$duree_offre = $_POST['duree_offre'];
$salaire = $_POST['salaire'];
$nombre_places = $_POST['nombre_places'];
$places_prises = $_POST['places_prises'];




// Requête SQL d'insertion
$sql = "INSERT INTO offres_emploi (nom_offre, description, date_offre, duree_offre, salaire, nombre_places, places_prises)
        VALUES ('$nom_offre', '$description', '$date_offre', '$duree_offre', $salaire, $nombre_places, $places_prises)";

if ($conn->query($sql) === TRUE) {
    echo "L'offre d'emploi a été ajoutée avec succès !";
} else {
    echo "Erreur lors de l'ajout de l'offre d'emploi : " . $conn->error;
}

// Fermez la connexion
$conn->close();
?>