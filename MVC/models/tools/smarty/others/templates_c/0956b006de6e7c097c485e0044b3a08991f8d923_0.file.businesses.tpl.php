<?php
/* Smarty version 4.4.1, created on 2024-04-03 22:12:49
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\businesses\businesses.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660db841116a57_64019445',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0956b006de6e7c097c485e0044b3a08991f8d923' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\businesses\\businesses.tpl',
      1 => 1712175168,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660db841116a57_64019445 (Smarty_Internal_Template $_smarty_tpl) {
?><div>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['business']->value, 'b');
$_smarty_tpl->tpl_vars['b']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['b']->value) {
$_smarty_tpl->tpl_vars['b']->do_else = false;
?>

    <div class="offre">
        <div class="Enteprise"> 
            <img class="banniere_entreprise" src="<?php echo $_smarty_tpl->tpl_vars['b']->value->getBanner();?>
" onerror="this.src='../../../global/images/banner_placeholder.jpg'" alt="Bannière de l'entreprise">
            <div class="entreprise_flex"> 

                <img class="logo_entreprise" src="<?php echo $_smarty_tpl->tpl_vars['b']->value->getBusinessProfilePicture();?>
" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Logo de l'entreprise">

                <div class="nom_entreprise_">   
    
                
                    <span class="nom_entreprise"><?php echo $_smarty_tpl->tpl_vars['b']->value->getName();?>
</span><br><br>
                    <span class="temps_offre"><?php echo $_smarty_tpl->tpl_vars['b']->value->getSector();?>
</span>

                </div>
                 
                <div class="vertical_bar"></div>

                <div class="nombre_offre">Nombre d'offre de l'entreprise : </div>

                <div class="vertical_bar"></div>
            </div>
        </div>

       
        <div class="description_offre">
        <div class="intitule_offre">
        <span class="description_titre">Description : </span> <br><div class="description"><?php echo $_smarty_tpl->tpl_vars['b']->value->getDescription();?>
</div></div>
        <div class="secteur_description"> </div>
        
        <div class="Nombre d'offre">
       
        </div>
            <button class="button" onclick="window.location.href='businessesView&id=<?php echo $_smarty_tpl->tpl_vars['b']->value->getId();?>
'">
                  Voir Plus
            </button>
        </div>
        <br>

          

    </div>

    
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>  

<div class="pagination">

    <?php $_smarty_tpl->_assignInScope('dotsDisplayed', false);?>

    <?php if ($_smarty_tpl->tpl_vars['currentPage']->value != 1) {?>
        <a href="offers&page=<?php echo $_smarty_tpl->tpl_vars['currentPage']->value-1;?>
">Page précédente</a>
    <?php }?>


    <?php
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable(null, $_smarty_tpl->isRenderingCache);
$_smarty_tpl->tpl_vars['i']->value = 1;
if ($_smarty_tpl->tpl_vars['i']->value < $_smarty_tpl->tpl_vars['max']->value) {
for ($_foo=true;$_smarty_tpl->tpl_vars['i']->value < $_smarty_tpl->tpl_vars['max']->value; $_smarty_tpl->tpl_vars['i']->value++) {
?>
        <?php if ($_smarty_tpl->tpl_vars['i']->value == $_smarty_tpl->tpl_vars['currentPage']->value) {?>

            <?php if ($_smarty_tpl->tpl_vars['i']->value == $_smarty_tpl->tpl_vars['currentPage']->value) {?>
                <a href="offers&page=<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="font-weight: bold; color: burlywood;"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</a>
            <?php } else { ?>
                <a href="offers&page=<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="font-weight: normal; color: white;"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</a>
            <?php }?>

        <?php } elseif ($_smarty_tpl->tpl_vars['i']->value <= 3 || $_smarty_tpl->tpl_vars['i']->value > $_smarty_tpl->tpl_vars['max']->value-4) {?> 
            <a href="offers&page=<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</a> 
        <?php } elseif (!$_smarty_tpl->tpl_vars['dotsDisplayed']->value) {?> 
            <span>...</span>
            <?php $_smarty_tpl->_assignInScope('dotsDisplayed', true);?>
        <?php }?>

    <?php }
}
?>

    <?php if ($_smarty_tpl->tpl_vars['currentPage']->value < $_smarty_tpl->tpl_vars['max']->value-1) {?>
        <a href="offers&page=<?php echo $_smarty_tpl->tpl_vars['currentPage']->value+1;?>
">Page suivante</a>
    <?php }?>



</div><?php }
}
