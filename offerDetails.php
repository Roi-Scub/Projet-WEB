<?php 
require_once('API/libs/Smarty.class.php'); 
session_start();
// Connexion à la base de données (remplacez les détails par les vôtres)
$smarty = new Smarty();
require('API/database.php');
require('API/check_auth.php');
require('API/IsPilote.php');

require_once('API/viewOffer.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STAGE'S COVE</title>
    <link rel="icon" href="photos/logo_grand.png" type="image/icon type">
    <link rel="stylesheet" href="style.css" />

                                                         <!-- Police "Open sans"-->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">

</head>
<body>
   
    <header id="header_principal">
        <img src="photos/logo_petit.png" alt="Petit logo" id="logo_petit">
        <div id="stroke">
            <nav>
                <ul>
                    
                    <li class="list-item-container"><a href="page_offres.php">Offres</a></li>
                    <li class="list-item-container"><a href="page_entreprises.php">Entreprises</a></li>
                    <li class="list-item-container"><a href="#FAQ">FAQ</a></li>
 
                </ul>
            </nav>
        </div>
            <div id="myaccount">

                <div id="divaa1">
                
                <input id="btna1" type="button" value="Thème">
                <input id="btna2" type="button" value="Compte" onclick="window.location.href='page_profil.php';">
                <input id="btna3" type="button" value="Plus">
                <img id="parametre" src="photos/parametre.png">
                </div>


                



                <button onclick="window.location.href='loading.php';"  id="button_2">Deconnexion</button>
        
        
            </div>
    </header>

<main>

<?php   $smarty->display('API/Composants/offreDetails.tpl'); ?>

</main>