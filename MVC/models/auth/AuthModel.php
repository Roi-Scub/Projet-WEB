<?php

class AuthModel
{
    // Instance de connexion à la base de données
    private $db; 
    private $username;
    private $password;
    private $login;

        // Constructeur 
        public function __construct($db)
        {
            $this->db = $db;
        }

        public function authenticateUser($login, $password)
        {
            // Vérification des informations d'identification dans la base de données
            
            $query = "SELECT * FROM profile WHERE 'login' = :username AND 'password' = :password";
            $stmt = $this->db->prepare($query);
            $stmt->bindParam(':username', $login);
            $stmt->bindParam(':password', $password);
            $stmt->execute();
            var_dump($stmt);
            // Renvoie vrai si l'utilisateur existe dans la base de données
            return $stmt->rowCount() > 0;
        }
        
  

}



?>