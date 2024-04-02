
    <body>
        <main>
            <button onclick="CreerFormulaire()">Créer</button>
            <button onclick="ModifierFormulaire()">Modifier</button>
            <h1>Formulaire Offre</h1>
            <section id="form">
                <form id="creerForm" class="active">
                    <label for="offer_Name">Nom de l'offre :</label>
                    <input type="text" id="offer_Name" name="offer_Name" required><br><br>

                    <label for="offer_description">Description de l'offre</label>
                    <input type="text" id="offer_description" name="offer_description"  required></textarea><br><br>

                    <label for="offer_date">Date de l'offre :</label>
                    <input type="date" id="offer_date" name="offer_date"  required></textarea><br><br>

                    <label for="offer_start_date">Date de début de l'offre :</label>
                    <input type="date" id="offer_start_date" name="offer_start_date" required><br><br>

                    <label for="offer_lenght">Durée du stage :</label>
                    <input type="number" id="offer_lenght" name="offer_lenght" required><br><br>

                    <label for="offer_places_taken">Nombre de place pris :</label>
                    <input type="number" id="offer_places_taken" name="offer_places_taken" required><br><br>

                    <label for="offer_number_of_places_left">Nombre de places disponible :</label>
                    <input type="number" id="offer_number_of_places_left" name="offer_number_of_places_left" required><br><br>

                    <label for="Business">Entreprise :</label>
                    <input type="text" id="Business" name="Business" required><br><br>

                    <input type="submit" value="Envoyer">
                </form>
                <form id="modifierForm" >
                    <label for="offer_Name">Nouveau nom de l'offre :</label>
                    <input type="text" id="offer_Name" name="offer_Name" required><br><br>

                    <label for="offer_description">Nouvelle description de l'offre</label>
                    <input type="text" id="offer_description" name="offer_description"  required></textarea><br><br>

                    <label for="offer_date">Nouvelle date de l'offre :</label>
                    <input type="date" id="offer_date" name="offer_date"  required></textarea><br><br>

                    <label for="offer_start_date">Nouvelle date de début de l'offre :</label>
                    <input type="date" id="date_debut_offre" name="date_debut_offre" required><br><br>

                    <label for="offer_lenght">Nouvelle durée du stage :</label>
                    <input type="number" id="offer_lenght" name="offer_lenght" required><br><br>

                    <label for="offer_places_taken">Nombre de place pris :</label>
                    <input type="number" id="offer_places_taken" name="offer_places_taken" required><br><br>

                    <label for="offer_number_of_places_left">Nombre de places disponible :</label>
                    <input type="number" id="offer_number_of_places_left" name="offer_number_of_places_left" required><br><br>

                    <label for="Business">Nouvelle Entreprise :</label>
                    <input type="text" id="Business" name="Business" required><br><br>

                    <input type="submit" value="Envoyer">
            </section>
        </main>
    </body>
   
