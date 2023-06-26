<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="<?php echo $style ?>" />

    <?php if (isset($titre)) {
    } else {
        $titre = "Infinity - Placeholder";
    } ?>
    <title><?php echo $titre; ?></title>
</head>

<body>
    <div class="container">
        <header>
            <nav class="headerint">
                <div id="logo">
                    <a href="index.php"><img src="images/Logo4.png" alt="logo du site infinity" title="logo infinity" /></a>
                </div>
                <div id="buttonnav">
                    <a href="#" class="haut">Essai gratuit</a>
                    <a href="#" class="haut">Compte client</a>
                </div>
            </nav>
        </header>