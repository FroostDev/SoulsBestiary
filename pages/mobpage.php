<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Souls Bestiary</title>

    <!-- Style CSS -->
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/mobpage.css">

    <!-- Polices d'écritures -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Darker+Grotesque:wght@300..900&display=swap"
        rel="stylesheet">
</head>
<body>
    <?php require "../modeles/modele.php"; ?>

    <!-- Affiche le template du header -->
    <?php require '../templates/header.php';
    echo $header; ?>

    <div class="boss-img"><img src="<?php echo '../assets/img_mobpage/boss/'.$_GET['id'].'.webp' ?>" alt=""></div>

    <section class="grid-info">
        <div></div>
        <div class="info-zone">
            <div class="principal-info">
                <h1><?= $_GET['nom'] ?></h1>
                <div class="info">
                    <p>Jeu : <b><?= $_GET['game'] ?></b></p>
                    <p>Editeur : <b><?= $_GET['editor'] ?></b></p>
                    <p>Date de sortie : <b><?= $_GET['release'] ?></b></p>
                    <p>Région : <b><?= $_GET['region'] ?></b></p>
                    <p>Points de vie : <b><?= $_GET['hp'] ?></b></p>
                </div>
            </div>

            <div class="characteristic">
                <div class="strength">
                    <h2>Force</h2>

                    <?php 
                        $strength_list = "<ul>";

                        $charac=Strength($_GET['id']);

                        foreach($charac as $strength) {
                            foreach($strength as $e) {
                                $strength_list .= "<li>$e</li>";
                            }
                        }
                        $strength_list .= "</ul>";

                        echo $strength_list;
                    ?>
                </div>
                <div class="weakness">
                    <h2>Faiblesse</h2>
                    <?php 
                        $weakness_list = "<ul>";

                        $charac=Weakness($_GET['id']);

                        foreach($charac as $weakness) {
                            foreach($weakness as $e) {
                                $weakness_list .= "<li>$e</li>";
                            }
                        }
                        $weakness_list .= "</ul>";

                        echo $weakness_list;
                    ?>
                </div>
            </div>
        </div>
    </section>
</body>
</html>