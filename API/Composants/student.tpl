
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
           
        {foreach $studentinfo as $s}



            <name>{$s.Prenom} {$s.Nom}</name>
            <br>
            <photo><img src="{$s.photo_profil}" alt="photo_de_profil" onerror="this.src='../photos/photo_profil.jpg'"class="photo"></photo>
            <br>
            <span class="titre">Adresse e-mail :</span> <span class="composant"> {$s.login}</span>
                <br>
            <span class="titre">Date de naissance :</span> <span class="composant"> {$s.date_de_naissance}</span>
                <br>
            <span class="titre">Campus:</span> <span class="composant"> {$s.campus}</span>

                <span class="titre">Ville :</span> <span class="composant"> {$s.ville}</span>

            
            <br>
            <span class="titre">Adresse :</span> <span class="composant"> {$s.Nom_de_l_adresse}</span>
            </div>

            <div class="right_box">

                <h1> Mon CV </h1>

                <div class="CV">{$s.CV}</div>
                <br>
                <h2> Secteur de travail désiré</h2>
                <div class="CV">{$s.Secteur}</div>
                <h3> Lettre de Motivation </h3>
                <div class="CV">{$s.lettre}</div>
                
            </div>
            <script>
            if $ID_visiteur = 1 {
                <a href="index.php?action=modifier_profil&id={$s.ID}">Modifier mon profil</a>
            }
            
            </script>
            
            
        {/foreach}
     
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
