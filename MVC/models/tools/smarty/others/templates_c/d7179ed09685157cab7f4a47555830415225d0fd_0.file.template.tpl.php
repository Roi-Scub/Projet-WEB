<?php
/* Smarty version 4.4.1, created on 2024-03-16 17:26:06
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\modules\offers\template.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f5c81e9a7221_38447795',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd7179ed09685157cab7f4a47555830415225d0fd' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\modules\\offers\\template.tpl',
      1 => 1710606364,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f5c81e9a7221_38447795 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="flex_collumn">

    <div class="flex">
        <!--<?php echo $_smarty_tpl->tpl_vars['offerFilter']->value;?>
-->
        <?php echo $_smarty_tpl->tpl_vars['componentOfferList']->value;?>

        
    <div>

    <?php echo $_smarty_tpl->tpl_vars['componentOfferPagination']->value;?>


</div>

<?php }
}
