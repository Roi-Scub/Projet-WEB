<?php 
	define('DB_SERVER', 'localhost');
	define('DB_USERNAME', 'root');
	define('DB_PASSWORD', 'Shampoo06');
	define('DB_NAME', 'siteweb');


	$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

	if($conn === false){
		die("ERREUR : Impossible de se connecter. " . mysqli_connect_error());
	}




?>