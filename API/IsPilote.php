<?php

$query = "SELECT * FROM pilote WHERE ID_utilisateur = $profileId";

$result = mysqli_query($conn, $query);
function debug_to_console($data) {
    $output = $data;
    if (is_array($output))
        $output = implode(',', $output);

    echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
}

if ($result) {
    
    if (mysqli_num_rows($result) > 0) {
        $value = 'true';
        debug_to_console("pilote");
        debug_to_console($value);
    } else {
        $value = 'false';
        debug_to_console("non pilote");
    }
} else {
    
    echo "Erreur lors de la récupération des droits d'accès.";
}

?>
