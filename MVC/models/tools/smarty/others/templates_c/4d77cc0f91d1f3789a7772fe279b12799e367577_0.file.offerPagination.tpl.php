<?php
/* Smarty version 4.4.1, created on 2024-03-28 14:21:38
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerPagination.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_66056ee2511106_88948868',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4d77cc0f91d1f3789a7772fe279b12799e367577' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerPagination.tpl',
      1 => 1711631927,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_66056ee2511106_88948868 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="pagination">
    <?php $_smarty_tpl->_assignInScope('dotsDisplayed', false);?>

    <?php if ($_smarty_tpl->tpl_vars['currentPage']->value != 1) {?>
        <a href="?page=<?php echo $_smarty_tpl->tpl_vars['currentPage']->value-1;?>
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
                <a href="?page=<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="font-weight: bold; color: burlywood;"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</a>
            <?php } else { ?>
                <a href="?page=<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="font-weight: normal; color: white;"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</a>
            <?php }?>

        <?php } elseif ($_smarty_tpl->tpl_vars['i']->value <= 3 || $_smarty_tpl->tpl_vars['i']->value > $_smarty_tpl->tpl_vars['max']->value-4) {?> 
            <a href="?page=<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
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
        <a href="?page=<?php echo $_smarty_tpl->tpl_vars['currentPage']->value+1;?>
">Page suivante</a>
    <?php }?>



</div><?php }
}
