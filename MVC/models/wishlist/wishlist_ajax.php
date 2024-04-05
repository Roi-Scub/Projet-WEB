<?php
// Récupérez les valeurs des filtres
class WishlistAjax extends Manager {

    

$offer_Id = $_POST['offer_Id'];
$wishlist_Id = $_POST['wishlist_Id'];

var message2 = "Ici.";
                                    console.log(message2);  

// Exécutez une requête SQL pour récupérer les offres correspondantes
// (Adaptez cette requête en fonction de votre base de données)

$conn = $this->getDataBase();

$sql = "INSERT INTO contains (Wishlist_Id, Offer_Id)
SELECT * FROM (SELECT :Wishlist_Id, :Offer_Id) AS tmp
WHERE NOT EXISTS (
    SELECT 1 FROM contains WHERE Wishlist_Id = :Wishlist_Id AND Offer_Id = :Offer_Id
) LIMIT 1";

$stmt->prepare($sql);

$stmt = $conn->prepare($sql);

$stmt->bind_param(':Offer_Id', $offer_Id);
$stmt->bin_param('Wishlist_Id', $wishlist_Id);

$offer_Id, $wishlist_Id;



$stmt->execute();

// Exécutez la requête et récupérez les résultats
$resultats = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

$stmt->close();

// Renvoyez les résultats au format JSON
echo json_encode(['resultats' => $resultats]);
}


?>