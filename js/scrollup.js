const scroll_up_btn = document.querySelector('.scroll-up-btn')
const scroll_delay = 500

window.addEventListener('scroll', () => {
    if(window.scrollY > scroll_delay) {
        scroll_up_btn.classList.add('scroll-up-btn-show')
    }
    else {
        scroll_up_btn.classList.remove('scroll-up-btn-show')
    }
})