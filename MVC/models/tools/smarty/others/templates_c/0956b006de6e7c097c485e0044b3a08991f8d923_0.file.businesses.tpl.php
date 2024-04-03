<?php
/* Smarty version 4.4.1, created on 2024-04-03 19:16:19
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\businesses\businesses.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660d8ee3d4a395_06348395',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0956b006de6e7c097c485e0044b3a08991f8d923' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\businesses\\businesses.tpl',
      1 => 1712164575,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660d8ee3d4a395_06348395 (Smarty_Internal_Template $_smarty_tpl) {
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
<button class="button" onclick="window.location.href='businessesView?id=<?php echo $_smarty_tpl->tpl_vars['b']->value->getId();?>
'">
              Voir Plus
            </button>
        </div>
        <br>

          

    </div>

    
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>  <?php }
}
