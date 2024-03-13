<link rel="stylesheet" href="../../global/styles/auth.css" />

<header>

<hr>

    


</header>


<main id="login_main">

<div id="login_rectangle">
    

    <fieldset id="login_fieldset">

        

        <form id="login_form" action="" method="post">

            <label for="login">Identifiant</label><br>
            <input type="email" id="email" name="login" required>
            <br>
            <label for="password">Mot de passe</label><br>
            <input type="password" id="password" name="password" required>
            <br>
            <input type="submit" value="Se connecter" name="submit" id="login_button">

            <?php if (isset($errorMessage)) : ?>
            <p style="color: red;"><?php echo $errorMessage; ?></p>
            <?php endif; ?>

        </form>

        <p id="login_paragraph">Besoin d'aide ?<a href="page_inscription.html">Contactez-nous ici.</a></p>
 
    </fieldset>
                  
       
      

</div>

