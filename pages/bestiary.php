<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Souls Bestiary</title>
    <!-- Style CSS -->
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/bestiary.css">

    <!-- Polices d'écritures -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Darker+Grotesque:wght@300..900&display=swap"
        rel="stylesheet">
</head>

<body>
    <?php require "../modeles/modele.php" ?>

    <!-- Affiche le template du header -->
    <?php require '../templates/header.php';
    echo $header; ?>

    <!-- Structure du main -->
    <main>
        <section class="landing-page">
            <div class="landing-bg" data-class="FadeIn"><img src="../assets/img_bestiary/EldenRingTopImage.png"
                    alt="Une image de Malenia, se battant contre Radhan."></div>

            <div class="landing-line">
                <div class="landing-title" data-class="FadeIn" data-delay="400">
                    <h2>Le bestiaire</h2>
                    <p>Découvrez les créatures les plus redoutables des mondes sombres et impitoyables des Souls-like.
                        Analysez leurs forces, leurs faiblesses et préparez-vous à l'affrontement.</p>
                </div>
                <a href="#presentation-zone" id="presentation-zone" class="scroll-btn" data-class="FadeIn"
                    data-delay="800"><img src="../assets/img_general/scroll_arrow.svg" alt=""></a>
            </div>
        </section>

        <!-- Menu commentaires -->
        <div class="comment-section">
            <?php
            // Si le bouton envoyé est cliqué
            if (isset($_POST['clic'])) {
                // Je vérifie une deuxième fois si les variables sont vides
                $utilisateur = !empty($_POST['utilisateur']) ? $_POST['utilisateur'] : "";
                $commentaire = !empty($_POST['commentaire']) ? nl2br($_POST['commentaire']) : "";

                if (!empty($utilisateur) && !empty($commentaire)) {
                    // J'ajoute le commentaire dans la bdd
                    Comments($utilisateur, $commentaire);

                    header('Location: bestiary.php');
                    exit();
                }
            } else {
                $message = "Erreur";
            }
            ?>

            <div class="comment-list">
                <?php
                $comments = ShowComments();
                foreach ($comments as $com): ?>

                    <div class="comment-user-comment">
                        <div class="comment-info">
                            <p><?= htmlspecialchars($com['username']) ?></p>
                            <p class="hour"><?= htmlspecialchars($com['hour']) ?></p>
                        </div>
                        <p class="comment"><?= $com['comment'] ?></p>
                    </div>

                <?php endforeach; ?>
            </div>

            <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post" class="comment-form">
                <div class="form-line">
                    <label for="pseudo"></label>
                    <input type="text" id="pseudo" placeholder="Pseudonyme" name="utilisateur" required>
                </div>
                <textarea name="commentaire" id="" placeholder="Votre message" required></textarea>
                <button class="submit" name="clic" value="ok">Envoyer</button>
            </form>

            <div class="open-close">Un avis ?</div>
        </div>

        <section class="bestiary-zone">
            <div class="research-and-filter">
                <div class="search-bar">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <path fill="#FFEABC"
                            d="M20.031 20.79c.46.46 1.17-.25.71-.7l-3.75-3.76a7.9 7.9 0 0 0 2.04-5.31c0-4.39-3.57-7.96-7.96-7.96s-7.96 3.57-7.96 7.96s3.57 7.96 7.96 7.96c1.98 0 3.81-.73 5.21-1.94zM4.11 11.02c0-3.84 3.13-6.96 6.96-6.96c3.84 0 6.96 3.12 6.96 6.96s-3.12 6.96-6.96 6.96c-3.83 0-6.96-3.12-6.96-6.96" />
                    </svg>
                    <input placeholder="Rechercher" id="search-input" autocomplete="off"></input>
                </div>
                <button class="filter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24">
                        <path fill="#FFEABC"
                            d="M14.037 20.937a1 1 0 0 1-.518-.145l-3.334-2a2.55 2.55 0 0 1-1.233-2.176v-4.525a1.53 1.53 0 0 0-.284-.891L4.013 4.658a1.01 1.01 0 0 1 .822-1.6h14.33a1.009 1.009 0 0 1 .822 1.6L15.332 11.2a1.53 1.53 0 0 0-.285.891v7.834a1.013 1.013 0 0 1-1.01 1.012M4.835 4.063l4.647 6.557a2.5 2.5 0 0 1 .47 1.471v4.524a1.54 1.54 0 0 0 .747 1.318l3.334 2l.014-7.843a2.5 2.5 0 0 1 .471-1.471l4.654-6.542Z" />
                    </svg>
                    <p>Filtres</p>

                    <div class="filter-menu">
                        <label>
                            <input type="checkbox" name="elden_ring" checked>
                            Elden Ring
                        </label>
                        <label>
                            <input type="checkbox" name="dark_souls" checked>
                            Dark Souls
                        </label>
                    </div>
                </button>
            </div>

            <div class="bestiary-container">
                <!-- <div class="case" data-class="FadeIn" data-offset="150">
                    <a href="mobpage.php">
                        <img class="mob-img" src="https://eldenring.wiki.fextralife.com/file/Elden-Ring/godfrey_the_first_lord.png"
                            alt="">
                    </a>
                    <h3>Godfrey The First Lord</h3>
                </div> -->

                <?php
                $bestiary = "";


                $entity = BestiaryList();

                foreach ($entity as $mobs) {
                    if ($mobs['idgame'] == "1") {
                        $bestiary .= "<div class='case elden_ring' data-class='FadeIn' data-offset='150'>
                                            <a href='mobpage.php?nom=" . $mobs['nom'] . "&game=" . $mobs['game_name'] . "&editor=" . $mobs['editor'] . "&release=" . $mobs['release_date'] . "&region=" . $mobs['region'] . "&hp=" . $mobs['hp'] . "&id=" . $mobs['id_entity'] . "'>
                                                <img class='mob-img' src='../assets/img_bestiary/mobs/" . $mobs['id_entity'] . ".webp'
                                                alt='' loading='lazy'>
                                            </a>
                                            <h3>" . $mobs['nom'] . "</h3>
                                    </div>";
                    }

                    if ($mobs['idgame'] == "2") {
                        $bestiary .= "<div class='case dark_souls' data-class='FadeIn' data-offset='150'>
                                            <a href='mobpage.php?nom=" . $mobs['nom'] . "&game=" . $mobs['game_name'] . "&editor=" . $mobs['editor'] . "&release=" . $mobs['release_date'] . "&region=" . $mobs['region'] . "&hp=" . $mobs['hp'] . "&id=" . $mobs['id_entity'] . "'>
                                                <img class='mob-img' src='../assets/img_bestiary/mobs/" . $mobs['id_entity'] . ".webp'
                                                alt='' loading='lazy'>
                                            </a>
                                            <h3>" . $mobs['nom'] . "</h3>
                                    </div>";
                    }
                }

                echo $bestiary;
                ?>

            </div>
        </section>
    </main>

    <!-- Particules de feu en fond -->
    <canvas class="fire-particles"></canvas>

    <!-- Affiche le template du footer -->
    <?php require '../templates/footer.php';
    echo $footer; ?>

    <script src="../js/addclass.js"></script>
    <script src="../js/fireparticles.js"></script>
    <script src="../js/filter.js"></script>
    <script src="../js/search.js"></script>
    <script src="../js/commentsection.js"></script>
</body>

</html>