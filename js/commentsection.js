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