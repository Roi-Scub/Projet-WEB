<?php
/* Smarty version 4.4.1, created on 2024-03-07 11:15:28
  from 'C:\xampp\apache\project\cesi\Projet WEB\API\Composants\offre.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65e993c0e39756_19055356',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '85c7a81bb2c1ffd96e81f9dae86a9191d279a27c' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\API\\Composants\\offre.tpl',
      1 => 1709805972,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65e993c0e39756_19055356 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
    <title>Offre d'emploi</title>
</head>
<body>
    <h1><?php echo $_smarty_tpl->tpl_vars['nom_de_l_offre']->value;?>
</h1>
    <p>Durée : <?php echo $_smarty_tpl->tpl_vars['duree_de_l_offre']->value;?>
</p>
    <p>Date de publication : <?php echo $_smarty_tpl->tpl_vars['date_de_l_offre']->value;?>
</p>
</body>
</html><?php }
}
