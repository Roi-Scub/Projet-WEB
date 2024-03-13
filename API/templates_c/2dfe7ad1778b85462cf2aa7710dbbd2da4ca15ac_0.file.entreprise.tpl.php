<?php
/* Smarty version 4.4.1, created on 2024-03-08 20:58:44
  from 'C:\xampp\apache\project\cesi\Projet WEB\API\Composants\entreprise.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65eb6df4810710_97619440',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2dfe7ad1778b85462cf2aa7710dbbd2da4ca15ac' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\API\\Composants\\entreprise.tpl',
      1 => 1709903802,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65eb6df4810710_97619440 (Smarty_Internal_Template $_smarty_tpl) {
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
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['entreprise']->value, 'e');
$_smarty_tpl->tpl_vars['e']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['e']->value) {
$_smarty_tpl->tpl_vars['e']->do_else = false;
?>

        <div class="offre">
            <div class="Enteprise"> 
                <img class="banniere_entreprise" src="<?php echo $_smarty_tpl->tpl_vars['e']->value['banniere_entreprise'];?>
" alt="Bannière de l'entreprise">
                <div class="entreprise_flex"> 

                    <img class="logo_entreprise" src="<?php echo $_smarty_tpl->tpl_vars['e']->value['photo_entreprise'];?>
" alt="Logo de l'entreprise">

                    <div class="nom_entreprise_">   

                        <span class="nom_entreprise"><?php echo $_smarty_tpl->tpl_vars['e']->value['Entreprise'];?>
</span><br><br>
                        <span class="temps_offre"><?php echo $_smarty_tpl->tpl_vars['e']->value['Secteur_activite'];?>
</span>

                    </div>
                     
                    <div class="vertical_bar"></div>

                    <div class="nombre_offre">Nombre d'offre de l'entreprise : </div>

                    <div class="vertical_bar"></div>
                </div>
            </div>

           
            <div class="description_offre">
            <div class="intitule_offre">
            <span class="description_titre">Description : </span> <br><div class="description"><?php echo $_smarty_tpl->tpl_vars['e']->value['Description'];?>
</div></div>
            <div class="secteur_description"> </div>
            
            <div class="Nombre d'offre">
           
            </div>

            </div>
            <br>
            
        </div>

        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </div>


    
<style>

.offre {
    
    display: flex;
    margin: 5vw 0vw 0vw 0vw;
    padding: 10px;
    height:20vw;
    width: 80vw;
    border: 0.2vw solid #000;
    border-radius: 1vw;
    position: 
    relative;
    z-index: 2;
    padding-top:5px;

}

.nombre_offre {


    width:20vw;
    margin-top:1vw;
    font-weight: 600;
    font-size: 1vw;
   
    font-family:"Open Sans";
}
    .nom_entreprise_ {

       width:15vw;
       margin-top:1vw;
    }



.entreprise_flex {
    display: flex;
    
}

.banniere_entreprise {
    height:11vw;
    width: 50vw;
    margin-top: 1.2vw;
    margin-right: 0.5vw;
    border-radius: 1vw;
    border: 0.2vw solid #000;
}
.vertical_bar {
    width:0.2vw;
    height:6vw;
    margin-top:1vw;
    border-radius: 1vw;
    background-color: #000;
    margin-right: 1vw;
}

.offre .description_offre {

    width:39vw;
    height:10vw;
    font-family:"Open Sans";
}
.offre .intitule_offre {
    width:45vw;
    height:3vw;
    margin-top:1vw;
    margin-left:1vw;
}
.offre .nom_offre {
    font-weight: 700;
    font-size: 1.5vw;
    margin-right:1.5vw;
    width:20vw;
    height:5vw;
    font-family:"Open Sans";
}

.offre .temps_offre {
    font-weight: 600;
    font-size: 0.8vw;
    padding-top:1vw;
    margin-top:1vw;
    width:20vw;
    height:5vw;
    margin-left:0.5vw;
    font-family:"Open Sans";
}

.offre .Enteprise {
    
   width:52vw;
   height:22vw;
   margin-top:-1vw;
}
.offre .logo_entreprise {
    height: 11vw;
    width: 11vw;
    margin-top:-3.5vw;
    margin-left:1.5vw;
    border: 0.2vw solid #000;
    border-radius: 1vw;
    
    

 
}

.offre .nom_entreprise {
    font-weight: 600;
    font-size: 1.3vw;
    margin-top: 1.5vw;
    font-family:"Open Sans";
    margin-left:0.5vw;
    width:12vw;
    
}

.offre .secteur_description {
    width:45vw;
    height:10vw;
    display:flex
    
}

.offre .description_titre {
    font-weight: 600;
    font-size: 1.1vw;
    font-family:"Open Sans";
    width:9vw;
}
.offre .description {
     width:28vw;
    height:10vw;
    margin-top:0.5vw;
    margin-left:0.5vw;
    font-weight: 400;
    font-size: 0.8vw;
    font-family:"Open Sans";
    
   
}

.offre .salaires {

    width:41.5vw;
    height:3vw;
    font-weight:600;
    font-size:1.1vw;
    font-family:"Open Sans";
    position: 
    relative;
    text-align: right;
    margin-top:-1vw
}

</style>
</body><?php }
}
