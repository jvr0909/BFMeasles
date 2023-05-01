
$(document).ready(function () {

    // Language toggle
    const translations = {
        en: {
            'Switch to French': 'Switch to French',
            'Country Code:': 'Country Code:',
            'Province of Residence:': 'Province of Residence:',
            'Reporting District:': 'Reporting District:',
            'Date Received (National Level):': 'Date Received (National Level):',
            'Patients Name:': 'Patients Name:',
            'Sex:': 'Sex:',
            'Town/City:': 'Town/City:',
            'Reporting Health Facility:': 'Reporting Health Facility:',
            'Export Current Data': 'Export Current Data',
            'Export All Data': 'Export All Data',
            'Country': 'Country',
            'Province': 'Province',
            'Reporting District': 'Reporting District',
            'Date Received': 'Date Received',
            'Patient Name': 'Patient Name',
            'Date of Birth': 'Date of Birth',
            'Sex': 'Sex',
            'Town/City': 'Town/City',
            'Reporting Health Facility': 'Reporting Health Facility',
            'MeaslesIGM': 'MeaslesIGM',
            'RubellaIGM': 'RubellaIGM',
        },
        fr: {
            'Switch to French': 'Passer à l\'anglais',
            'Country Code:': 'Code du pays:',
            'Province of Residence:': 'Province de résidence:',
            'Reporting District:': 'District de signalement:',
            'Date Received (National Level):': 'Date de réception (niveau national):',
            'Patients Name:': 'Nom du patient:',
            'Sex:': 'Sexe:',
            'Town/City:': 'Ville:',
            'Reporting Health Facility:': 'Établissement de santé déclarant:',
            'Export Current Data': 'Exporter les données actuelles',
            'Export All Data': 'Exporter toutes les données',
            'Country': 'Pays',
            'Province': 'Province',
            'Reporting District': 'District de signalement',
            'Date Received': 'Date de réception',
            'Patient Name': 'Nom du patient',
            'Date of Birth': 'Date de naissance',
            'Sex': 'Sexe',
            'Town/City': 'Ville',
            'Reporting Health Facility': 'Établissement de santé déclarant',
            'MeaslesIGM': 'Rougeole IGM',
            'RubellaIGM': 'Rubéole IGM',
        }
    };

    function translate(language) {
        $('[data-translate]').each(function () {
            const key = $(this).data('translate');
            $(this).text(translations[language][key]);
        });
    }

    $('#language-toggle').on('change', function () {
        if (this.checked) {
            $('#language-label').text(translations['fr']['Switch to French']);
            translate('fr');
        } else {
            $('#language-label').text(translations['en']['Switch to French']);
            translate('en');
        }
    });

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
    
        reportingDistrictSelect.append('<option value=""></option>');
    
        districts.forEach((district) => {
            reportingDistrictSelect.append(`<option value="${district}">${district}</option>`);
        });
    }

    function updateTownCityOptions() {
        const allDistricts = Object.values(provinceToDistrictMapping).flat().sort();
        const townCitySelect = $('#Towncity');
        townCitySelect.empty();
    
        townCitySelect.append('<option value=""></option>');
    
        allDistricts.forEach((district) => townCitySelect.append(`<option value="${district}">${district}</option>`));
    }

    updateProvinceOptions();
    updateTownCityOptions();

    $('#CountryCode').on('change', updateProvinceOptions);
    $('#ProvinceOfResidence').on('change', updateReportingDistrictOptions);

    $('#filters-form').on('input', function () {
        console.log("Input event triggered"); // Add this line
        updateData();
    });

    
    function updateData() {
        const filterDataArray = $('#filters-form').serializeArray();
        const filterData = {};
    
        filterDataArray.forEach((item) => {
            filterData[item.name] = item.value;
        });
    
        console.log('Filter Data:', filterData);
    
        $.ajax({
            url: '/get_data',
            method: 'GET',
            data: filterData,
            success: function (response) {
                const data = response;
                console.log('Received Data:', data);
                const tbody = $('#data-table tbody');
                tbody.empty();
    
                data.forEach(row => {
                    tbody.append(`
                        <tr>
                            <td>${row.CountryCode}</td>
                            <td>${row.ProvinceOfResidence}</td>
                            <td>${row.ReportingDistrict}</td>
                            <td>${row.DateReceivedNatlevel}</td>
                            <td>${row.NamesOfPatient}</td>
                            <td>${row.DateOfBirth}</td>
                            <td>${row.Sex}</td>
                            <td>${row.Towncity}</td>
                            <td>${row.ReportingHealthfacility}</td>
                            <td>${row.MeaslesIgm}</td>
                            <td>${row.RubellaIgm}</td>
                        </tr>
                    `);
                });
            }
        });
    }

    $('#export-all-data').on('click', exportAllData);
    $('#export-current-data').on('click', exportCurrentData);

    // Export functions
    function exportAllData() {
        window.location.href = '/export-data';
    }

    function exportCurrentData() {
        const filterDataArray = $('#filters-form').serializeArray();
        const filterData = {};

        filterDataArray.forEach((item) => {
            filterData[item.name] = item.value;
        });

        const queryString = $.param(filterData);
        window.location.href = `/export_filtered_data?${queryString}`;
    }




    $('#filters-form').on('input', updateData);
    updateData();
});
