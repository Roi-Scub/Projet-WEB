<div>

{foreach $business as $b}

    <div class="offre">
        <div class="Enteprise"> 
            <img class="banniere_entreprise" src="{$b->getBanner()}" onerror="this.src='../../../global/images/banner_placeholder.jpg'" alt="Bannière de l'entreprise">
            <div class="entreprise_flex"> 

                <img class="logo_entreprise" src="{$b->getBusinessProfilePicture()}" onerror="this.src='../../../global/images/photo_profil.jpg'" alt="Logo de l'entreprise">

                <div class="nom_entreprise_">   
    
                
                    <span class="nom_entreprise">{$b->getName()}</span><br><br>
                    <span class="temps_offre">{$b->getSector()}</span>

                </div>
                 
                <div class="vertical_bar"></div>

                <div class="nombre_offre">Nombre d'offre de l'entreprise : </div>

                <div class="vertical_bar"></div>
            </div>
        </div>

       
        <div class="description_offre">
        <div class="intitule_offre">
        <span class="description_titre">Description : </span> <br><div class="description">{$b->getDescription()}</div></div>
        <div class="secteur_description"> </div>
        
        <div class="Nombre d'offre">
       
        </div>
            <button class="button" onclick="window.location.href='businessesView&id={$b->getId()}'">
                  Voir Plus
            </button>
        </div>
        <br>

          

    </div>

    
{/foreach}
</div>  

<div class="pagination">

    {$dotsDisplayed=false}

    {if $currentPage != 1}
        <a href="offers&page={$currentPage - 1}">Page précédente</a>
    {/if}


    {for $i=1; $i<$max; $i++}
        {if $i == $currentPage}

            {if $i eq $currentPage}
                <a href="offers&page={$i}" style="font-weight: bold; color: burlywood;">{$i}</a>
            {else}
                <a href="offers&page={$i}" style="font-weight: normal; color: white;">{$i}</a>
            {/if}

        {elseif $i <= 3 || $i > $max-4 } 
            <a href="offers&page={$i}">{$i}</a> 
        {elseif !$dotsDisplayed} 
            <span>...</span>
            {$dotsDisplayed=true}
        {/if}

    {/for}

    {if $currentPage < $max-1}
        <a href="offers&page={$currentPage + 1}">Page suivante</a>
    {/if}



</div>