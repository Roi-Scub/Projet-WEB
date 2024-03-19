<!DOCTYPE html>
<html>

<head>


    <!-- Local Configuration -->
    
    <title>Stage's cove{if $title neq ''} - {$title}{/if}</title>

    {foreach $styles as $style}
        <link rel="stylesheet" type="text/css" href="{$style}">
    {/foreach}

    <meta charset="UTF-8">
    



</head>

<body>

    <header>
        {if $headerRender != NULL }{$headerRender}{/if}
    </header>

    <main>
        {if $mainRender != NULL }{$mainRender}{/if}
    </main>

    <footer>
        {if $footerRender != NULL }{$footerRender}{/if}
    </footer>

</body>

{foreach $scripts as $script}
    <script src="{$script}"></script>
{/foreach}

</html>