const monster = document.querySelector('.monster>img')
const hp = document.querySelector('.monster-hp')
const timer = document.querySelector('.timer')
const death = document.querySelector('.death')
const win = document.querySelector('.win')

function removeTime() {
    let currentTime = parseInt(timer.innerText)
    if(currentTime > 0) {
        currentTime--
        timer.innerText=currentTime
    } else {
        clearInterval(removeTime)
        death.classList.add('death-show')
        monster.classList.add('monster-after-death')
    }
}

function removeLife() {
    let currentLife = parseInt(hp.innerText)
    if(currentLife>0) {
        currentLife--
        hp.innerText=currentLife
    } else {
        clearInterval(removeTime)
        win.classList.add('death-show')
        monster.classList.add('monster-after-death')
    }
}

setInterval(removeTime, 1000)
monster.addEventListener('click', removeLife)