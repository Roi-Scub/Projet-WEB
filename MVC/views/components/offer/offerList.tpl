<!---->
<div>

{foreach $offers as $offer}
    <label class="container">
    <input type="checkbox">
    <svg id="Layer_1" version="1.0" viewBox="0 0 24 24" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M16.4,4C14.6,4,13,4.9,12,6.3C11,4.9,9.4,4,7.6,4C4.5,4,2,6.5,2,9.6C2,14,12,22,12,22s10-8,10-12.4C22,6.5,19.5,4,16.4,4z"></path></svg>
    </label>

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