<?php
require_once('API/libs/Smarty.class.php'); // Inclure la bibliothèque Smarty
session_start();

$smarty = new Smarty();

require('API/database.php');
require('API/check_auth.php');
require('API/GetBusinessInfo.php');
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

        <a href="index.php"><img src="photos/logo_petit.png" alt="Petit logo" id="logo_petit" ></a>

            <div id="stroke">
                <nav>
                    <ul>
                        <li class="list-item-container"><a href="page_offres.php" >Offres</a></li>
                        <li class="list-item-container"><a href="page_entreprises.php" id="test">Entreprises</a></li>
                        <li class="list-item-container"><a href="index.php#FAQ">FAQ</a></li>
    
                    </ul>
                </nav>
            </div>

            <div id="myaccount">
            
            <div id="divaa1">
            
            <input id="btna1" type="button" value="Theme">
            <input id="btna2" type="button" value="Profile">
            <input id="btna3" type="button" value="More">
            <img id="parametre" src="photos/parametre.png">
            </div>

            <button onclick="window.location.href='loading.php';"  id="button_2">Deconnexion</button>

           
            </div>
        
    </header>

    <hr id="barre">


        <form id="search_form" role="search">

            <input type="search" id="query_input" name="q" placeholder="Rechercher . . ." aria-label="Search through site content">

            <button id="search_input"><img src="photos/loupe.png" alt="Icone recherche" id="search_icon"></button>

        </form>


    <main>

        <div id="businnesses_main_page">
<?php
        $smarty->display('API/Composants/entreprise.tpl');?>
</div>

</main>