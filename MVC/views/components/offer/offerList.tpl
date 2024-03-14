
<div>
{foreach $offres as $offre}

<div class="offre">
    <div class="Enteprise">
    <img class="logo_entreprise" src="{$offre.photo_entreprise}" onerror="this.src='../photos/photo_profil.jpg'" alt="Logo de l'entreprise">
    <span class="nom_entreprise">{$offre.Entreprise}</span>
    </div>
    <div class="vertical_bar"></div>
    <div class="description_offre">
    <div class="intitule_offre">
    <span class="nom_offre">{$offre.nom_de_l_offre}</span> <span class="temps_offre">({$offre.duree_de_l_offre})   -   Date : {$offre.date_de_l_offre}</span><br></div>
    <div class="secteur_description"><span class="description_titre">Description : </span> <div class="description">{$offre.description_de_l_offre}</div></div>
    
    <div class="salaires"><a href="../../offerDetails.php?id={$offre.ID_offre}" class="test {if $value == "true"}visible{elseif $value =="false"}invisible{/if}">test</a>
    Salaire : {$offre.salaire} |  Nombre de places : {$offre.nombre_de_places} ({$offre.nombre_de_places_prises} prises)<br>
    </div>

    </div>
    <br>
    
  
</div>

{/foreach}
</div>