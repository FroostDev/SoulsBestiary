const menu_btn = document.querySelector('.open-close')
const menu = document.querySelector('.comment-section')

menu_btn.addEventListener('click', () => {
    menu.classList.toggle('opened')

    if (menu.classList.contains('opened')) {
        menu_btn.innerText = "Fermer"
    } else {
        menu_btn.innerText = "Un avis ?"
    }
})


// Pour que le scroll de la zone de commentaire commence en bas
window.addEventListener('load', () => {
    setTimeout(() => {
        const chatContainer = document.querySelector('.comment-list');
        if (chatContainer) {
            chatContainer.scrollTop = chatContainer.scrollHeight;
        }
    }, 100); // essaie aussi 200 ms si nécessaire
});