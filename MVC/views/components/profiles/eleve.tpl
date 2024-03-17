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
    


        {/foreach}

    

</div>