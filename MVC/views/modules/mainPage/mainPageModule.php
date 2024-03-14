<?php

$moduleName = "mainPage";
$this->_smarty->appendStyle('global/styles/mainPage.css');

// --- Récupération des données pour le module ---
require_once('view/components/mainPage/mainPage.php');
require_once('view/modules/header/headerModule.php');
require_once('view/modules/footer/footerModule.php');

// --- assignation des variables pour le rendu final ---
$this->smarty->assign('componentMainPage', $mainPageRender);


$mainRender = $this->_smarty->fetch('modules/mainPage/template.tpl');
$headerRender = $headerRenderGlobal;
$footerRender = $footerRenderGlobal;
?>