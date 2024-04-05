<?php
/* Smarty version 4.4.1, created on 2024-04-05 09:45:34
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerList.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660fac1e146373_99685269',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'aad8dad66e3ae11524cd84d3e9b3370bbc0a6dd7' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerList.tpl',
      1 => 1712303129,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660fac1e146373_99685269 (Smarty_Internal_Template $_smarty_tpl) {
?><!---->
<div>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['offers']->value, 'offer');
$_smarty_tpl->tpl_vars['offer']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['offer']->value) {
$_smarty_tpl->tpl_vars['offer']->do_else = false;
?>
    <label class="container">
    <input type="checkbox" id ="wishlistHeart">
    <svg id="Layer_1" version="1.0" viewBox="0 0 24 24" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M16.4,4C14.6,4,13,4.9,12,6.3C11,4.9,9.4,4,7.6,4C4.5,4,2,6.5,2,9.6C2,14,12,22,12,22s10-8,10-12.4C22,6.5,19.5,4,16.4,4z"></path></svg>
    </label>

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
<?php echo '<script'; ?>
 src="../../../global/javascript/wishlist.php"><?php echo '</script'; ?>
>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div><?php }
}
