// Quand le DOM est chargé complètement
document.addEventListener("DOMContentLoaded", (event) => {
  // Importe les plugins nécessaires
  gsap.registerPlugin(ScrollTrigger, ScrollSmoother)

  // Créer le scroll smooth
    ScrollSmoother.create({
        wrapper: "#smooth-wrapper",
        content: "#smooth-content",
        smooth: 1.5,
    });
});

// Evite le bug des scroll avec ancre en GSAP (car on enleve le scroll natif du navigateur)
document.querySelector('.scroll-btn').addEventListener('click', e => {
  e.preventDefault();
  const target = document.querySelector('#presentation-zone');
  if (target) {
    ScrollSmoother.get().scrollTo(target, true);
  }
});