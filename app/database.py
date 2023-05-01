from app import db
import pandas as pd
from datetime import datetime


"""
Table structure in database:

`codeFinalClassification`, 
`codeInoutpatient`, 
`codeMeaslesIgm`, 
`codeOutcome`, 
`codeRubellaIgm`, 
`codeSex`, 
`codeSpecimenCondition`, 
`codeSpecimenSource`, 
`codeUrbanrural`, 
`district`, 
`genericcasebased`, 
`generic_interests`, 
`promt_csps`, 
`temp`

"""

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

