<?php
/* Smarty version 4.4.1, created on 2024-03-17 14:09:35
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerList.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f6eb8fc04e14_79786608',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'aad8dad66e3ae11524cd84d3e9b3370bbc0a6dd7' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerList.tpl',
      1 => 1710672102,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f6eb8fc04e14_79786608 (Smarty_Internal_Template $_smarty_tpl) {
?><!---->
<div>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['offers']->value, 'offer');
$_smarty_tpl->tpl_vars['offer']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['offer']->value) {
$_smarty_tpl->tpl_vars['offer']->do_else = false;
?>
   

<div class="offre">
    <div class="Enteprise">
    <img class="logo_entreprise" src="" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Logo de l'entreprise">
    <span class="nom_entreprise"></span>
    </div>
    <div class="vertical_bar"></div>
    <div class="description_offre">
    <div class="intitule_offre">
    <span class="nom_offre"><?php echo $_smarty_tpl->tpl_vars['offer']->value['name'];?>
</span> <span class="temps_offre">(<?php echo $_smarty_tpl->tpl_vars['offer']->value['lenght'];?>
)   -   Date : <?php echo $_smarty_tpl->tpl_vars['offer']->value['date'];?>
</span><br></div>
    <div class="secteur_description"><span class="description_titre">Description : </span> <div class="description"><?php echo $_smarty_tpl->tpl_vars['offer']->value['desc'];?>
</div></div>
    
    <div class="salaires">
    Salaire : <?php echo $_smarty_tpl->tpl_vars['offer']->value['remuneration'];?>
 |  Nombre de places : <?php echo $_smarty_tpl->tpl_vars['offer']->value['numberOfPlaces'];?>
 ( <?php echo $_smarty_tpl->tpl_vars['offer']->value['numberOfPlacesTaken'];?>
prises)<br>
    </div>

    </div>
    <br>
    
  
</div>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div><?php }
}
