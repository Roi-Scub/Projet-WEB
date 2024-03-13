<?php
/* Smarty version 4.4.1, created on 2024-03-12 16:07:59
  from 'C:\xampp\apache\project\cesi\Projet WEB\API\Composants\offreDetails.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f06fcf528fd1_95696384',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd54029aeecea4f9876ef4d15357fec8af0f4bc8c' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\API\\Composants\\offreDetails.tpl',
      1 => 1710256077,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f06fcf528fd1_95696384 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
    <title>Liste des offres d'emploi</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">

</head>
<body>
<div>

<?php
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
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    
    <style>
    </style>

</div>

<style>


.offre{
    display: flex;
    flex-direction: row;
    margin: 10px;
    padding: 10px;
    border: 1px solid black;
    border-radius: 10px;
    background-color: #f2f2f2;
    height:100vw;
}

.Enteprise{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin: 10px;
}

.logo_entreprise{
    width: 100px;
    height: 100px;
    border-radius: 50%;
}

.nom_entreprise{
    font-size: 20px;
    font-weight: bold;
    margin-top: 10px;
}

.vertical_bar{
    border-left: 1px solid black;
    height: 100px;
    margin: 10px;
}

.description_offre{
    display: flex;
    flex-direction: column;
    margin: 10px;
}

.intitule_offre{
    display: flex;
    flex-direction: row;
    align-items: center;
    margin-bottom: 10px;
}

.nom_offre{
    font-size: 20px;
    font-weight: bold;
}

.temps_offre{
    font-size: 15px;
    margin-left: 10px;
}

.secteur_description{
    display: flex;
    flex-direction: row;
    margin-bottom: 10px;
}

.description_titre{
    font-size: 15px;
    font-weight: bold;
}

.description{
    font-size: 15px;
}


</style>
</body>

<?php }
}
