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