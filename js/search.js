// AJAX (merci les forums)
document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('search-input');
    const bestiaryContainer = document.querySelector('.bestiary-container');
    let searchTimeout;
    
    // Quand le input est entrée
    searchInput.addEventListener('input', function() {
        clearTimeout(searchTimeout);
        searchTimeout = setTimeout(() => {
            const query = this.value.trim();
            fetchSearchResults(query);
        }, 300);
    });

    function fetchSearchResults(query) {
        fetch(`../services/search.php?query=${encodeURIComponent(query)}`)
            .then(response => {
                if(!response.ok) throw new Error('Erreur réseau');
                return response.text();
            })
            .then(html => {
                bestiaryContainer.innerHTML = html;
                if(window.AddClass) AddClass();
            })
            .catch(error => {
                console.error('Erreur:', error);
                bestiaryContainer.innerHTML = '';
            });
    }
});