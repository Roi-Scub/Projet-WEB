<?php
// extension de la classe Model
class ArticleManager extends Model 
{
    // Récupère la liste des articles
    public function getArticles()
    {
        // Appel de la méthode de la classe Model
        return $this->getAll('offre', 'Article');
    }
    /*
    public function getArticle($ID_offre)
    {
        return $this->getOne('articles', 'Article', $ID_offre);
    }

    public function addArticle($nom_de_l_offre)
    {
        return $this->add('articles', 'Article', $nom_de_l_offre);
    }

    public function updateArticle($id, $title)
    {
        return $this->update('articles', 'Article', $id, $title);
    }

    public function deleteArticle($ID_offre)
    {
        return $this->delete('articles', $ID_offre);
    }*/
}