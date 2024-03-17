<?php
/* Smarty version 4.4.1, created on 2024-03-16 19:39:49
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\modules\header\template.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f5e775b44f54_54466502',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '488d8b8cbf13f77cc6da55f9f46ec8e6f62b8ecd' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\modules\\header\\template.tpl',
      1 => 1710614387,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f5e775b44f54_54466502 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div id="header_principal">

    <a href="index"><img src="../../../global/images/logo_petit.png" alt="Petit logo" id="logo_petit"></a>

        <div id="stroke">
            <nav>
                <ul>

                    <li class="list-item-container"><a href="offers">Offres</a></li>
                    <li class="list-item-container"><a href="businesses">Entreprises</a></li>
                    <li class="list-item-container"><a href="#FAQ">FAQ</a></li>

                </ul>
            </nav>
        </div>

            <div id="myaccount">

                <div id="divaa1">

                    <input id="btna1" type="button" value="Thème">
                    <input id="btna2" type="button" value="Compte" onclick="window.location.href='page_profil.php';">
                    <input id="btna3" type="button" value="Plus">
                    <img id="parametre" src="../../../global/images/parametre.png">

                </div>

                    <button onclick="window.location.href='disconnection'"  id="button_2">Deconnexion</button>

            </div>

</div><?php }
}
