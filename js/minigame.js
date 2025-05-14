// Variables
const monster = document.querySelector('.monster>img')
const hp = document.querySelector('.monster-hp')
const timer = document.querySelector('.timer')
const death = document.querySelector('.death')
const win = document.querySelector('.win')

// Enleve du temps toutes les secondes
let tmp = setInterval(removeTime, 1000)

function removeTime() {
    let currentTime = parseInt(timer.innerText)
    if (currentTime > 0) {
        currentTime--
        timer.innerText = currentTime
    } else {
        clearInterval(tmp)
        death.classList.add('death-show')
        monster.classList.add('monster-after-death')
    }
}

// Retire de la vie
function removeLife() {
    let currentLife = parseInt(hp.innerText)

    if (currentLife > 0) {
        currentLife--
        hp.innerText = currentLife
    }

    if (currentLife === 0) {
        clearInterval(tmp)
        tmp = null
        win.classList.add('death-show')
        monster.classList.add('monster-after-death')
    }
}

// Enleve de la vie si cliqué sur le boss
monster.addEventListener('click', removeLife)