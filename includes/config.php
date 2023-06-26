<?php

    try
    {
        //On se connecte à la base de données (connexion en pdo)
	    $db = new PDO('mysql:host=localhost; dbname=infinity', 'infinity', 'testsalpha123', array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''));
    }
    catch (Exception $e)
    {
        //Si on arrive pas à se connecter à la base de données, on arrête le chargement du site (die) et on affiche une petite page d'erreur (La variable-fonction $e->getMessage() renvoie quelle est l'erreur)
	    die('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
			    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
				<head>
    				<title>Database Error</title>
    				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    				<style type="text/css">
    				    body {font-size:10px; color:#777777; font-family:arial, sans-serif; text-align:center;}
    				    h1 {font-size:30px; color:#FA4E4E; margin: 70px 0 50px 0;}
    				    h3 {font-size:25px; color:#666; margin: 70px 0 50px 0;}
    				    p { font-size:16px;text-align:center; text-align: center; margin-top: 20px }
    				</style>
				</head>
				<body>
					<h1>Database Error</h1>
					<p>' . $e->getMessage().'</p>
				</body>
			</html>'); 
    }
    ?>