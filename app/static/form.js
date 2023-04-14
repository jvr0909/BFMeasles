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
});
