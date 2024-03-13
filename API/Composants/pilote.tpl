
<html>
<head>
    <title>Liste des offres d'emploi</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">

</head>
<body>

   <main>

        <div class="body">

            {foreach $piloteinfo as $p}

                
                <h1 class="bonjour"> Bonjour {$p.Prenom} {$p.Nom} </h1>

                <img class="banner" src="{$p.banniere}" onerror="this.src='../photos/banner_placeholder.jpg'" alt="Banniere de profil">

                    <div class="photo_profil_&_banner">

                        <img class="photo_profil" src="{$p.photo_profil}" onerror="this.src='../photos/photo_profil.jpg'" alt="Photo de profil">
                
                    </div>
                    
                      <div style="display:flex">

                        <div class="informations_personnelles">

                            <h2> Vos informations personnelles </h2>
                            <p class="box"> Nom : {$p.Nom} </p>
                            <p class="box"> Prénom : {$p.Prenom} </p>
                            <p class="box"> Date de naissance : {$p.date_de_naissance} </p>

                        </div>

                        <div class="boutons">
                          <div style="display: flex; flex-direction:column;justify-content:center; align-items: right;">
                          <a href="../GetCRUD.php?action=createUser" name ="action"  class="buttons">Crée un utilisateur</a>
                          <a href="../GetCRUD.php?action=modifyUser" name ="action"  class="buttons">Modifier un utilisateur</a>
                          <a href="../GetCRUD.php?action=deleteUser" name ="action"  class="buttons">Supprimer un utilisateur</a>
                          <a href="../GetCRUD.php?action=viewUser" name ="action" class="buttons">Voir un utilisateur</a>
                          </div>
                          <div style="display: flex; flex-direction:column; justify-content:center; align-items:center">
                          <a href="../GetCRUD.php?action=createOffer" name ="action"  class="buttons">Crée une offre</a>
                          <a href="../GetCRUD.php?action=modifyOffer" name ="action"  class="buttons">Modifier une offre</a>
                          <a href="../GetCRUD.php?action=deleteOffer" name ="action"  class="buttons">Supprimer une offre</a>
                          <a href="../GetCRUD.php?action=viewOffer" name ="action" class="buttons">Voir une offre</a>
                          </div>
                        </div>
                      </div>
                <br>

                    <h2 > Tableau de bord </h2>


            {/foreach}

       <div class="flex">

       <div class="container">
<!-- Affichage des utilisateurs -->
<h3>Utilisateurs</h3>
<ul class="liste">
  {foreach $profileinfo as $user}
    
    <hr><div class="line">{$user.Prenom} {$user.Nom} - {$user.date_de_naissance}<a href="API/GetStudentInfo.php?id={$user.ID_utilisateur}" class="btn">Voir le profil </a><br></div>  <hr>
      
  {/foreach}
</ul>

<!-- Pagination pour les utilisateurs -->
<div class="pagination">
  Pages:
  {foreach range(1, $totalPagesUsers) as $userPageNum}
    <a href="?userPage={$userPageNum}&offerPage={$currentPageUsers}" class="page_number">{$userPageNum}</a><br> 
      
  {/foreach}
</div>
       </div>

<!-- Affichage des offres -->
<div class="container">
<h3>Offres</h3>
<ul class="liste">

  {foreach $offres as $offer}
    <hr><div class="line">{$offer.nom_de_l_offre} - {$offer.Entreprise}<br></div><hr>
  {/foreach}
</ul>

<!-- Pagination pour les offres -->
<div class="pagination">
  Pages:
  {foreach range(1, $totalPagesOffers) as $offerPageNum}
    <a href="?offerPage={$offerPageNum}&userPage={$currentPageUsers}" class="page_number">{$offerPageNum}</a>
  {/foreach}
</div>
       </div>

       </div>
<script>
  // Récupérer la valeur actuelle de la page des utilisateurs et des offres depuis les paramètres GET
  const urlParams = new URLSearchParams(window.location.search);
  const currentPageUsers = urlParams.get('userPage') || 1;
  const currentPageOffers = urlParams.get('offerPage') || 1;


</script>
 </div>
    </main>



</body>


<style>
.buttons {
    
    text-decoration: none;
    color: #000;
    background-color: #f2f2f2;
    margin-right:1vw;
    border: 0.1vw solid #000;
    border-radius: 0.5vw;
    font-family: "Open Sans";
    position: absolute;
    right:2vw;
    height:5vw;
    padding: 0.5vw;
    font-size: 1.2vw;
    font-weight: 400;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 17vw;
    height: 3vw;
    margin-top: 1vw;
    margin-bottom: 1vw;
    margin-left: 5vw;
    margin-right: 1vw;
    transition: 0.5s;
    position: relative;
    overflow: hidden;
    border: 1px solid #f2f2f2;
    


}
.boutons {
    display: flex;
    justify-content: center;
    margin-left:10vw;
    width: 43vw;
    height: 29.5vw;
    margin-top: 1vw;
    border: 0.2vw solid #000;
    border-radius: 1vw;

}
ul.liste {
    list-style-type: none;
    padding: 0vw 0vw 0vw 0vw ;
    border: 0.1vw solid #000;
    border-radius: 1vw;
    width: 40vw;
    font-family: 'Open Sans';
    font-size: 1.2vw;
    font-weight: 400;
    
}

.line {
    display:flex;
   
    align-items: center;
    height:2vw;
    text-align: left;
    margin-left:1vw;
}

.btn {

    text-decoration: none;
    color: #000;
    background-color: #f2f2f2;
    margin-right:1vw;
    border: 0.1vw solid #000;
    border-radius: 0.5vw;
    font-family: "Open Sans";
    position: absolute;
    right:3vw;
    
    height:2vw;
    

}

.btn:hover {

    background-color: #d9d9d9;
    box-shadow: 0px 0px 5px 0px #000000;
}
.page_number {
 
  border: 0.1vw solid #000;
  border-radius: 0.5vw;
  text-decoration: none;
  color: #000;
  margin: 0vw 0.2vw 0vw 0.2vw;
  background-color: #f2f2f2;
}
.page_number:hover {
  background-color: #d9d9d9;
  box-shadow: 0px 0px 5px 0px #000000;
}
.pagination {

    display: flex;
    justify-content: center;
    margin-top: 1vw;
   
    
}
main {
    margin-top:-0.26vw;
    font-family: 'Open Sans', sans-serif;
    display:flex;
    justify-content: center;
    
    height: 250vh;
    background-color: #f2f2f2;
}
.flex {

  display:flex;
  justify-content: center;
}
.body {

    display: flex;
    flex-direction: column;
    
    
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px 0px #000000;
    width: 120Vw;
    height: 90%;
    margin-top: 5%;
    margin-bottom:5%;
    margin-left: 10%;
    margin-right: 10%;
    text-align: center;
    font-size: 20px;
    color: #4d4d4d;
    font-weight: 300;
    line-height: 1.5;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: 0.5s;
    position: relative;
    overflow: hidden;
    border: 1px solid #f2f2f2;

}
.container {

 max-height: 50vw;

}
.bonjour {

margin-top:1vw;
}

.photo_profil {
    height: 11vw;
    width: 11vw;
    margin-top:-10vw;
    margin-left: -40vw;
    border: 0.2vw solid #000;
    border-radius: 1vw;
    position:relative;
}

.informations_personnelles {

    margin-top: 1vw;
    margin-bottom: 1vw;
    border: 0.2vw solid #000;
    border-radius: 1vw;
    padding: 1vw;
    width: 32.5vw;
    position:relative;
    left: 8.5vw;
    
  

}

.box {

    margin-top: 1vw;
    margin-bottom: 1vw;
    border: 0.2vw solid #000;
    border-radius: 1vw;
    padding: 1vw;
    width: 30vw;
   


}

        
.banner {

    height:15vw;
    width: 77vw;
    margin-bottom: 1.2vw;
   
    border-radius: 1vw;
    border: 0.2vw solid #000;
    position:relative;
    left: 8.5vw;
    right:8.5vw;
}
</style>
