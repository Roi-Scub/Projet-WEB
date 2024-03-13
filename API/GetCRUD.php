<?php

$smarty = new Smarty();

require('database.php');





if (isset($_GET['action'])) {

    $action = $_GET['action'];

    if $action = 'createOffer' 
    {
        $value = "1"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');
        
    } else if $action = 'readOffer' 
    {
        $value = "2"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');

    } else if $action = 'updateOffer' 
    {
        $value = "3"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');
        
    } else if $action = 'deleteOffer' 
    {
        $value = "4"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');

    } else if $action = 'createUser' 
    {
        $value = "5"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');

    } else if $action = 'readUser' 
    {
        $value = "6"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');

    } else if $action = 'updateUser' 
    {
        $value = "7"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');

    } else if $action = 'deleteUser' 
    {
        $value = "8"
        $smarty->assign('value', $value);
        $smarty->display('Composants/CRUD.tpl');

    } else {
        echo "Erreur : " . $conn->error;
    }
    // Utilisez la valeur de $action pour déterminer quelle opération CRUD effectuer
    // (par exemple, exécutez une requête SQL pour créer, lire, mettre à jour ou supprimer des données).
}