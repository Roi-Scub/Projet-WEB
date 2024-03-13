<?php

foreach ($articles as $article): ?>
<h2><?= $article->getNom() ?></h2>
<h3><?= $article->getId() ?></h3>
<time><?= $article->getDate() ?></time>
<?php endforeach; ?>
