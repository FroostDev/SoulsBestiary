// Variables
const menu_btn = document.querySelector('.open-close')
const menu = document.querySelector('.comment-section')

// Changer le texte ouvert/fermer du menu commentaires
menu_btn.addEventListener('click', () => {
    menu.classList.toggle('opened')

    if (menu.classList.contains('opened')) {
        menu_btn.innerText = "Fermer"
    } else {
        menu_btn.innerText = "Un avis ?"
    }
})

// Pour que la section commentaire soit scroller en bas car le premier message est tout en bas
document.addEventListener('DOMContentLoaded', () => {
  const chatContainer = document.querySelector('.comment-list');
  if (chatContainer) {
    // Attendre que les messages soient chargés
    setTimeout(() => {
      chatContainer.scrollTop = chatContainer.scrollHeight;
    }, 100);
  }
});
