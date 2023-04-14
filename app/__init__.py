from flask import Flask
import pymysql
import yaml


def connect():
    #get info from yaml file
    with open('app.yaml') as f:
        data = yaml.safe_load(f)
    
    host = data['host']
    user = data['user']
    database = data['database']
    password = data['password']
    
    connection = pymysql.connect(host=host, user=user, db=database, password=password)
    
    return connection

app = Flask(__name__)
db = connect()

from app import routes