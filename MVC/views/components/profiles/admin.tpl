<div class="body">

    <h1> ADMIN </h1>


    <br>

    <div class="flex">
    <!-- There will be a little box with the name of all pilotes and with button to click and see the profile, a button to delete the pilote, and one to add a pilote-->


    <div class="pilotes">
        <h2> Pilotes </h2>
        <br>
        <div class="pilotes-list">
            <?php
            $pilotes = $db->query('SELECT * FROM pilotes');
            while ($pilote = $pilotes->fetch()) {
                echo '<div class="pilote">';
                echo '<p>' . $pilote['name'] . '</p>';
                echo '<a href="pilote.php?id=' . $pilote['id'] . '">Voir le profil</a>';
                echo '<a href="delete_pilote.php?id=' . $pilote['id'] . '">Supprimer</a>';
                echo '</div>';
            }
            ?>
        </div>
        <br>
        <a href="add_pilote.php">Ajouter un pilote</a>