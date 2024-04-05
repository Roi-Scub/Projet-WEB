<?php
/* Smarty version 4.4.1, created on 2024-03-15 10:58:08
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\loginComponent\login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_65f41bb068ba47_82162083',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd4ad0f8bf5e5693830e1b56fa1e7a6132dc4a264' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\loginComponent\\login.tpl',
      1 => 1710496685,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65f41bb068ba47_82162083 (Smarty_Internal_Template $_smarty_tpl) {
?><body id="login_body">
<video autoplay muted loop id="logo_stage_s_cove">
  <source src="../../../global/videos/Stage-s-cove.mp4" type="video/mp4" >
</video>

<video autoplay muted loop id="myVideo">
  <source src="../../../global/videos/watervideo.mp4" type="video/mp4">
</video>
</body

    <div id="login_main">


        <fieldset id="login_fieldset">



            <form id="login_form"  method="POST">

                <label for="login">Identifiant</label><br>
                <input type="email" id="email" name="email" required>
                <br>
                <label for="password">Mot de passe</label><br>
                <input type="password" id="password" name="password" required>
                <br>
                <input type="submit" value="Se connecter" name="submit" id="login_button">

                    <p id="login_paragraph">Besoin d'aide ? - <a href="mailto:helping-center@stages-cove.fr">Contactez-nous ici.<a></p>

            </form>

           
    
        </fieldset>




    </div>
<?php }
}
