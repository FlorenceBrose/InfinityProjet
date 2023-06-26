<?php
session_start();
include("includes/config.php");

if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    $id = null;
}
$query = $db->prepare('SELECT * FROM films WHERE id_f REGEXP "' . $id . '";');
$query->execute();
$film = $query->fetch();

$style = "css/film.css";
$titre = "Infinity - " . $film['nom_f'];

include("includes/header.php");
include("includes/barre.php");

?>

<section class="partie1">
    <video controls src="trailers/<?php echo $film['trail_f']; ?>" autoplay muted></video>
    <img src="affiches/<?php echo $film['affiche_f']; ?>" />
    <div class="description">
        <h3><?php echo $film['nom_f']; ?></h3>
        <p><?php echo $film['syn_f']; ?></p>
        <p>Sortie : <?php echo $film['date_f']; ?></p>
    </div>
</section>
<section class="episodes">
    <ul>
        <?php
        for ($i = 0; $i <= 8; $i++) {
            $b = rand(1, 24);
            $query = $db->prepare('SELECT * FROM films WHERE id_f REGEXP "' . $b . '";');
            $query->execute();
            $affiche = $query->fetch();
            echo '<li><a href="film.php?id=' . $affiche["id_f"] . '"><img src="affiches/' . $affiche["affiche_f"] . '" /></li>';
        }
        ?>
    </ul>
</section>

<?php
include("includes/footer.php");
?>