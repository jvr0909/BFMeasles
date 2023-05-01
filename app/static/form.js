document.getElementById('language-toggle').addEventListener('change', function () {
    const englishLabel = document.querySelector('.language-label.english');
    const frenchLabel = document.querySelector('.language-label.french');
    const title = document.querySelector('h1');

    // Define translations for form labels and buttons
    const translations = {
        en: {
            title: 'Health Information Form',
            countryCode: 'Country Code:',
            provinceOfResidence: 'Province of Residence:',
            reportingDistrict: 'Reporting District:',
            dateReceivedNatlevel: 'Date Received (National Level):',
            patientsName: 'Patients Name:',
            dateOfBirth: 'Date of Birth:',
            sex: 'Sex:',
            towncity: 'Town/City:',
            reportingHealthfacility: 'Reporting Health Facility:',
            submit: 'Submit',
            importData: 'Import Data'
        },
        fr: {
            title: 'Formulaire d\'informations de santé',
            countryCode: 'Code du pays:',
            provinceOfResidence: 'Province de résidence:',
            reportingDistrict: 'District de rapport:',
            dateReceivedNatlevel: 'Date de réception (niveau national):',
            patientsName: 'Nom des patients:',
            dateOfBirth: 'Date de naissance:',
            sex: 'Sexe:',
            towncity: 'Ville:',
            reportingHealthfacility: 'Établissement de santé déclarant:',
            submit: 'Soumettre',
            importData: 'Importer des données'
        }
    };

    if (this.checked) {
        englishLabel.style.opacity = 0.5;
        frenchLabel.style.opacity = 1;

        // Change the form labels and buttons to French
        title.textContent = translations.fr.title;
        $('label[for="CountryCode"]').text(translations.fr.countryCode);
        $('label[for="ProvinceOfResidence"]').text(translations.fr.provinceOfResidence);
        $('label[for="ReportingDistrict"]').text(translations.fr.reportingDistrict);
        $('label[for="DateReceivedNatlevel"]').text(translations.fr.dateReceivedNatlevel);
        $('label[for="PatientsName"]').text(translations.fr.patientsName);
        $('label[for="DateOfBirth"]').text(translations.fr.dateOfBirth);
        $('label[for="Sex"]').text(translations.fr.sex);
        $('label[for="Towncity"]').text(translations.fr.towncity);
        $('label[for="ReportingHealthfacility"]').text(translations.fr.reportingHealthfacility);
        $('button[type="submit"]').text(translations.fr.submit);
        $('#importData').text(translations.fr.importData);
    } else {
        englishLabel.style.opacity = 1;
        frenchLabel.style.opacity = 0.5;

        // Change the form labels and buttons back to English
        title.textContent = translations.en.title;
        $('label[for="CountryCode"]').text(translations.en.countryCode);
        $('label[for="ProvinceOfResidence"]').text(translations.en.provinceOfResidence);
        $('label[for="ReportingDistrict"]').text(translations.en.reportingDistrict);
        $('label[for="DateReceivedNatlevel"]').text(translations.en.dateReceivedNatlevel);
        $('label[for="PatientsName"]').text(translations.en.patientsName);
        $('label[for="DateOfBirth"]').text(translations.en.dateOfBirth);
        $('label[for="Sex"]').text(translations.en.sex);
        $('label[for="Towncity"]').text(translations.en.towncity);
        $('label[for="ReportingHealthfacility"]').text(translations.en.reportingHealthfacility);
        $('button[type="submit"]').text(translations.en.submit);
        $('#importData').text(translations.en.importData);
    }
});



$(document).ready(function () {
    const provinceToDistrictMapping = {
        Banfora: ['Banfora', 'Mangodara', 'Sindou'].sort(),
        Bobo: ["N'dorola", 'Orodara', 'Lena', 'Karangasso-vigue', 'Hounde', 'Do', 'Dande', 'Dafra'].sort(),
        Dedougou: ['Tougan', 'Toma', 'Solonzo', 'Nouna', 'Dedougou', 'Boromo'].sort(),
        Dori: ['Gorom-gorom', 'Djibo', 'Dori', 'Sebba'].sort(),
        Fada: ['Manni', 'Gayeri', 'Fada Ngourma', 'Diapaga', 'Bogande', 'Pama'].sort(),
        Gaoua: ['Kampti', 'Gaoua', 'Diebougou', 'Dano', 'Batie'].sort(),
        Kaya: ['Tougouri', 'Barsalgho', 'Kongoussi', 'Kaya', 'Boulsa', 'Boussouma'].sort(),
        Koudougou: ['Nanoro', 'Tenado', 'Sabou', 'Koudougou', 'Leo', 'Reo', 'Sapouy'].sort(),
        Manga: ['Sapone', 'Po', 'Manga', 'Kombissiri'].sort(),
        Ouagadougou: ['Baskuy', 'Bogodogo', 'Boulmiougou', 'Nongr-massom', 'Sig-noghin'].sort(),
        Ouahigouya: ['Tiou', 'Ouahigouya', 'Yako', 'Gourcy', 'Titao', 'Seguenega'].sort(),
        Tenkodogo: ['Ouargaye', 'Pouytenga', 'Tenkodogo', 'Zabre', 'Garango', 'Bittou', 'Koupela'].sort(),
        Ziniare: ['Zorgho', 'Ziniare', 'Bousse'].sort(),
    };

    
    function updateProvinceOptions() {
        const selectedCountry = $('#CountryCode').val();
        const provinceSelect = $('#ProvinceOfResidence');
        provinceSelect.empty();

        // Add a blank option at the start
        provinceSelect.append('<option value=""></option>');

        if (selectedCountry === 'BFA') {
            const provinces = Object.keys(provinceToDistrictMapping).sort();

            provinces.forEach((province) => {
                provinceSelect.append(`<option value="${province}">${province}</option>`);
            });
        }
    }

    function updateReportingDistrictOptions() {
        const selectedProvince = $('#ProvinceOfResidence').val();
        const districts = provinceToDistrictMapping[selectedProvince] || [];
        const reportingDistrictSelect = $('#ReportingDistrict');
        reportingDistrictSelect.empty();
    
        // Add a blank option at the start
        reportingDistrictSelect.append('<option value=""></option>');
    
        districts.forEach((district) => {
            reportingDistrictSelect.append(`<option value="${district}">${district}</option>`);
        });
    }


    function updateTownCityOptions() {
        const allDistricts = Object.values(provinceToDistrictMapping).flat().sort();
        const townCitySelect = $('#Towncity');
        townCitySelect.empty();
    
        // Add a blank option at the start
        townCitySelect.append('<option value=""></option>');
    
        allDistricts.forEach((district) => townCitySelect.append(`<option value="${district}">${district}</option>`));
    }

    // Initialize the Province and Town/City dropdown options
    updateProvinceOptions();
    updateTownCityOptions();

    $('#CountryCode').on('change', updateProvinceOptions);
    // Update the Reporting District options whenever the Province of Residence is changed
    $('#ProvinceOfResidence').on('change', updateReportingDistrictOptions);



    $('#exportData').on('click', function () {
        // Your export data functionality goes here
        window.location.href = '/export-data';
    });

    // Add the click event listener for the "Import Data" button
    $('#importData').on('click', function () {
        $('#importFile').click();
    });

    // Add the change event listener for the "Import File" input
    $('#importFile').on('change', function (event) {
        const file = event.target.files[0];
        if (file) {
            const formData = new FormData();
            formData.append('file', file);
    
            fetch('/import-data', {
                method: 'POST',
                body: formData
            })
            .then(response => response.text())
            .then(result => {
                alert(result);
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    });
});
