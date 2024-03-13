<?php

abstract class Model
{
    //Attribut contenant l'objet PDO
    private static $_bdd;
    //Méthode d'initialisation de la connexion à la base de données
    private static function setBdd()
    {
        //création de la connexion à la base de données
        self::$_bdd = new PDO('mysql:host=localhost;dbname=siteweb;charset=utf8', 'root', 'Shampoo06');
        //Affichage des erreurs
        self::$_bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
    }

    //Méthode de connexion à la base de données
    protected function getBdd()
    {
        if(self::$_bdd == null)
            self::setBdd();
        return self::$_bdd;
    }


    //Méthode de récupération de tous les éléments d'une table
    protected function getALL($offre, $obj)
    {
        //création d'un tableau vide
        $var = [];
        //Requête SQL pour récupérer tous les éléments de la table 
        $req = $this->getBdd()->prepare('SELECT ID_offre, nom_de_l_offre FROM  offre ');
        $req->execute();
        //Parcours des résultats
        while($data = $req->fetch(PDO::FETCH_ASSOC))
        {
            //Création d'un nouvel objet
            $var[] = new $obj($data);
        }

        return $var;
        $req->closeCursor();
    }
}