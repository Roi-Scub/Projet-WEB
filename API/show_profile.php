<?php

$createOffer = "createOffer";
$createUser = "createUser";
$modifyOffer = "modifyOffer";
$modifyUser = "modifyUser";
$deleteOffer = "deleteOffer";
$deleteUser = "deleteUser";
$viewOffer = "viewOffer";
$viewUser = "viewUser";






include 'check_auth.php';
$smarty = new Smarty();

$query = "SELECT * FROM pilote WHERE ID_utilisateur = $profileId";
$result = mysqli_query($conn, $query);


if ($result) {
    
    if (mysqli_num_rows($result) > 0) {


        $query1 = "SELECT u.Prenom, u.Nom, u.date_de_naissance, u.photo_profil, u.banniere FROM utilisateur u WHERE u.ID_utilisateur = $profileId  ;";
        $result1= $conn->query($query1);
        $piloteinfo = $result1->fetch_all(MYSQLI_ASSOC);
        $smarty->assign('piloteinfo', $piloteinfo); 

        $itemsPerPage = 10; // Nombre d'éléments par page
        $userPage = isset($_GET['userPage']) ? intval($_GET['userPage']) : 1;
        $offerPage = isset($_GET['offerPage']) ? intval($_GET['offerPage']) : 1;
        
        // Calculez l'offset (décalage) en fonction du numéro de page pour les utilisateurs et les offres
        $userOffset = ($userPage - 1) * $itemsPerPage;
        $offerOffset = ($offerPage - 1) * $itemsPerPage;
        

        $currentPageOffers = $offerPage;
        $currentPageUsers = $userPage;
        // Récupérer les informations des utilisateurs depuis la base de données
        $queryUsers = "SELECT u.Prenom, u.Nom, u.date_de_naissance, u.photo_profil, u.banniere, u.ID_utilisateur FROM utilisateur u LIMIT $userOffset, $itemsPerPage;";
        $resultUsers = $conn->query($queryUsers);
        $profileinfo = $resultUsers->fetch_all(MYSQLI_ASSOC);
        
        // Récupérer les informations des offres depuis la base de données
        $queryOffers = "SELECT o.nom_de_l_offre, o.duree_de_l_offre, o.date_de_l_offre, o.description_de_l_offre, o.salaire, o.nombre_de_places, o.nombre_de_places_prises, e.Entreprise, e.photo_entreprise FROM offre o JOIN entreprise e ON o.ID_entreprise = e.ID_entreprise LIMIT $offerOffset, $itemsPerPage;";
        $resultOffers = $conn->query($queryOffers);
        $offres = $resultOffers->fetch_all(MYSQLI_ASSOC);
        
        // Assigner les données à Smarty
        $smarty->assign('profileinfo', $profileinfo); 
        $smarty->assign('offres', $offres);
        
        // Calculer le nombre total de pages pour les utilisateurs et les offres
        $queryTotalUsers = "SELECT COUNT(*) AS total FROM utilisateur";
        $totalUsers = mysqli_fetch_assoc($conn->query($queryTotalUsers))['total'];
        $totalPagesUsers = ceil($totalUsers / $itemsPerPage);
        
        $queryTotalOffers = "SELECT COUNT(*) AS total FROM offre";
        $totalOffers = mysqli_fetch_assoc($conn->query($queryTotalOffers))['total'];
        $totalPagesOffers = ceil($totalOffers / $itemsPerPage);
        
        $smarty->assign('totalPagesUsers', $totalPagesUsers);
        $smarty->assign('totalPagesOffers', $totalPagesOffers);
        $smarty->assign('currentPageOffers', $currentPageOffers);
        $smarty->assign('currentPageUsers', $currentPageUsers);

        $smarty->display('API/Composants/pilote.tpl');
            
        
    } else {

 
       
        $query2 = "SELECT u.Prenom, u.Nom, u.date_de_naissance, u.photo_profil, u.banniere, u.login, a.Nom_de_l_adresse, a.Code_postal, a.ville, a.pays, c.CV, c.Secteur, c.lettre FROM utilisateur u JOIN habite h ON h.ID_utilisateur = u.ID_utilisateur JOIN adresse a ON a.ID_adresse = h.ID_adresse JOIN eleve e ON e.ID_utilisateur = u.ID_utilisateur JOIN candidature c ON c.ID_utilisateur = e.ID_utilisateur WHERE u.ID_utilisateur = $profileId  ;";

        $result2= $conn->query($query2);
        
        
        
        // Assigner les données à Smarty
        $studentinfo = $result2->fetch_all(MYSQLI_ASSOC);
        
        // Assigner les données à Smarty
            $smarty->assign('studentinfo', $studentinfo);
            $smarty->display('API/Composants/student.tpl');


    }
} else {
    
    echo "Erreur lors de la récupération des droits d'accès.";
}
    

?>