<div>

{foreach $business as $b}

    <div class="offre">
        <div class="Enteprise"> 
            <img class="banniere_entreprise" src="{$b.banner}" onerror="this.src='../../../global/images/banner_placeholder.jpg'" alt="Bannière de l'entreprise">
            <div class="entreprise_flex"> 

                <img class="logo_entreprise" src="{$b.profilePicture}" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Logo de l'entreprise">

                <div class="nom_entreprise_">   
    
                
                    <span class="nom_entreprise">{$b.name}</span><br><br>
                    <span class="temps_offre">{$b.sector}</span>

                </div>
                 
                <div class="vertical_bar"></div>

                <div class="nombre_offre">Nombre d'offre de l'entreprise : </div>

                <div class="vertical_bar"></div>
            </div>
        </div>

       
        <div class="description_offre">
        <div class="intitule_offre">
        <span class="description_titre">Description : </span> <br><div class="description">{$b.desc}</div></div>
        <div class="secteur_description"> </div>
        
        <div class="Nombre d'offre">
       
        </div>

        </div>
        <br>
        
    </div>

    
{/foreach}
</div>