<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Souls Bestiary</title>
    <!-- Style CSS -->
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/index.css">

    <!-- Polices d'écritures -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Darker+Grotesque:wght@300..900&display=swap"
        rel="stylesheet">

</head>

<body>
    <!-- Affiche le template du header -->
    <?php require 'templates/header.php';
    echo $header; ?>

    <div id="smooth-wrapper">
        <div id="smooth-content">
            <!-- Structure du main -->
            <main>
                <!-- Landing page -->
                <section class="landing-page">
                    <div class="landing-bg" data-class="FadeIn"><img src="assets/img_index/EldenRingTopImage2.png"
                            alt="Une image du chevalier Vyke, se tenant a genoux s'appuyant sur son épée."></div>
                    <div class="landing-title">
                        <h2 data-class="FadeIn" data-delay="300">Éveillés des Cendres, Connaissez Vos Ennemis</h2>
                        <h2 data-class="FadeIn" data-delay="600">Bienvenue sur le Bestiaire Ultime des Souls</h2>
                    </div>
                    <a href="#presentation-zone" id="presentation-zone" class="scroll-btn"><img
                            src="assets/img_general/scroll_arrow.svg" alt=""></a>
                </section>

                <!-- Presentation du site -->
                <section class="presentation-zone">
                    <h3 data-class="FadeIn" data-offset="100" data-delay="50">Bienvenue sur Souls Bestiary, le guide
                        ultime des
                        mondes Souls.</h3>
                    <p data-class="FadeIn" data-offset="100" data-delay="50">Les terres désolées de Lordran, Yharnam et
                        l’Entre-terre regorgent d’ennemis aussi mystérieux que
                        redoutables. De simples créatures errantes aux boss les plus légendaires, chaque adversaire
                        possède une
                        histoire, une stratégie et un danger unique.</p>
                    <p data-class="FadeIn" data-offset="100" data-delay="50">Sur <b>Souls Bestiary</b>, explorez les
                        secrets du
                        bestiaire des jeux Dark Souls, Bloodborne, Elden Ring
                        et bien plus encore. Apprenez à comprendre vos ennemis, plongez dans leur secret et découvrez
                        comment
                        les vaincre. Que vous soyez un vétéran cherchant à percer les derniers mystères ou un nouvel
                        Éveillé en
                        quête de réponses, ce grimoire numérique vous guidera à travers les ténèbres.</p>
                    <div class="presentation-img" data-class="FadeIn" data-offset="300"><img
                            src="assets/img_index/Radhan.png" alt="Une image de Radhan un boss d'Elden Ring"></div>
                </section>

                <!-- Découvrir les mobs -->
                <section class="discover-zone">
                    <h3 data-class="FadeIn" data-offset="100">Qu'allez-vous découvrir dans ce bestiaire?</h3>
                    <div class="discover-img-zone">
                        <div class="discover-img-box" data-class="FadeIn" data-offset="100">
                            <div class="discover-img"><img src="assets/img_index/BossImg.png"
                                    alt="Une image de Malenia le boss le plus complexe d'Elden Ring"></div>
                            <h4>Les boss</h4>
                        </div>
                        <div class="discover-img-box" data-class="FadeIn" data-offset="100" data-delay="50">
                            <div class="discover-img"><img src="assets/img_index/MobsImg.png"
                                    alt="Une image d'une lanterne d'hiver de Bloodborne"></div>
                            <h4>Les créatures</h4>
                        </div>
                    </div>
                    <a href="pages/bestiary.php" class="discover-btn" data-class="FadeIn" data-offset="100"
                        data-delay="50"><img src="assets/img_index/DiscoverBtn.svg" alt="Découvrir le bestiaire"></a>
                </section>
            </main>

            <!-- Particules de feu en fond -->
            <canvas class="fire-particles"></canvas>

            <!-- Affiche le template du footer -->
            <?php require 'templates/footer.php';
            echo $footer; ?>
        </div>
    </div>

    <!-- GSAP -->
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.13.0/dist/gsap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.13.0/dist/ScrollTrigger.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.13.0/dist/ScrollSmoother.min.js"></script>

    <script src="js/addclass.js"></script>
    <script src="js/fireparticles.js"></script>
    <script src="js/scrollsmoother.js"></script>
</body>

</html>