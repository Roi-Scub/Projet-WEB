<?php
/* Smarty version 4.4.1, created on 2024-03-16 10:52:34
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerPagination.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f56be2446f91_24445238',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4d77cc0f91d1f3789a7772fe279b12799e367577' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerPagination.tpl',
      1 => 1710407896,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f56be2446f91_24445238 (Smarty_Internal_Template $_smarty_tpl) {
?><div>
'<a href="?page=' . ($page - 1) . '">Page précédente</a>';
'<a href="?page=' . ($page + 1) . '">Page suivante</a>';
</div><?php }
}
