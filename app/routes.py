from flask import Flask, request, jsonify, render_template, redirect, url_for, send_file, Response
from app import app
from app import database as db_helper
import pandas as pd
import io

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/input', methods=['GET'])
def input():
    return render_template('form.html')



@app.route('/export-data')
def export_data():
    
    # print("exporting data")
    # Replace with your database export logic
    df = db_helper.extract_data()    
    output = io.StringIO()
    df.to_csv(output, index=False)
    output.seek(0)

    return Response(
        output.getvalue(),
        mimetype="text/csv",
        headers={"Content-Disposition": "attachment;filename=data.csv"}
    )

@app.route('/import-data', methods=['GET', 'POST'])
def import_data():
    # print("importing data")
    file = request.files['file']
    # print(file)
    if file:
        inputed_data = pd.read_csv(file)
        
        # print("data read")
        
        current_data = db_helper.extract_data()
        
        if not set(current_data.columns).issubset(set(inputed_data.columns)):
            return "Data format is incorrect. Some required columns are missing in the input data.", 400
        
        #only keep the columns that are in the database
        inputed_data = inputed_data[current_data.columns]
    
    
        #drop all the rows from inputed_data that are already in the database
        inputed_data = inputed_data[~inputed_data['IDNumber'].isin(current_data['IDNumber'])]
                
        #append the new data to the database
        db_helper.input_data(inputed_data)
        # print("data imported")
        return "Data imported successfully", 200
    else:
        return "No file provided", 400
    
@app.route("/explore", methods=['GET'])
def explore():
    return render_template('explore.html')


@app.route("/get_data", methods=['GET'])
def get_data():
    country_code = request.args.get('country_code', default = None)
    province_of_residence = request.args.get('Province of Residence', default = None)
    reporting_district = request.args.get('Reporting District', default = None)
    date_received = request.args.get('Date Received (National Level)', default = None)
    patient_name = request.args.get('Patient Name', default = None)
    date_of_birth = request.args.get('Date of Birth', default = None)
    sex = request.args.get("Sex", default = None)
    town = request.args.get("Town/Ciity", default = None)
    reporting_health_facility = request.args.get("Reporting Health Facility", default = None)
    

    
    filtered_data = db_helper.filter_data(country_code, province_of_residence, reporting_district, date_received, patient_name, date_of_birth, sex, town, reporting_health_facility)
    
        
    # print("data filtered")
    # print(filtered_data)
    return jsonify(filtered_data)


@app.route("/export_filtered_data", methods=['GET'])
def export_filtered_data():
    country_code = request.args.get('country_code', default = None)
    province_of_residence = request.args.get('Province of Residence', default = None)
    reporting_district = request.args.get('Reporting District', default = None)
    date_received = request.args.get('Date Received (National Level)', default = None)
    patient_name = request.args.get('Patient Name', default = None)
    date_of_birth = request.args.get('Date of Birth', default = None)
    sex = request.args.get("Sex", default = None)
    town = request.args.get("Town/Ciity", default = None)
    reporting_health_facility = request.args.get("Reporting Health Facility", default = None)
    
    
    filtered_data = db_helper.filter_data(country_code, province_of_residence, reporting_district, date_received, patient_name, date_of_birth, sex, town, reporting_health_facility)

    
    #convert the filtered data to a dataframe
    filtered_data = pd.DataFrame(filtered_data)
    
    #convert the filtered data to a csv file
    output = io.StringIO()
    filtered_data.to_csv(output, index=False)
    output.seek(0)
    
    return Response(
        output.getvalue(),
        mimetype="text/csv",
        headers={"Content-Disposition": "attachment;filename=data.csv"}
    )


@app.route("/submit_form", methods=['POST'])
def submit_form():
    # print("submitting form")
    country_code = request.form['CountryCode'].upper()
    province_of_residence = request.form['ProvinceOfResidence'].upper()
    reporting_district = request.form['ReportingDistrict'].upper()
    date_received_natlevel = request.form['DateReceivedNatlevel']
    patients_name = request.form['PatientsName'].upper()
    date_of_birth = request.form['DateOfBirth']
    sex = request.form['Sex'].upper()
    towncity = request.form['Towncity'].upper()
    measles_igm = request.form['MeaslesIgm']
    rubella_igm = request.form['RubellaIgm']
    date_of_last_vaccination = request.form['DateOfLastVaccination']
    number_of_doses = request.form['NumberOfVaccineDoses']
    reporting_healthfacility = request.form['ReportingHealthfacility'].upper()
    
    message = db_helper.submit_form(country_code, province_of_residence, reporting_district, date_received_natlevel, patients_name, date_of_birth, sex, towncity, measles_igm, rubella_igm, reporting_healthfacility, date_of_last_vaccination, number_of_doses)
    
    if message == "Data submitted successfully!":
        return jsonify({"message": message}), 200
    else: 
        return jsonify({"message": "Failed to submit data. Please try again."}), 400



    
    
