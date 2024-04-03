<!DOCTYPE html>
<html lang="fr">

<head>
    

    <!-- Local Configuration -->
    
    <title>Stage's cove{if $title neq ''} - {$title}{/if}</title>
    
    {foreach $styles as $style}
        <link rel="stylesheet" type="text/css" href="{$style}">
    {/foreach}
    <link rel="manifest" href="../Manifest.json">
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Stage's Cove">
    <meta name="description" content="Stage's Cove is a platform for students to find internships and companies to find interns.">
    
    <meta name="theme-color" content="#007bff">
    <script src="../script.js" ></script>

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