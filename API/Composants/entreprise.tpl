<!DOCTYPE html>
<html>
<head>
    <title>Liste des offres d'emploi</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">

</head>
<body>
   
    <div>
        {foreach $offres as $offre}

        <div class="offre">
            <div class="Enteprise">
            <img class="logo_entreprise" src="{placeholder}" alt="Logo de l'entreprise">
            <span class="nom_entreprise">{placeholder}</span>
            </div>
            <div class="vertical_bar"></div>
            <div class="description_offre">
            <div class="intitule_offre">
            <span class="nom_offre">{placeholder}</span> <span class="temps_offre">(placeholder)   -   Date : {placeholder}</span><br></div>
            <div class="secteur_description"><span class="description_titre">Description : </span> <div class="description">{placeholder}</div></div>
            
            <div class="salaires">
            Salaire : {placeholder} |  Nombre de places : {placeholder} ({placeholder} prises)<br>
            </div>

            </div>
            <br>
            
        </div>

        {/foreach}
    </div>
</body>