<?php
/* Smarty version 4.4.1, created on 2024-03-15 22:50:05
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\header\header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f4c28df17064_51493487',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3082b30b30544140cb038f577531c8cccd867366' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\header\\header.tpl',
      1 => 1710538499,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f4c28df17064_51493487 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div id="header_principal">

    <img src="photos/logo_petit.png" alt="Petit logo" id="logo_petit">

        <div id="stroke">
            <nav>
                <ul>

                    <li class="list-item-container"><a href="www.stages-cove.fr/offers">Offres</a></li>
                    <li class="list-item-container"><a href="www.stages-cove.fr/businesses">Entreprises</a></li>
                    <li class="list-item-container"><a href="www.stages-cove.fr#FAQ">FAQ</a></li>

                </ul>
            </nav>
        </div>

            <div id="myaccount">

                <div id="divaa1">

                    <input id="btna1" type="button" value="Thème">
                    <input id="btna2" type="button" value="Compte" onclick="window.location.href='page_profil.php';">
                    <input id="btna3" type="button" value="Plus">
                    <img id="parametre" src="photos/parametre.png">

                </div>

                    <button onclick="window.location.href='www.stages-cove.fr/disconnection'"  id="button_2">Deconnexion</button>

            </div>

</div><?php }
}
