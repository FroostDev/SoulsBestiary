<?php
require "../modeles/modele.php";

if (isset($_GET['query'])) {
    $searchQuery = trim($_GET['query']);
    
    $results = searchMobs($searchQuery);
    
    foreach ($results as $mob) {
        // Détermine la classe CSS en fonction de l'ID du jeu
        $class = '';
        if ($mob['id_game'] == 1) {
            $class = 'elden_ring';
        } elseif ($mob['id_game'] == 2) {
            $class = 'dark_souls';
        } elseif ($mob['id_game'] == 3) {
            $class = 'dark_souls2';
        } elseif ($mob['id_game'] == 4) {
            $class = 'dark_souls3';
        } elseif ($mob['id_game'] == 5) {
            $class = 'fallen';
        }

        echo '<div class="case ' . $class . '" style="opacity:1">
                <a href="mobpage.php?nom=' . urlencode($mob['name']) . '&game=' . urlencode($mob['game_name']) . '&editor=' . urlencode($mob['editor']) . '&release=' . urlencode($mob['release_date']) . '&region=' . urlencode($mob['region']) . '&hp=' . urlencode($mob['hp']) . '&id=' . urlencode($mob['id_entity']) . '">
                    <img class="mob-img" src="../assets/img_bestiary/mobs/' . $mob['id_entity'] . '.webp" alt="" loading="lazy">
                </a>
                <h3>' . htmlspecialchars($mob['name']) . '</h3>
              </div>';
    }
}
?>