// AJAX (merci les forums)

// Pour que ça s'execute seulement quand le DOM est complètement chargé
document.addEventListener('DOMContentLoaded', function() {
    // variables
    const searchInput = document.getElementById('search-input');
    const bestiaryContainer = document.querySelector('.bestiary-container');
    
    // Evite le spam en supprimant l'ancien timeout si un nouveau est executé
    let searchTimeout;
    
    // Quand l'utilisateur écrit une lettre
    searchInput.addEventListener('input', function() {
        // Efface le timer précédent
        clearTimeout(searchTimeout);
        
        // Attend 300ms avant de lancer la recherche
        searchTimeout = setTimeout(() => {
            const query = this.value.trim();
            fetchSearchResults(query);
        }, 300);
    });

    function fetchSearchResults(query) {
        // On envoie une requête vers search php avec le parametre query (ce qui est dans l'input)
        fetch(`../services/search.php?query=${encodeURIComponent(query)}`)
            // Verifie si il tout est bon dans la réponse et récupère les données
            .then(response => {
                if(!response.ok) throw new Error('Erreur réseau');
                return response.text();
            })
            .then(html => {
                bestiaryContainer.innerHTML = html;
            })
            // Si erreur dans la réponse on l'affiche dans la console et on vide la zone
            .catch(error => {
                console.error('Erreur:', error);
                bestiaryContainer.innerHTML = '';
            });
    }
});