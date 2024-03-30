<div class="body">
 <div>
{foreach $profile as $pi}

    <h1 class="bonjour"> Bonjour {$pi->getFirstName()} {$pi->getLastName()} </h1>

    <img class="banner" src="{$pi->getBannerLink()}" onerror="this.src='../../../global/images/banner_placeholder.jpg'" alt="Banniere de profil">

        <div class="photo_profil_&_banner">

            <img class="photo_profil" src="{$pi->getPictureLink()}" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Photo de profil">
    
        </div>
        
          <div style="display:flex">

            <div class="informations_personnelles">

                <h2> Vos informations personnelles </h2>
                <p class="box"> Nom : {$pi->getLastName()} </p>
                <p class="box"> Prénom : {$pi->getFirstName()} </p>
                <p class="box"> Date de naissance : {$pi->getBirthday()} </p>

            </div>

            <div class="boutons">
              <div style="display: flex; flex-direction:column;justify-content:center; align-items: right;">
              <a href="" name ="action"  class="buttons">Crée un utilisateur</a>
              <a href="" name ="action"  class="buttons">Modifier un utilisateur</a>
              <a href="" name ="action"  class="buttons">Supprimer un utilisateur</a>
              <a href="" name ="action" class="buttons">Voir un utilisateur</a>
              </div>
              <div style="display: flex; flex-direction:column; justify-content:center; align-items:center">
              <a href="" name ="action"  class="buttons">Crée une offre</a>
              <a href="" name ="action"  class="buttons">Modifier une offre</a>
              <a href="" name ="action"  class="buttons">Supprimer une offre</a>
              <a href="" name ="action" class="buttons">Voir une offre</a>
              </div>
            </div>
          </div>
    <br>

        <h2 > Tableau de bord </h2>


{/foreach}</div>

<div class="flex">

<div class="container">

<h3>Utilisateurs</h3>
<ul class="liste">
<!--{foreach $profileinfo as $user}

<hr><div class="line">{$user.Prenom} {$user.Nom} - {$user.date_de_naissance}<a href="API/GetStudentInfo.php?id={$user.ID_utilisateur}" class="btn">Voir le profil </a><br></div>  <hr>

{/foreach}-->
</ul>


<div class="pagination">
Pages:
<!--{foreach range(1, $totalPagesUsers) as $userPageNum}
<a href="?userPage={$userPageNum}&offerPage={$currentPageUsers}" class="page_number">{$userPageNum}</a><br> 

{/foreach}-->
</div>
</div>


<div class="container">
<h3>Offres</h3>
<ul class="liste">

<!--{foreach $offres as $offer}
<hr><div class="line">{$offer.nom_de_l_offre} - {$offer.Entreprise}<br></div><hr>
{/foreach}-->
</ul>


<div class="pagination">
Pages:
<!--{foreach range(1, $totalPagesOffers) as $offerPageNum}
<a href="?offerPage={$offerPageNum}&userPage={$currentPageUsers}" class="page_number">{$offerPageNum}</a>
{/foreach}-->
</div>
</div>

