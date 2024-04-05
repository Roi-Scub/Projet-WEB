<?php

// --- Module Configuration ---

$moduleName = "login";

$this->appendStyle('auth.css');
// Warning: Undefined property: Smarty_Internal_Undefined::$objMap in C:\xampp\apache\project\cesi\Projet WEB\MVC\models\tools\smarty\libs\sysplugins\smarty_internal_extension_handler.php on line 132

$this->_title = "Connexion";

// --- Module Rendering ---
require_once('views/components/loginComponent/login.php');
$this->_smarty->assign('authRender', $loginRender);

//$this->_smarty->assign('error', $error);
$mainRender = $this->_smarty->fetch('views/modules/' . $moduleName . '/template.tpl');

?>