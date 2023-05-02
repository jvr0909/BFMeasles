from app import db
import pandas as pd
from datetime import datetime


def extract_data():
    #get info from yaml file
    conn = db.connect()    
    query = "SELECT * FROM generic_interests"

    #run query
    df = pd.read_sql(query, conn)
    print("query executed")
    
    conn.close()
    return df
    

def input_data(df):
    conn = db.connect()
    
    #insert data into database
    df.to_sql('generic_interests', conn, if_exists='append', index=True)
    
    conn.close()
    
def filter_data(country_code, province_of_residence, reporting_district, date_received, patient_name, date_of_birth, sex, town, reporting_health_facility):
    conn = db.connect()
    
    # Read the data from the 'generic_interests' table into a pandas DataFrame
    df = pd.read_sql_table('generic_interests', conn)
    df['DateReceivedNatlevel'] = pd.to_datetime(df['DateReceivedNatlevel'], format="%m/%d/%y %H:%M:%S").dt.date
    df['DateOfBirth'] = pd.to_datetime(df['DateReceivedNatlevel'], format="%m/%d/%y %H:%M:%S").dt.date


    
    
    # Apply the filters to the DataFrame
    if country_code:
        country_code = country_code.upper()
        df = df[df['CountryCode'] == country_code]

        

    if province_of_residence:
        #capitalize all of the letters in the province_of_residence
        province_of_residence = province_of_residence.upper()
        df = df[df['ProvinceOfResidence'] == province_of_residence]
        
    if reporting_district:
        reporting_district = reporting_district.upper()
        df = df[df['ReportingDistrict'] == reporting_district]
        
    if date_received:
        date_received_dt = pd.to_datetime(date_received, format="%Y-%m-%d").date()
        df = df[df['DateReceivedNatlevel'] == date_received_dt]
        
    if patient_name:
        patient_name = patient_name.upper()
        df = df[df['NamesOfPatient'].str.contains(patient_name)]
        
    if date_of_birth:
        date_received_dt = pd.to_datetime(date_received, format="%Y-%m-%d").date()
        df = df[df['DateOfBirth'] == date_of_birth]
        
    if sex:
        df = df[df['Sex'] == sex]
    if town:
        town = town.upper()
        df = df[df['Towncity'] == town]
    if reporting_health_facility:
        reporting_health_facility = reporting_health_facility.upper()
        df = df[df['ReportingHealthfacility'] == reporting_health_facility]
        
    

    # Convert the filtered DataFrame to a list of dictionaries
    filtered_data = df.head(10).to_dict(orient='records')
    for item in filtered_data:
        item['DateReceivedNatlevel'] = item['DateReceivedNatlevel'].strftime('%m/%d/%Y')
        item["DateOfBirth"] = item["DateOfBirth"].strftime('%m/%d/%Y')



    conn.close()

    return filtered_data


def get_last_index():
    conn = db.connect()
    query = "SELECT MAX(`Index`) FROM generic_interests"
    df = pd.read_sql(query, conn)
    conn.close()
    return df['MAX(`Index`)'][0]

def generate_id(country_code, province_of_residence, reporting_district, date_received_natlevel, last_index):
    #generate id
    country_code = country_code.upper()
    province_of_residence = province_of_residence.upper()
    reporting_district = reporting_district.upper()
    # get last 2 digits of year
    print(date_received_natlevel)
    year = date_received_natlevel.split('-')[0]

    last_two_digits = year[-2:]
    print("last two digits: " + last_two_digits)
    last_index = last_index + 1
    
    #get first 3 letters of province_of_residence
    province_of_residence = province_of_residence[:3]
    
    #get first 3 letters of reporting_district
    reporting_district = reporting_district[:3]
    
    #CountryCode-ProvinceOfResidence-ReportingDistrict-Year-Index
    id = country_code + "-" + province_of_residence + "-" + reporting_district + "-" + last_two_digits + "-" + str(last_index)
    
    return id
    


def calculate_age(date_of_birth):
    # Convert the date string to a datetime.date object
    date_of_birth = datetime.strptime(date_of_birth, "%Y-%m-%d").date()
    
    today = datetime.today()
    age = today.year - date_of_birth.year - ((today.month, today.day) < (date_of_birth.month, date_of_birth.day))

    return age
    
    
    
    
    
def submit_form(country_code, province_of_residence, reporting_district, date_received_natlevel, patients_name, date_of_birth, sex, towncity, measles_igm, rubella_igm, reporting_healthfacility, date_of_last_vaccination, number_of_doses):
    last_index = get_last_index()
    print(last_index)
    id = generate_id(country_code, province_of_residence, reporting_district, date_received_natlevel, last_index)
        
    
    #calculate age
    age = calculate_age(date_of_birth)
    
    date_received_natlevel = datetime.strptime(date_received_natlevel, "%Y-%m-%d").strftime('%m/%d/%y %H:%M:%S')
    
    date_of_last_vaccination = datetime.strptime(date_of_last_vaccination, "%Y-%m-%d").strftime('%m/%d/%y %H:%M:%S')
    
    date_of_birth = datetime.strptime(date_of_birth, "%Y-%m-%d").strftime('%m/%d/%y %H:%M:%S')
    
    insertions = {
        "Index": last_index + 1,
        "IDNumber": id,
        "CountryCode": country_code,
        "ProvinceOfResidence": province_of_residence,
        "ReportingDistrict": reporting_district,
        "DateReceivedNatlevel": date_received_natlevel,
        "NamesOfPatient": patients_name,
        "DateOfBirth": date_of_birth,
        "Age": age,
        "Sex": sex,
        "Towncity": towncity,
        "MeaslesIgm": measles_igm,
        "RubellaIgm": rubella_igm,
        "ReportingHealthfacility": reporting_healthfacility,
        "DateOfLastVaccination": date_of_last_vaccination,
        "NumberOfVaccineDoses": number_of_doses
    }
    
    #convert to dataframe
    df = pd.DataFrame(insertions, index=[0])
    
    #connect to database
    conn = db.connect()
    
    #insert into database
    df.to_sql('generic_interests', conn, if_exists='append', index=False)
    
    
    #close the connection
    conn.close()
    
    return "Data submitted successfully!"    
    