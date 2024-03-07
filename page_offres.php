<?php require_once('API/libs/Smarty.class.php'); // Inclure la bibliothèque Smarty

// Connexion à la base de données (remplacez les détails par les vôtres)
$smarty = new Smarty();

require('API/database.php');

// Récupérer les offres d'emploi depuis la base de données (exemple)
$itemsPerPage = 10; // Nombre d'éléments par page
$page = isset($_GET['page']) ? intval($_GET['page']) : 1; // Récupérez le numéro de page depuis l'URL

// Calculez l'offset (décalage) en fonction du numéro de page
$offset = ($page - 1) * $itemsPerPage;

// Requête SQL avec LIMIT pour paginer les résultats
$query = "SELECT o.nom_de_l_offre, o.duree_de_l_offre, o.date_de_l_offre, o.description_de_l_offre, o.salaire, o.nombre_de_places, o.nombre_de_places_prises, e.Entreprise, e.photo_entreprise FROM offre o JOIN entreprise e ON o.ID_entreprise = e.ID_entreprise LIMIT $offset, $itemsPerPage;";
$result = $conn->query($query);

// Assigner les données à Smarty
$offres = $result->fetch_all(MYSQLI_ASSOC);
$smarty->assign('offres', $offres);
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
                        <li class="list-item-container"><a href="page_offres.html" id="test">Offres</a></li>
                        <li class="list-item-container"><a href="page_entreprises.html">Entreprises</a></li>
                        <li class="list-item-container"><a href="#FAQ">FAQ</a></li>
    
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

        <div id="offers_main_page">

            <fieldset id="filters_fieldset">
            
                <legend id="filters_title">Filtres</legend>

                    <form id ="filters">  
                       
                            <h2 id="filters_name">Spécialité</h2>
                            <hr id="filters_bar">
                            
                                                        <!-- CHECKUP -->

                                <form id="specialiteSelect">


                                    <input type="radio" id="btp" name="speciality" value="BTP"  required>
                                        <label for="btp" class="radio">BTP</label><br>
                            
                                    <input type="radio" id="informatic" name="speciality" value="Informatique" >
                                        <label for="informatic" class="radio">Informatique</label><br>
                            
                                    <input type="radio" id="generalist" name="speciality" value="Généraliste" >
                                        <label for="generalist" class="radio">Généraliste</label><br>

                                    <input type="radio" id="s3e" name="speciality" value="S3E" >
                                        <label for="s3e" class="radio">S3E</label><br>

                                    </form>
        
                            <h2 id="filters_name">Dates</h2>
                            <hr id="filters_bar">
                            
                                <form id="type_select">

                                    <input type="radio" id="stage" name="type" value="Stage" required >
                                        <label for="stage" class="radio">Stage</label><br>

                                    <input type="radio" id="alternance" name="type" value="Alternance" >
                                        <label for="alternance" class="radio">Alternance</label><br>
                                      

                                    <h3 id="filter_title">Date du début : </h3>

                                        <input type="date" id="start" name="trip-start" value="datetime" min="datetime" max="2025-12-31"  required/>

                                    <h3 id="filter_title">Durée en semaine : </h3>

                                        <input type="number" id="week_input" name="week_inpu" min="10" max="45"  /> <h3 id="week_title">Semaines</h3>

                                </form>

                            <h2 id="filters_name">Rémunération</h2>
                            <hr id="filters_bar">

                                <form>

                                    <h3 id="filter_title">Salaire minimum : <span id="demo"></span> €</h3>

                                        <div class="slidecontainer">

                                            <input type="range" min="640" max="1250" value="640" class="slider" id="myRange">

                                            <input type="number" id="tentacles" class="tentacles" min="640" max="1250" /> <h3 id="salary_title">Saisie manuelle</h3>

                                        </div>

                                            <script src="Js.js"></script>

                                </form>

                            <h2 id="filters_name">Entreprise</h2>
                            <hr id="filters_bar">

                                <form>

                                    <select id="select_box" name="Entreprise" required>
                                   
                                        <option value="">Choisir</option>

                                            <?php  
    
                                                   $query = "SELECT DISTINCT Entreprise FROM entreprise";
                                                   $result = $conn->query($query);
    
                                                        while ($row = $result->fetch_assoc()) 
                                                        {
                                                            $entreprise = $row['Entreprise'];
                                                            echo "<option value=\"$entreprise\">$entreprise</option>";
                                                        }
                                                    
                                            ?>                   
                                               
                                    </select>

                                </form>


                    </form>

                                 
              
            </fieldset>

               <div id="resultats">
                
                <?php

                $smarty->display('API/Composants/offre.tpl');

                ?></div>

                            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                            <script><?php   echo " test"; ?>
                                // Écoutez l'événement de changement des filtres
                                $('#filters_fieldset').change(function() {
                                    var message = "Bonjour, monde !";
                                      
                                    var specialite = $('#speciality').val(); // Récupérez la spécialité sélectionnée
                                    var dateDebut = $('#dateDebutInput').val(); // Récupérez la date de début sélectionnée
                                    var duree = $('#dureeInput').val(); // Récupérez la durée sélectionnée
                                    var salaire = $('#tentacles').val(); // Récupérez le salaire sélectionné
                                    var entreprise = $('#entrepriseSelect').val(); // Récupérez l'entreprise sélectionnée
                                    var type = $('#type_select').val(); // Récupérez le type sélectionné
                                     
                                
                                    // Envoie de la requête AJAX au serveur
                                    $.ajax({
                                        url: 'ajax_handler.php',
                                        method: 'POST',
                                        data: { specialite: specialite, dateDebut: dateDebut, duree: duree, salaire: salaire, entreprise: entreprise, type: type},
                                        dataType: 'json',
                                        success: function(data) {
                                            // Mettez à jour la div avec les résultats
                                            console.log(message); 

                                            $('#resultats').html(data.resultats);
                                        }
                                    });
                                });
</script>
                      


        </div>

                                                        <?php
                                                        echo '<a href="?page=' . ($page - 1) . '">Page précédente</a>';
                                                        echo '<a href="?page=' . ($page + 1) . '">Page suivante</a>';
                                                        ?>

    </main>

    <footer id="footer">


        <div id="réseaux">

            <img src="photos/twitter.png" alt="Twitter" class="logo_reseaux">
            <img src="photos/instagram.png" alt="Instagram" class="logo_reseaux">
            <img src="photos/facebook.png" alt="facebook" class="logo_reseaux">

        </div>

        <div id="logo_bottom">

            <img src="photos/logo_petit.png" alt="Petit logo" id="logo_petit1">

        </div>

        <div id="right_div">

            <h5 id="rights">© Stage's cove 2024</h5>

        </div>



        
    </footer>

</body>