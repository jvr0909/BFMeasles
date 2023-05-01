document.getElementById('language-toggle').addEventListener('change', function () {
    const englishLabel = document.querySelector('.language-label.english');
    const frenchLabel = document.querySelector('.language-label.french');
    const inputButton = document.querySelector('.button[href="/input"]');
    const exploreButton = document.querySelector('.button[href="/explore"]');
    const title = document.querySelector('h1');

    if (this.checked) {
        englishLabel.style.opacity = 0.5;
        frenchLabel.style.opacity = 1;
        inputButton.textContent = 'Ajouter des données';
        exploreButton.textContent = 'Explorer des données';
        title.textContent = 'Bienvenue à la plateforme de données';
    } else {
        englishLabel.style.opacity = 1;
        frenchLabel.style.opacity = 0.5;
        inputButton.textContent = 'Input Data';
        exploreButton.textContent = 'Explore Data';
        title.textContent = 'Welcome to the Data Platform';
    }
});
