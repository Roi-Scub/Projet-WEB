<?php
/* Smarty version 4.4.1, created on 2024-03-19 09:17:41
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerPagination.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f94a2514de60_59215897',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4d77cc0f91d1f3789a7772fe279b12799e367577' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerPagination.tpl',
      1 => 1710836258,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f94a2514de60_59215897 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="pagination">
<a href="?page=' . ($page - 1) . '" class ="pagination_button">Page précédente</a>//print smarty page -1
<a href="?page=' . ($page + 1) . '" class ="pagination_button">Page suivante</a>
</div> <?php }
}
