<?php
/* Smarty version 4.4.1, created on 2024-04-02 22:08:34
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\profiles\pilote.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660c65c2d8ec73_01621875',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '99377ba9f42e29149ed115731ba2cfe56496bca9' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\profiles\\pilote.tpl',
      1 => 1712088493,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660c65c2d8ec73_01621875 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="body">
 <div>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['profile']->value, 'pi');
$_smarty_tpl->tpl_vars['pi']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['pi']->value) {
$_smarty_tpl->tpl_vars['pi']->do_else = false;
?>

    <h1 class="bonjour"> Bonjour <?php echo $_smarty_tpl->tpl_vars['pi']->value->getFirstName();?>
 <?php echo $_smarty_tpl->tpl_vars['pi']->value->getLastName();?>
 </h1>

    <img class="banner" src="<?php echo $_smarty_tpl->tpl_vars['pi']->value->getBannerLink();?>
" onerror="this.src='../../../global/images/banner_placeholder.jpg'" alt="Banniere de profil">

        <div class="photo_profil_&_banner">

            <img class="photo_profil" src="<?php echo $_smarty_tpl->tpl_vars['pi']->value->getPictureLink();?>
" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Photo de profil">
    
        </div>
        
          <div style="display:flex">

            <div class="informations_personnelles">

                <h2> Vos informations personnelles </h2>
                <p class="box"> Nom : <?php echo $_smarty_tpl->tpl_vars['pi']->value->getLastName();?>
 </p>
                <p class="box"> Prénom : <?php echo $_smarty_tpl->tpl_vars['pi']->value->getFirstName();?>
 </p>
                <p class="box"> Date de naissance : <?php echo $_smarty_tpl->tpl_vars['pi']->value->getBirthday();?>
 </p>

            </div>

            <div class="boutons">
              <div style="display: flex; flex-direction:column;justify-content:center; align-items: right;">
              <a onclick="window.location.href='offersCRUD'" name ="action"  class="buttons">Crée un utilisateur</a>
              <a href="" name ="action"  class="buttons">Modifier un utilisateur</a>
              <a href="" name ="action"  class="buttons">Supprimer un utilisateur</a>
              <a href="" name ="action" class="buttons">Voir un utilisateur</a>
              </div>
              <div style="display: flex; flex-direction:column; justify-content:center; align-items:center">
              <a href="" name ="action"  class="buttons">Crée une offre</a>
              <a href="" name ="action"  class="buttons">Modifier une offre</a>
              <a href="" name ="action"  class="buttons">Supprimer une offre</a>
              <a href="" name ="action" class="buttons">Voir une offre</a>
              </div>
            </div>
          </div>
    <br>

        <h2 > Tableau de bord </h2>


<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?></div>

<div class="flex">

<div class="container">

<h3>Utilisateurs</h3>
<ul class="liste">
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['studentInfo']->value, 'user');
$_smarty_tpl->tpl_vars['user']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['user']->value) {
$_smarty_tpl->tpl_vars['user']->do_else = false;
?>

<hr><div class="line"><?php echo $_smarty_tpl->tpl_vars['user']->value->getFirstName();?>
 <?php echo $_smarty_tpl->tpl_vars['user']->value->getLastName();?>
 - <?php echo $_smarty_tpl->tpl_vars['user']->value->getBirthday();?>
<a href="profile?id=<?php echo $_smarty_tpl->tpl_vars['user']->value->getId();?>
" class="btns">Voir le profil </a><br></div>  <hr>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>


<div class="pagination">
Pages:
<!--<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, range(1,$_smarty_tpl->tpl_vars['totalPagesUsers']->value), 'userPageNum');
$_smarty_tpl->tpl_vars['userPageNum']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['userPageNum']->value) {
$_smarty_tpl->tpl_vars['userPageNum']->do_else = false;
?>
<a href="?userPage=<?php echo $_smarty_tpl->tpl_vars['userPageNum']->value;?>
&offerPage=<?php echo $_smarty_tpl->tpl_vars['currentPageUsers']->value;?>
" class="page_number"><?php echo $_smarty_tpl->tpl_vars['userPageNum']->value;?>
</a><br> 

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>-->
</div>
</div>


<div class="container">
<h3>Offres</h3>
<ul class="liste">

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['offers']->value, 'offer');
$_smarty_tpl->tpl_vars['offer']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['offer']->value) {
$_smarty_tpl->tpl_vars['offer']->do_else = false;
?>
  <hr><div class="line"><?php echo $_smarty_tpl->tpl_vars['offer']->value->getName();?>
 -<a href="profile?id=<?php echo $_smarty_tpl->tpl_vars['user']->value->getId();?>
" class="btns">Voir le profil </a> <br></div><hr>
  <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>


<div class="pagination">
Pages:
<!--<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, range(1,$_smarty_tpl->tpl_vars['totalPagesOffers']->value), 'offerPageNum');
$_smarty_tpl->tpl_vars['offerPageNum']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['offerPageNum']->value) {
$_smarty_tpl->tpl_vars['offerPageNum']->do_else = false;
?>
<a href="?offerPage=<?php echo $_smarty_tpl->tpl_vars['offerPageNum']->value;?>
&userPage=<?php echo $_smarty_tpl->tpl_vars['currentPageUsers']->value;?>
" class="page_number"><?php echo $_smarty_tpl->tpl_vars['offerPageNum']->value;?>
</a>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>-->
</div>
</div>

<?php }
}
