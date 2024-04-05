<?php
/* Smarty version 4.4.1, created on 2024-03-17 20:41:20
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\profiles\eleve.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f74760562ad6_69339128',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5088a0b794defc57203a9ae52b64e6b96448ad33' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\profiles\\eleve.tpl',
      1 => 1710696339,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f74760562ad6_69339128 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="body">


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
    


        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    

</div><?php }
}
