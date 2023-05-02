from flask import Flask
from yaml import load, Loader
import os
import sqlalchemy

def init_connection_engine():
    #get info from yaml file
    if os.environ.get('GAE_ENV') != 'standard':
        try:
            variables = load(open("app.yaml"), Loader=Loader)
        except OSError as e:
            # print("Make sure you have the app.yaml file setup")
            os.exit()
            
    env_variables = variables['env_variables']
    for var in env_variables:
        os.environ[var] = env_variables[var]
    
    
    pool = sqlalchemy.create_engine(
        sqlalchemy.engine.url.URL(
            drivername="mysql+pymysql",
            username=os.environ.get("user"),
            password=os.environ.get("password"),
            database=os.environ.get("database"),
            host = os.environ.get("host")
        )
    )
    
    # print("connected to database!!!")
    return pool


app = Flask(__name__)
db = init_connection_engine()

from app import routes