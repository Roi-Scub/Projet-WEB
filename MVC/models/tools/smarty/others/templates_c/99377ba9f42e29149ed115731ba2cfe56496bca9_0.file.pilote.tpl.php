<?php
/* Smarty version 4.4.1, created on 2024-03-17 20:41:20
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\profiles\pilote.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f747608756e3_27799179',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '99377ba9f42e29149ed115731ba2cfe56496bca9' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\profiles\\pilote.tpl',
      1 => 1710696113,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f747608756e3_27799179 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="body">

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['piloteinfo']->value, 'p');
$_smarty_tpl->tpl_vars['p']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
$_smarty_tpl->tpl_vars['p']->do_else = false;
?>

    
    <h1 class="bonjour"> Bonjour <?php echo $_smarty_tpl->tpl_vars['p']->value['Prenom'];?>
 <?php echo $_smarty_tpl->tpl_vars['p']->value['Nom'];?>
 </h1>

    <img class="banner" src="<?php echo $_smarty_tpl->tpl_vars['p']->value['banniere'];?>
" onerror="this.src='../photos/banner_placeholder.jpg'" alt="Banniere de profil">

        <div class="photo_profil_&_banner">

            <img class="photo_profil" src="<?php echo $_smarty_tpl->tpl_vars['p']->value['photo_profil'];?>
" onerror="this.src='../photos/photo_profil.jpg'" alt="Photo de profil">
    
        </div>
        
          <div style="display:flex">

            <div class="informations_personnelles">

                <h2> Vos informations personnelles </h2>
                <p class="box"> Nom : <?php echo $_smarty_tpl->tpl_vars['p']->value['Nom'];?>
 </p>
                <p class="box"> Prénom : <?php echo $_smarty_tpl->tpl_vars['p']->value['Prenom'];?>
 </p>
                <p class="box"> Date de naissance : <?php echo $_smarty_tpl->tpl_vars['p']->value['date_de_naissance'];?>
 </p>

            </div>

            <div class="boutons">
              <div style="display: flex; flex-direction:column;justify-content:center; align-items: right;">
              <a href="../GetCRUD.php?action=createUser" name ="action"  class="buttons">Crée un utilisateur</a>
              <a href="../GetCRUD.php?action=modifyUser" name ="action"  class="buttons">Modifier un utilisateur</a>
              <a href="../GetCRUD.php?action=deleteUser" name ="action"  class="buttons">Supprimer un utilisateur</a>
              <a href="../GetCRUD.php?action=viewUser" name ="action" class="buttons">Voir un utilisateur</a>
              </div>
              <div style="display: flex; flex-direction:column; justify-content:center; align-items:center">
              <a href="../GetCRUD.php?action=createOffer" name ="action"  class="buttons">Crée une offre</a>
              <a href="../GetCRUD.php?action=modifyOffer" name ="action"  class="buttons">Modifier une offre</a>
              <a href="../GetCRUD.php?action=deleteOffer" name ="action"  class="buttons">Supprimer une offre</a>
              <a href="../GetCRUD.php?action=viewOffer" name ="action" class="buttons">Voir une offre</a>
              </div>
            </div>
          </div>
    <br>

        <h2 > Tableau de bord </h2>


<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

<div class="flex">

<div class="container">
<!-- Affichage des utilisateurs -->
<h3>Utilisateurs</h3>
<ul class="liste">
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['profileinfo']->value, 'user');
$_smarty_tpl->tpl_vars['user']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['user']->value) {
$_smarty_tpl->tpl_vars['user']->do_else = false;
?>

<hr><div class="line"><?php echo $_smarty_tpl->tpl_vars['user']->value['Prenom'];?>
 <?php echo $_smarty_tpl->tpl_vars['user']->value['Nom'];?>
 - <?php echo $_smarty_tpl->tpl_vars['user']->value['date_de_naissance'];?>
<a href="API/GetStudentInfo.php?id=<?php echo $_smarty_tpl->tpl_vars['user']->value['ID_utilisateur'];?>
" class="btn">Voir le profil </a><br></div>  <hr>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>

<!-- Pagination pour les utilisateurs -->
<div class="pagination">
Pages:
<?php
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
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>
</div>

<!-- Affichage des offres -->
<div class="container">
<h3>Offres</h3>
<ul class="liste">

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['offres']->value, 'offer');
$_smarty_tpl->tpl_vars['offer']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['offer']->value) {
$_smarty_tpl->tpl_vars['offer']->do_else = false;
?>
<hr><div class="line"><?php echo $_smarty_tpl->tpl_vars['offer']->value['nom_de_l_offre'];?>
 - <?php echo $_smarty_tpl->tpl_vars['offer']->value['Entreprise'];?>
<br></div><hr>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>

<!-- Pagination pour les offres -->
<div class="pagination">
Pages:
<?php
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
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>
</div>

</div><?php }
}
