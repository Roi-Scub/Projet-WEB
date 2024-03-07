<?php 
    header('Content-Type: application/json');

    $method = $_SERVER['REQUEST_METHOD'];
    
    switch ($method) {
        case 'GET':

            if(isset($_GET['secret']) and $_GET['secret'] == 'e7pfnpkooZ'){
                $phpContent = file_get_contents('PROJET WEB/API/database.php');
                echo ($phpContent);
            }

            else{
                echo ('{"error": "Secret error"}');
            }

            break;

        default:
            echo ('{"error": "Secret error"}');
            break;
    }
?>