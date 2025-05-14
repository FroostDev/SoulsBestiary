// Script de monsieur Lehmann
document.addEventListener("scroll", addClass, {passive: true});
        function addClass(){
            document.querySelectorAll("[data-class]").forEach(e=>{
                if(e.getBoundingClientRect().y < window.innerHeight - (e.dataset.offset || 0)){
                    setTimeout(()=>{
                        e.classList.add(e.dataset.class);
					    e.removeAttribute("data-class");
                    }, e.dataset.delay || 0)
				}
            })
        }

addClass();