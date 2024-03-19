<?php
/* Smarty version 4.4.1, created on 2024-03-18 13:29:48
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\template.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f833bccb1281_99710604',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7d5468c65554460480c39a39f77d16091afcc1a8' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\template.tpl',
      1 => 1710757461,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f833bccb1281_99710604 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>

<head>


    <!-- Local Configuration -->
    
    <title>Stage's cove<?php if ($_smarty_tpl->tpl_vars['title']->value != '') {?> - <?php echo $_smarty_tpl->tpl_vars['title']->value;
}?></title>

    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['styles']->value, 'style');
$_smarty_tpl->tpl_vars['style']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['style']->value) {
$_smarty_tpl->tpl_vars['style']->do_else = false;
?>
        <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
">
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    <meta charset="UTF-8">
    



</head>

<body>

    <header>
        <?php if ($_smarty_tpl->tpl_vars['headerRender']->value != NULL) {
echo $_smarty_tpl->tpl_vars['headerRender']->value;
}?>
    </header>

    <main>
        <?php if ($_smarty_tpl->tpl_vars['mainRender']->value != NULL) {
echo $_smarty_tpl->tpl_vars['mainRender']->value;
}?>
    </main>

    <footer>
        <?php if ($_smarty_tpl->tpl_vars['footerRender']->value != NULL) {
echo $_smarty_tpl->tpl_vars['footerRender']->value;
}?>
    </footer>

</body>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['scripts']->value, 'script');
$_smarty_tpl->tpl_vars['script']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['script']->value) {
$_smarty_tpl->tpl_vars['script']->do_else = false;
?>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['script']->value;?>
"><?php echo '</script'; ?>
>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

</html><?php }
}
