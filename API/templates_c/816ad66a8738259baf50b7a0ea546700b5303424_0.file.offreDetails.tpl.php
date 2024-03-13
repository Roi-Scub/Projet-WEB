<?php
/* Smarty version 4.4.1, created on 2024-03-12 15:46:30
  from 'C:\xampp\apache\project\cesi\Projet WEB\API\Composants\offreDetails.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f06ac6c47722_05041552',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '816ad66a8738259baf50b7a0ea546700b5303424' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\API\\Composants\\offreDetails.tpl',
      1 => 1710254330,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f06ac6c47722_05041552 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['offres']->value, 'offre');
$_smarty_tpl->tpl_vars['offre']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['offre']->value) {
$_smarty_tpl->tpl_vars['offre']->do_else = false;
?>

    <div class="offre">
        <div class="Enteprise">
        <img class="logo_entreprise" src="<?php echo $_smarty_tpl->tpl_vars['offre']->value['photo_entreprise'];?>
" alt="Logo de l'entreprise">
        <span class="nom_entreprise"><?php echo $_smarty_tpl->tpl_vars['offre']->value['Entreprise'];?>
</span>
        </div>
        <div class="vertical_bar"></div>
        <div class="description_offre">
        <div class="intitule_offre">
        <span class="nom_offre"><?php echo $_smarty_tpl->tpl_vars['offre']->value['nom_de_l_offre'];?>
</span> <span class="temps_offre">(<?php echo $_smarty_tpl->tpl_vars['offre']->value['duree_de_l_offre'];?>
)   -   Date : <?php echo $_smarty_tpl->tpl_vars['offre']->value['date_de_l_offre'];?>
</span><br></div>
        <div class="secteur_description"><span class="description_titre">Description : </span> <div class="description"><?php echo $_smarty_tpl->tpl_vars['offre']->value['description_de_l_offre'];?>
</div></div>

        </div>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
