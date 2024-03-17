<?php
  
// Initialiser la session
session_start();



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

    <hr id="barre">
        <div id="rectangle">

            <div>

                <h1 id="titre1"> Stage's cove : <br> La référence pour la recherche de stage !</h1>

                <p id="paragraphe1">Pour les étudiants, la recherche de stage n'a jamais été aussi simple !</p>

                <button onclick="window.location.href='page_offres.php';"  id="button_3">COMMENCER À CHERCHER</button>

            </div>

            <img src="photos/logo_grand.png" alt="Grand logo" id="grand_logo">

            
        </div>

        <div id="arrow">
        
            <a href="#titre2" id="arrowdown"><i class='fas fa-chevron-down' style='color: black'></i></a>
        </div>


    <div id="main">

       <div id="Fonctionnement">

            <h2 id="titre2">Comment ça fonctionne ?</h2>
            
                <h5 id="titre5">3 étapes simples pour t'accompagner</h5>

                    <div id="Options">

                        <div id="cercle" > <h1 id="a01" >01</h1> </div>
                        <div id="rectangle1"></div>
                        <div id="cercle1" > <h1 id="a02" >02</h1> </div>
                        <div id="rectangle1"></div>
                        <div id="cercle2" > <h1 id="a03" >03</h1> </div>

                    </div>

                    <div id="Options1">

                        <div class="texte1"> <h2>Crée</h2></div>
                        <div class="rectangle2"></div>
                        <div class="texte1"> <h2>Cherche</h2></div>
                        <div class="rectangle2"></div>
                        <div class="texte1"> <h2>Postule</h2></div>

                    </div>

                    <div id="Option3">

                        <div class="texte2"> <h5>Module ton profil par rapport à tes compétences et attentes</h5></div>
                        <div class="rectangle3"></div>
                        <div class="texte2"> <h5>Cherche l'entreprise de tes rêves depuis notre banque de données</h5></div>
                        <div class="rectangle3"></div>
                        <div class="texte2"> <h5>Envoie tes candidatures aux offres de ton choix</h5></div>

                    </div>

        </div>

        <hr id="barre_grise">
<h2 id="titre25">Ils nous font confiance :</h2>

        <div id="affiliés">

            

                
                <div class="container">
                    
                    <input type="radio" name="slider" id="orange" checked>
                    <input type="radio" name="slider" id="amadeus">
                    <input type="radio" name="slider" id="thales">
                 
                    
                        <div class="cards">

                            <label class="card" for="orange" id="song-1">
                            <img src="photos/orange.png" alt="song">
                            </label>
                            <label class="card" for="amadeus" id="song-2">
                            <img src="photos/amadeus.png" alt="song">
                            </label>
                            <label class="card" for="thales" id="song-3">
                            <img src="photos/thales.png" alt="song">
                            </label>
                            
                        </div>
                          
                </div>
                </div>
                
  




        </div>





    </div>
    <div id="rectangleFAQ">

        <h2 id="FAQ"> FAQ</h2>

        <div class="select"><img src="photos/plus.png" onmouseup="document.getElementById('div1').style.display='block'" ><h2 id="CV">Comment faire un bon cv ?</h2></div>
        <div id="div1" class="desc">
        <img src="photos/moins.png" onmouseup="document.getElementById('div1').style.display='none'"  >
        <p id="descriptionCV">Nous disposons, dans l'enceinte de notre école, des étudiants et formateurs qui seraient ravis de pouvoir t'accompagner dans la création d'un bon cv !
            <br><br>Des sites comme Canva ou cv.com t'accompagne dans la création d'un cv personnalisé avec un beau design.</p>
        </div>
        <div class="select"><img src="photos/plus.png" onmouseup="document.getElementById('div2').style.display='block'" ><h2 id="CV">Comment se préparer à un entretien ?</h2></div>
        <div id="div2" class="desc">
        <img src="photos/moins.png" onmouseup="document.getElementById('div2').style.display='none'"  >
        <p id="descriptionCV">Nous disposons, dans l'enceinte de notre école, des étudiants et formateurs qui seraient ravis de pouvoir t'accompagner dans la création d'un bon cv !
            <br><br>Des sites comme Canva ou cv.com t'accompagne dans la création d'un cv personnalisé avec un beau design.</p>
        </div>
        <div class="select"><img src="photos/plus.png" onmouseup="document.getElementById('div3').style.display='block'"  ><h2 id="CV">Les lettres de motivation sont-elles nécessaires ?</h2></div>
        <div id="div3" class="desc">
        <img src="photos/moins.png" onmouseup="document.getElementById('div3').style.display='none'"  >
        <p id="descriptionCV">Nous disposons, dans l'enceinte de notre école, des étudiants et formateurs qui seraient ravis de pouvoir t'accompagner dans la création d'un bon cv !
            <br><br>Des sites comme Canva ou cv.com t'accompagne dans la création d'un cv personnalisé avec un beau design.</p>
        </div>

    </div>


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
</html>
