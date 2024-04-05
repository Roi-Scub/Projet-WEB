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