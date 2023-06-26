<?php
session_start();
include("includes/config.php");

$style = "css/accueil.css";
$titre = "Infinity - Accueil";

include("includes/header.php");
include("includes/barre.php");
?>
<section class="section">
    <div id="filmgeneral">
        <div class="section_film">
            <p id="re">Reprise</p>
        </div>
        <div class="bloc_film">
            <p id="an">Anticipation</p>
            <div class="section_film">
                <?php
                $query = $db->prepare('SELECT * FROM films WHERE tags_f REGEXP "anticipation";');
                $query->execute();
                while ($searchdata = $query->fetch()) {
                    echo "<a href='film.php?id=" . $searchdata['id_f'] . "'><img src='affiches/" . $searchdata['affiche_f'] . "' alt='" . $searchdata['nom_f'] . "' /></a>";
                }
                ?>
            </div>
        </div>
        <div class="bloc_film">
            <p id="co">Comédie</p>
            <div class="section_film">
                <?php
                $query = $db->prepare('SELECT * FROM films WHERE tags_f REGEXP "comedie";');
                $query->execute();
                while ($searchdata = $query->fetch()) {
                    echo "<a href='film.php?id=" . $searchdata['id_f'] . "'><img src='affiches/" . $searchdata['affiche_f'] . "' alt='" . $searchdata['nom_f'] . "' /></a>";
                }
                ?>
            </div>
        </div>
        <div class="bloc_film">
            <p id="da">Dessin Animé</p>
            <div class="section_film">
                <?php
                $query = $db->prepare('SELECT * FROM films WHERE tags_f REGEXP "anime";');
                $query->execute();
                while ($searchdata = $query->fetch()) {
                    echo "<a href='film.php?id=" . $searchdata['id_f'] . "'><img src='affiches/" . $searchdata['affiche_f'] . "' alt='" . $searchdata['nom_f'] . "' /></a>";
                }
                ?>
            </div>
        </div>
        <div class="bloc_film">
            <p id="ho">Horreur</p>
            <div class="section_film">
                <?php
                $query = $db->prepare('SELECT * FROM films WHERE tags_f REGEXP "horreur";');
                $query->execute();
                while ($searchdata = $query->fetch()) {
                    echo "<a href='film.php?id=" . $searchdata['id_f'] . "'><img src='affiches/" . $searchdata['affiche_f'] . "' alt='" . $searchdata['nom_f'] . "' /></a>";
                }
                ?>
            </div>
        </div>
        <div class="bloc_film">
            <p id="so">Space Opéra</p>
            <div class="section_film">
                <?php
                $query = $db->prepare('SELECT * FROM films WHERE tags_f REGEXP "espace";');
                $query->execute();
                while ($searchdata = $query->fetch()) {
                    echo "<a href='film.php?id=" . $searchdata['id_f'] . "'><img src='affiches/" . $searchdata['affiche_f'] . "' alt='" . $searchdata['nom_f'] . "' /></a>";
                }
                ?>
            </div>
        </div>
    </div>
</section>
<?php
include("includes/footer.php");
?>