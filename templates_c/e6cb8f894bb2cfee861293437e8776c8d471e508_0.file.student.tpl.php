<?php
/* Smarty version 4.4.1, created on 2024-03-12 13:39:14
  from 'C:\xampp\apache\project\cesi\Projet WEB\API\Composants\student.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f04cf215c1d9_62743192',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e6cb8f894bb2cfee861293437e8776c8d471e508' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\API\\Composants\\student.tpl',
      1 => 1710247152,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f04cf215c1d9_62743192 (Smarty_Internal_Template $_smarty_tpl) {
?>
<html>
<head>
    <title>Liste des offres d'emploi</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">

</head>
<body>
<main>
   
            <div class="body">

             
            <div class="left_box">
           
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['studentinfo']->value, 's');
$_smarty_tpl->tpl_vars['s']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['s']->value) {
$_smarty_tpl->tpl_vars['s']->do_else = false;
?>



            <name><?php echo $_smarty_tpl->tpl_vars['s']->value['Prenom'];?>
 <?php echo $_smarty_tpl->tpl_vars['s']->value['Nom'];?>
</name>
            <br>
            <photo><img src="<?php echo $_smarty_tpl->tpl_vars['s']->value['photo_profil'];?>
" alt="photo_de_profil" onerror="this.src='../photos/photo_profil.jpg'"class="photo"></photo>
            <br>
            <span class="titre">Adresse e-mail :</span> <span class="composant"> <?php echo $_smarty_tpl->tpl_vars['s']->value['login'];?>
</span>
                <br>
            <span class="titre">Date de naissance :</span> <span class="composant"> <?php echo $_smarty_tpl->tpl_vars['s']->value['date_de_naissance'];?>
</span>
                <br>
            <span class="titre">Campus:</span> <span class="composant"> <?php echo $_smarty_tpl->tpl_vars['s']->value['campus'];?>
</span>

                <span class="titre">Ville :</span> <span class="composant"> <?php echo $_smarty_tpl->tpl_vars['s']->value['ville'];?>
</span>

            
            <br>
            <span class="titre">Adresse :</span> <span class="composant"> <?php echo $_smarty_tpl->tpl_vars['s']->value['Nom_de_l_adresse'];?>
</span>
            </div>

            <div class="right_box">

                <h1> Mon CV </h1>

                <div class="CV"><?php echo $_smarty_tpl->tpl_vars['s']->value['CV'];?>
</div>
                <br>
                <h2> Secteur de travail désiré</h2>
                <div class="CV"><?php echo $_smarty_tpl->tpl_vars['s']->value['Secteur'];?>
</div>
                <h3> Lettre de Motivation </h3>
                <div class="CV"><?php echo $_smarty_tpl->tpl_vars['s']->value['lettre'];?>
</div>
                
            </div>
            <?php echo '<script'; ?>
>
            if $ID_visiteur = 1 {
                <a href="index.php?action=modifier_profil&id=<?php echo $_smarty_tpl->tpl_vars['s']->value['ID'];?>
">Modifier mon profil</a>
            }
            
            <?php echo '</script'; ?>
>
            
            
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
     
</main>

  
<style>
.right_box {

width: 100%;
align-items: center;
display:flex;
flex-direction: column;
}
span.titre {

    font-size: 1.3vw;
    font-weight: 600;
    color: #4d4d4d;
    margin-top:1vw;

}

span.composant {
    
        font-size: 1.1vw;
        font-weight: 400;
        color: #4d4d4d;
        margin-top:0.5vw;
       
    
    
}
.CV {

        font-size: 1.1vw;
        font-weight: 400;
        color: #4d4d4d;
        margin-top:0.5vw;
        width:80%;


}
.photo {
    margin-top: 1vw;
    width: 15vw;
    height: 15vw;
    border-radius: 1vw;
    border: 1px solid #f2f2f2;
    box-shadow: 0px 0px 10px 0px #000000;
}


name {
    font-size: 1.5vw;
    font-weight: 600;
    color: #4d4d4d;
    margin-top:1vw;}
.body {

display: flex;



background-color: white;
padding: 20px;
border-radius: 10px;
box-shadow: 0px 0px 10px 0px #000000;
width: 100vw;
height: 85%;
margin-top: 5%;
margin-bottom:10%;
margin-left: 5%;
margin-right: 5%;
text-align: center;
font-size: 20px;
color: #4d4d4d;
font-weight: 300;
line-height: 1.5;
letter-spacing: 1px;
text-transform: uppercase;
transition: 0.5s;
position: relative;
overflow: hidden;
border: 1px solid #f2f2f2;

}


.left_box {
    display: flex;
    flex-direction: column;
    justify-content: top;
    align-items: center;
    width: 30vw;
    height: 55%;
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px 0px #000000;
    width: 30vw;
   
    margin-top: 1%;
    margin-bottom:1%;
    margin-left: 1%;
    margin-right: 1%;
    text-align: center;
    font-size: 20px;
    color: #4d4d4d;
    font-weight: 300;
    line-height: 1.5;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: 0.5s;
    position: relative;
    overflow: hidden;
    border: 1px solid #f2f2f2;
}





main {
    margin-top:-0.26vw;
    font-family: 'Open Sans', sans-serif;
    display:flex;
    justify-content: center;
    
    height: 150vw;
    background-color: #f2f2f2;
}
</style>

</body>
<?php }
}
