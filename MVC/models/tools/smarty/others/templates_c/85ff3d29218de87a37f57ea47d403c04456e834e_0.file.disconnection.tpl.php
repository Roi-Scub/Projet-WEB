<?php
/* Smarty version 4.4.1, created on 2024-03-16 10:14:08
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\modules\disconnection\disconnection.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f562e035ffe4_04940722',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '85ff3d29218de87a37f57ea47d403c04456e834e' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\modules\\disconnection\\disconnection.tpl',
      1 => 1710580443,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f562e035ffe4_04940722 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 >

    
    disconnectionFunction();

<?php echo '</script'; ?>
>

<div class="spinner"></div>

    <video autoplay muted loop id="boat_anim">
    <source src="../../../global/videos/boat-loading.mp4" type="video/mp4">
    </video>

    <h1 style="color: #29323D; position: absolute; top: 65%; left: 28.5%; z-index: 2;font-weight: bolder;font-size:4vw;">La traversée est en cours...</h1>

</div>
<?php }
}
