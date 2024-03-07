<!DOCTYPE html>
<html lang="fr">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STAGE'S COVE</title>
    <link rel="icon" href="photos/logo_grand.png" type="image/icon type">
    <link rel="stylesheet" href="style.css" />

                                                         <!-- Police "Open sans"-->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">
    
    
</head>
<body id="login_body">
<video autoplay muted loop id="logo_stage_s_cove">
  <source src="videos/Stage-s-cove.mp4" type="video/mp4">
</video>

<video autoplay muted loop id="myVideo">
  <source src="videos/watervideo.mp4" type="video/mp4">
</video>

<?php
require('API/database.php');
session_start();
if (isset($_POST['login'])){
  $login = stripslashes($_REQUEST['login']);
  $login = mysqli_real_escape_string($conn, $login);
  $password = stripslashes($_REQUEST['password']);
  $password = mysqli_real_escape_string($conn, $password);
    $query = "SELECT * FROM `utilisateur` WHERE login='$login' and password='$password'";
  $result = mysqli_query($conn,$query) or die(mysql_error());
  $rows = mysqli_num_rows($result);
  if($rows==1){
      $profileId = mysqli_fetch_assoc($result)['ID_utilisateur'];
      $_SESSION['ID_utilisateur'] = $profileId;
      echo '<script>alert("ID_utilisateur: ' . $_SESSION['ID_utilisateur'] . '");</script>';
      header("Location: index.php");
  }else{
    $errorMessage = "Le nom d'utilisateur ou le mot de passe est incorrect.";
  }
}

?>
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

                        <?php if (! empty($errorMessage)) { ?>
                        <p class="errorMessage"><?php echo $errorMessage; ?></p>
                        <?php } ?>  

                </form>

                <p id="login_paragraph">Besoin d'aide ?<a href="page_inscription.html">Contactez-nous ici.</a></p>
         
            </fieldset>
                          
               
              

        </div>


    </main>
 <div class="errorBox">
                    <?php if (!empty($errorMessage)) { echo '<p>' . $errorMessage . '</p>'; } ?>
                    
                        </div>
        
    <footer>

        <hr>

    </footer>



</body>