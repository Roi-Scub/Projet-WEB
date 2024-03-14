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
            
            $query = "SELECT * FROM utilisateurs WHERE 'login' = :username AND 'password' = :password";
            $stmt = $this->db->prepare($query);
            $stmt->bindParam(':username', $login);
            $stmt->bindParam(':password', $password);
            $stmt->execute();
            // Renvoie vrai si l'utilisateur existe dans la base de données
            return $stmt->rowCount() > 0;
        }
        
  

       // public function registerUser($username, $password, $email)
       // {
       //     // Enregistrement d'un nouvel utilisateur dans la base de données
       //     
       //     $query = "INSERT INTO users (username, password, email) VALUES (:username, :password, :email)";
       //     $stmt = $this->db->prepare($query);
       //     $stmt->bindParam(':username', $username);
       //     $stmt->bindParam(':password', $password);
       //     $stmt->bindParam(':email', $email);
       //     $stmt->execute();
       // }

}



?>