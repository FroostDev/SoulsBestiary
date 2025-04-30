<?php
$servername = "localhost";
$database = "souls_bestiary";
$username = "root";
$password = "";

function Connexion() {
    global $servername, $database, $username, $password;
    try {
        $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");
        $bdd = new PDO("mysql:host=$servername;dbname=$database", $username, $password, $options);
    }
    catch(Exception $err) {
        die("Erreur connexion MySQL : " . $err->getMessage());
    }

    return $bdd;
}

function Comments($utilisateur, $commentaire) {
    $bdd = Connexion();

    // Génère l'heure actuelle
    $heure = date('Y-m-d H:i:s');

    $requete = "INSERT INTO comments (username, `hour`, comment) VALUES ('$utilisateur', '$heure', '$commentaire')";
    $cmd = $bdd->exec($requete);
}

function ShowComments() {
    $bdd = Connexion();

    $reponse = $bdd->query("SELECT username, `hour`, comment FROM comments");

    $comments = $reponse->fetchAll(PDO::FETCH_ASSOC);

    $bdd = null;

    return $comments;
}

function BestiaryList() {
    $bdd = Connexion();
    $reponse = $bdd->query("SELECT game_name, editor, DATE_FORMAT(release_date, '%d/%m/%Y') AS release_date, game.id_game as idgame, id_entity, entity.type AS 'type', entity.name AS nom, region, hp FROM game INNER JOIN entity ON game.id_game = entity.id_game ORDER BY nom ASC");

    $entity = $reponse->fetchAll(PDO::FETCH_ASSOC);

    $bdd = null;

    return $entity;
}

function Strength($entityId) {
    $bdd = Connexion();
    $reponse = $bdd->query("SELECT charac_name FROM characteristic INNER JOIN charac_entity ON characteristic.id_charac=charac_entity.id_charac INNER JOIN entity ON charac_entity.id_entity=entity.id_entity WHERE entity.id_entity=$entityId AND charac_type='force'");

    $charac = $reponse->fetchAll(PDO::FETCH_ASSOC);

    $bdd = null;

    return $charac;
}

function Weakness($entityId) {
    $bdd = Connexion();
    $reponse = $bdd->query("SELECT charac_name FROM characteristic INNER JOIN charac_entity ON characteristic.id_charac=charac_entity.id_charac INNER JOIN entity ON charac_entity.id_entity=entity.id_entity WHERE entity.id_entity=$entityId AND charac_type='faiblesse'");

    $charac = $reponse->fetchAll(PDO::FETCH_ASSOC);

    $bdd = null;

    return $charac;
}