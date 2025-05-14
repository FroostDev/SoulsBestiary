<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Souls Bestiary</title>
    <!-- Style CSS -->
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/minigame.css">

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

    <main>
        <div class="death"><img src="../assets/minigame/death.png" alt="Vous êtes mort"></div>
        <div class="win"><img src="../assets/minigame/win.png" alt="Vous avez gagné"></div>
        <div class="monster">
            <img src="../assets/minigame/GuardianBoss.gif" alt="Une image d'un chevalier rouge">
            <div class="monster-shadow"></div>
            <h2>Vie : <span class="monster-hp">10</span></h2>
        </div>

        <div class="hero">
            <h2>Temps : <span class="timer">5</span>s</h2>
            <img src="../assets/minigame/Hero.png" alt="Une image de votre hero">
        </div>
    </main>

    <script src="../js/minigame.js"></script>
</body>

</html>