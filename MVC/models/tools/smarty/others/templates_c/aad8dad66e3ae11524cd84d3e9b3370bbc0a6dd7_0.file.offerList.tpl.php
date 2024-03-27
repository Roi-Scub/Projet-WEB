<?php
/* Smarty version 4.4.1, created on 2024-03-27 10:14:43
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerList.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_6603e383493167_59974718',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'aad8dad66e3ae11524cd84d3e9b3370bbc0a6dd7' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerList.tpl',
      1 => 1711530882,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6603e383493167_59974718 (Smarty_Internal_Template $_smarty_tpl) {
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
    <img class="logo_entreprise" src="{}" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Logo de l'entreprise">
    <span class="nom_entreprise"></span>
    </div>
    <div class="vertical_bar"></div>
    <div class="description_offre">
    <div class="intitule_offre">
    <span class="nom_offre"><?php echo $_smarty_tpl->tpl_vars['offer']->value->getName();?>
</span> <span class="temps_offre">(<?php echo $_smarty_tpl->tpl_vars['offer']->value->getLenght();?>
)   -   Date : <?php echo $_smarty_tpl->tpl_vars['offer']->value->getDate();?>
</span><br></div>
    <div class="secteur_description"><span class="description_titre">Description : </span> <div class="description"><?php echo $_smarty_tpl->tpl_vars['offer']->value->getDescription();?>
</div></div>
    
    <div class="salaires">
    Salaire : <?php echo $_smarty_tpl->tpl_vars['offer']->value->getRemuneration();?>
 |  Nombre de places : <?php echo $_smarty_tpl->tpl_vars['offer']->value->getNumberOfPlaces();?>
 (<?php echo $_smarty_tpl->tpl_vars['offer']->value->getNumberOfPlacesTaken();?>
 prise)<br>
    </div>

    </div>
    <br>
    
  
</div>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div><?php }
}
