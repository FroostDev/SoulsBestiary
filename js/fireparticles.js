var canva = document.querySelector(".fire-particles");
var ctx = canva.getContext("2d");

// Tableau de particules avec position x/y et vitesse x/y
let particles = [
    { x: 0, y: window.innerHeight - 5, vx: 0.5, vy: 1.5 },
    { x: 0, y: window.innerHeight - 10, vx: -0.3, vy: 2 },
    { x: 0, y: window.innerHeight - 15, vx: 0.2, vy: 1.8 },
    { x: 0, y: window.innerHeight - 20, vx: -0.4, vy: 2.2 },
    { x: 0, y: window.innerHeight - 25, vx: 0.3, vy: 1.7 },
    { x: 0, y: window.innerHeight - 30, vx: -0.2, vy: 1.9 },
    { x: 0, y: window.innerHeight - 35, vx: 0.4, vy: 2.1 },
    { x: 0, y: window.innerHeight - 40, vx: -0.5, vy: 2.5 },
    { x: 0, y: window.innerHeight - 45, vx: 0.1, vy: 1.6 },
    { x: 0, y: window.innerHeight - 50, vx: -0.3, vy: 2 },
    { x: 0, y: window.innerHeight - 55, vx: 0.2, vy: 1.8 },
    { x: 0, y: window.innerHeight - 60, vx: -0.4, vy: 2.3 },
    { x: 0, y: window.innerHeight - 65, vx: 0.3, vy: 1.9 },
    { x: 0, y: window.innerHeight - 70, vx: -0.2, vy: 2.2 },
    { x: 0, y: window.innerHeight - 75, vx: 0.5, vy: 2.4 }
];

// Met la taille du canva a la taille de l'écran
function sizeCanva() {
    canva.width = window.innerWidth;
    canva.height = window.innerHeight;
}

// Resize le canva si la taille d'écran change
sizeCanva()
window.addEventListener("resize", sizeCanva);

// Fonction qui parcours le tableau
function drawShapes() {
    ctx.clearRect(0, 0, canva.width, canva.height);

    particles.forEach(element => {
        element.x += element.vx;
        element.y -= element.vy;

        // Suppression de la vérification pour la descente
        if (element.y <= 0) {
            element.y = window.innerHeight - 5; // Les particules réapparaissent en bas
        }
        if (element.x >= window.innerWidth) {
            element.x = 0; // Les particules reviennent à gauche
        }

        // Dessiner une particule rouge
        ctx.fillStyle = "#e0431f";
        ctx.beginPath();
        ctx.arc(element.x, element.y, 1.5, 0, Math.PI * 2);
        ctx.fill();
    });

    window.requestAnimationFrame(drawShapes);
}

drawShapes();