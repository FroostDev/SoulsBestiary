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
                <a href="#presentation-zone" id="presentation-zone" class="scroll-btn" data-class="FadeIn" data-delay="800"><img
                    src="../assets/img_general/scroll_arrow.svg" alt=""></a>
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
</body>

</html>