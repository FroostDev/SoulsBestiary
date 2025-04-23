const filter = document.querySelector(".filter")
const filter_menu = document.querySelector(".filter-menu")

filter.addEventListener("click", ()=>{
    filter_menu.classList.toggle("filter-menu-open")
})

document.querySelectorAll(".filter-menu>label>input").forEach(e=>{
    e.addEventListener("change", function(){
        document.querySelector(".bestiary-container").classList.toggle(this.name)
    })
})