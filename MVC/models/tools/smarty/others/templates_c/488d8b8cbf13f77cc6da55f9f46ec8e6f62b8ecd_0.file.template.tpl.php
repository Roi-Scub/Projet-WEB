<?php
/* Smarty version 4.4.1, created on 2024-04-01 21:53:17
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\modules\header\template.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660b10ad0580b7_84131176',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '488d8b8cbf13f77cc6da55f9f46ec8e6f62b8ecd' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\modules\\header\\template.tpl',
      1 => 1712001156,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660b10ad0580b7_84131176 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div id="header_principal">

    <a href="index"><img src="../../../global/images/logo_petit.png" alt="Petit logo" id="logo_petit"></a>

        <div id="stroke">
            <nav>
                <ul>

                    <li class="list-item-container"><a href="offers">Offres</a></li>
                    <li class="list-item-container"><a href="businesses">Entreprises</a></li>
                    <li class="list-item-container"><a href="index#FAQ">FAQ</a></li>

                </ul>
            </nav>
        </div>

            <div id="myaccount">

                <div id="divaa1">

                    <input id="btna1" type="button" value="Thème">
                    <input id="btna2" type="button" value="Compte" onclick="window.location.href='profile'">
                    <input id="btna3" type="button" value="Plus" onclick="window.location.href='legalTerms'">
                    <img id="parametre" src="../../../global/images/parametre.png">

                </div>

                    <!--<button onclick="window.location.href='disconnection'"  id="button_2">Deconnexion</button>-->
                    
                    <button class="Btn" onclick="window.location.href='disconnection'">
  
                        <div class="sign">
                            <svg viewBox="0 0 512 512">
                                <path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path>
                            </svg>
                        </div>

                        <div class="text">Logout</div>
                        
                    </button>


            </div>

</div>

<hr id="barre"><?php }
}
