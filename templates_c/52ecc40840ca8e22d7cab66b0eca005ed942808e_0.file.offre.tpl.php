<?php
/* Smarty version 4.4.1, created on 2024-03-12 16:31:26
  from 'C:\xampp\apache\project\cesi\Projet WEB\API\Composants\offre.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f0754e5557e0_41959259',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '52ecc40840ca8e22d7cab66b0eca005ed942808e' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\API\\Composants\\offre.tpl',
      1 => 1710257484,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f0754e5557e0_41959259 (Smarty_Internal_Template $_smarty_tpl) {
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
" onerror="this.src='../photos/photo_profil.jpg'" alt="Logo de l'entreprise">
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
            
            <div class="salaires"><a href="../../offerDetails.php?id=<?php echo $_smarty_tpl->tpl_vars['offre']->value['ID_offre'];?>
" class="test <?php if ($_smarty_tpl->tpl_vars['value']->value == "true") {?>visible<?php } elseif ($_smarty_tpl->tpl_vars['value']->value == "false") {?>invisible<?php }?>">test</a>
            Salaire : <?php echo $_smarty_tpl->tpl_vars['offre']->value['salaire'];?>
 |  Nombre de places : <?php echo $_smarty_tpl->tpl_vars['offre']->value['nombre_de_places'];?>
 (<?php echo $_smarty_tpl->tpl_vars['offre']->value['nombre_de_places_prises'];?>
 prises)<br>
            </div>
 
            </div>
            <br>
            
          
            <?php echo debug_to_console($_smarty_tpl->tpl_vars['value']->value);?>

        </div>

        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </div>
</body>

<style>

.test {
            /* Ajoutez ici les styles communs pour le lien */
            text-decoration: none;
            color: #0074D9;
            border:0.1vw solid #000;
            border-radius: 0.5vw;
            width:6vw;
            height:2vw;
            text-align: center;
            margin-right:10vw;
        }

        /* Style pour le lien visible */
        .test.visible {
            /* Ajoutez ici les styles spécifiques pour le lien visible */
            font-weight: bold;
            display: block;
        }

        /* Style pour le lien invisible */
        .test.invisible {
            /* Ajoutez ici les styles spécifiques pour le lien invisible */
            display: none;
            
            
            
        }

    .offre {
        
        display: flex;
        margin: 5vw 5vw 0vw 0vw;
        padding: 10px;
        height:15vw;
        width: 60vw;
        border: 0.2vw solid #000;
        border-radius: 1vw;
        position: 
        relative;
        z-index: 2;
        padding-top:5px;

    }

    .vertical_bar {
        width:0.2vw;
        height:13vw;
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
        display:flex;
        
    }
    .offre .nom_offre {
        font-weight: 700;
        font-size: 1.5vw;
        margin-right:0.5vw;
        width:relative;
        height:relative;
        font-family:"Open Sans";
    }

    .offre .temps_offre {
        font-weight: 600;
        font-size: 1.3vw;
        
        width:relative;
        height:relative;
        font-family:"Open Sans";
    }

    .offre .Enteprise {
        
       width:15vw;
       height:15vw;
       
       display:flex;
         flex-direction: column;
         justify-content: center;
            align-items: center;
    }
    .offre .logo_entreprise {
        height: 11vw;
        width: 11vw;
      
        border-radius: 1vw;
        
        
  
     
    }

    .offre .nom_entreprise {
        font-weight: 600;
        font-size: 1.3vw;
      
        font-family:"Open Sans";
        margin-top:1vw;
        width:relative;
        
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
         width:33vw;
        height:10vw;
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
        margin-top:-1vw;
        display:flex;
        justify-content: flex-end;
    }

</style>
</html><?php }
}
