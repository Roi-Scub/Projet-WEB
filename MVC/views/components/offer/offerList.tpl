<!---->
<div>

{foreach $offers as $offer}
   

<div class="offre">
    <div class="Enteprise">
    <img class="logo_entreprise" src="{}" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Logo de l'entreprise">
    <span class="nom_entreprise"></span>
    </div>
    <div class="vertical_bar"></div>
    <div class="description_offre">
    <div class="intitule_offre">
    <span class="nom_offre">{$offer->getName()}</span> <span class="temps_offre">({$offer->getLenght()})   -   Date : {$offer->getDate()}</span><br></div>
    <div class="secteur_description"><span class="description_titre">Description : </span> <div class="description">{$offer->getDescription()}</div></div>
    
    <div class="salaires">
    Salaire : {$offer->getRemuneration()} |  Nombre de places : {$offer->getNumberOfPlaces()} ({$offer->getNumberOfPlacesTaken()} prise)<br>
    </div>

    </div>
    <br>
    
  
</div>

{/foreach}
</div>