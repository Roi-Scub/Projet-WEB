<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire Offre d'Emploi</title>
</head>
<body>

 
    <h1>Formulaire Offre d'Emploi</h1>
    <form action="/votre_page_de_traitement.php" method="post">
        <label for="nom_offre">Nom de l'offre :</label>
        <input type="text" id="nom_offre" name="nom_offre" required><br>
            
        <label for="description">Description :</label>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>

        <label for="date_offre">Date de l'offre :</label>
        <input type="date" id="date_offre" name="date_offre" required><br>

        <label for="duree_offre">Durée de l'offre :</label>
        <input type="text" id="duree_offre" name="duree_offre" required><br>

        <label for="salaire">Salaire :</label>
        <input type="number" id="salaire" name="salaire" min="0" required><br>

        <label for="nombre_places">Nombre de places :</label>
        <input type="number" id="nombre_places" name="nombre_places" min="1" required><br>

        <label for="places_prises">Nombre de places prises :</label>
        <input type="number" id="places_prises" name="places_prises" min="0" required><br>

        <input type="submit" value="Envoyer">
    </form>
</body>
</html>