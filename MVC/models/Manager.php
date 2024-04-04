<?php

abstract class Manager
{
    //Attribut contenant l'objet PDO
    private static $_db;
    //Méthode d'initialisation de la connexion à la base de données
    private static function setDataBase()
    {
        //création de la connexion à la base de données
        self::$_db = new PDO('mysql:host=localhost;dbname=website;charset=utf8', 'root', 'Shampoo06');
        //Affichage des erreurs
        self::$_db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
    }

    //Méthode de connexion à la base de données
    protected function getDataBase() 
    {

        // If the connection to the database is not set, call the setBdd method to set it
        if(self::$_db == null) 
        {
            self::setDataBase();
        }

        // Return the database connection object
        return self::$_db;
    }


   // //Méthode de récupération de tous les éléments d'une table
   // protected function getALL($offre, $obj)
   // {
   //     //création d'un tableau vide
   //     $var = [];
   //     //Requête SQL pour récupérer tous les éléments de la table 
   //     $req = $this->getBdd()->prepare('SELECT ID_offre, nom_de_l_offre FROM  offre ');
   //     $req->execute();
   //     //Parcours des résultats
   //     while($data = $req->fetch(PDO::FETCH_ASSOC))
   //     {
   //         //Création d'un nouvel objet
   //         $var[] = new $obj($data);
   //     }
//
   //     return $var;
   //     $req->closeCursor();
   // }
}