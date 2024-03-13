<?php

// Initialiser la session

if (!isset($_SESSION["ID_utilisateur"])) {
    header("Location: page_authentification.php");
    exit();
}


$profileId = $_SESSION['ID_utilisateur'];



?>