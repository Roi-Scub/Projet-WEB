<?php

$moduleName = "index";
$this->appendStyle('mainPage.css');

//this->_title = "Accueil";



// --- Récupération des données pour le module ---

require_once('views/components/indexComponent/index.php');
require_once('views/modules/header/headerModule.php');
require_once('views/modules/footer/footerModule.php');

 //--- assignation des variables pour le rendu final ---

$this->_smarty->assign('componentMainPage', $mainPageRender);

//Warning: Undefined property: Smarty_Internal_Undefined::$objMap in C:\xampp\apache\project\cesi\Projet WEB\MVC\models\tools\smarty\libs\sysplugins\smarty_internal_extension_handler.php on line 132

$this->_smarty->assign('profileId', $_SESSION['profileId']);
$this->_smarty->assign('profileType', $_SESSION['profileType']->value);
//var_dump("la");

$mainRender = $this->_smarty->fetch('views/modules/' . $moduleName . '/template.tpl');
$headerRender = $headerRenderGlobal;
$footerRender = $footerRenderGlobal;
//$mainRender = "hello";

?>