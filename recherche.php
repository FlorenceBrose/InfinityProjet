<?php
session_start();
include("includes/config.php");

if (isset($_GET['search'])) {
    $recherche = $_GET['search'];
} else {
    $recherche = null;
}

$style = "css/recherche.css";
$titre = "Recherche " . $recherche;

include("includes/header.php");
include("includes/barre.php");

?>

<p id='resultatrecherche'>
    Resultats de votre recherche : <span id="resultatsrecherche2"><?php echo "$recherche"; ?></span>
</p>

<br />

<div id="boiterecherche">
    <?php

    $query = $db->prepare('SELECT * FROM films WHERE tags_f REGEXP "' . $recherche . '";');
    $query->execute();
    while ($searchdata = $query->fetch()) {
        echo "<a href='film.php?id=" . $searchdata['id_f'] . "'><img src='affiches/" . $searchdata['affiche_f'] . "' alt='" . $searchdata['nom_f'] . "' /></a>";
    }

    ?>
</div>

<?php
include("includes/footer.php");
?>