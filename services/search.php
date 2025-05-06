<?php
require "../modeles/modele.php";

if(isset($_GET['query'])) {
    $searchQuery = trim($_GET['query']);
    
    $results = searchMobs($searchQuery);
    
    foreach($results as $mob) {
        echo '<div class="case '.($mob['id_game'] == 1 ? 'elden_ring' : 'dark_souls').'" style="opacity:1">
                <a href="mobpage.php?nom='.urlencode($mob['name']).'&game='.urlencode($mob['game_name']).'&editor='.urlencode($mob['editor']).'&release='.urlencode($mob['release_date']).'&region='.urlencode($mob['region']).'&hp='.urlencode($mob['hp']).'&id='.urlencode($mob['id_entity']).'">
                    <img class="mob-img" src="../assets/img_bestiary/mobs/'.$mob['id_entity'].'.webp" alt="" loading="lazy">
                </a>
                <h3>'.htmlspecialchars($mob['name']).'</h3>
              </div>';
    }
}
?>