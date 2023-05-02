
# Introduction

This repository is for the Burkino Faso Measles project. The project is a collaboration between the [Burkina Faso Ministry of Health](https://www.sante.gov.bf/accueil) and the [University of Illinois at Urbana-Champaign's Center for Health Informatics](https://chi.healtheng.illinois.edu/). This project includes cleaning and analyzing data from the Burkina Faso Ministry of Health's measles database. The database contains all measles cases reported in the country  and immunization coverages. The project also includes creating a new database in a different but future-proof and secure platform.

# Data

The data is provided by the Burkina Faso Ministry of Health. The data is stored in a Microsoft Access database. The data is not publicly available. The data is available to the project team members.


# Setup

Follow the instructions below to setup the project.

## Database

The database is a MySQL database. To setup a sample database with sample data, run the `resolved_master.sql` file in a database design tool such as [MySQL Workbench](https://www.mysql.com/products/workbench/). The file is located in the `root` directory. The file contains the database schema and sample data.

## Requirements

The project requires Python 3.9.16 or higher. The project also requires the following Python packages:
``` {bash}
pip install -r requirements.txt
```

## Configuration

The configuration file is an `app.yaml` file in the root directory. The file is not included in the repository. You must create the file yourself. The gitignore file is configured to ignore the file. The file should contain the following:

```yaml
env_variables: 
    user: YOUR_DATABASE_USERNAME
    host: YOUR_DATABASE_HOST
    database: YOUR_DATABASE_NAME
    password: YOUR_DATABASE_PASSWORD
```

Replace YOUR_DATABASE_USERNAME, YOUR_DATABASE_HOST, YOUR_DATABASE_NAME, and YOUR_DATABASE_PASSWORD with the appropriate values for your setup

## Running
To run the server, execute the following command in your terminal:


```bash
python3 -m flask run
```

# Features

The project has the following features:

## Importing Data

When importing data into the database, the data is first validated. For the data to successfully import, the data must pass the following validations:

* The data must have the correct number of columns
* The data must have the correct column names
* The data must have a value in the column `IDNumber`
* The data must be a csv file

If the data passes the validations, the data is imported into the database. If the data fails the validations, the data is not imported into the database.

## Exporting Data

While exporting data, you could export it in two ways.

### Exporting Filtered Data

Using the filters above the export data button you can filter the data.

### Export All Data

Using the export all data button you can export all the data in the database.

## Adding Data

You can add data to the database by filling out the form and clicking the submit button. All the form fields are required. If you do not fill out all the fields, you will get an error message. If you fill out all the fields, the data will be added to the database.

## French Translation

To translate the website to French, click on the toggle. When the toggle is on the left, the website is in English. When the toggle is on the right, the website is in French.

# Bug Reports

To report a bug, please create an issue in the repository. Please include the following in the issue: 

* Steps to reproduce the bug
* Expected behavior
* Actual behavior
* Screenshots (if applicable)
# Contributing

To gain access to the repository, please contact the Dr. Ian Brooks at his email address: ianb@illinois.edu.

This project was developed by the following people:

* [Jai Rajpal](https://github.com/jvr0909)
* [Aisaiah Pellecer](email:aisaiah2@illinois.edu)
* [Donlapun Wongkarnta](email:dw16@illinois.edu)

This project was developed under the supervision of:


* [Dr. Ian Brooks](email:ianb@illinois.edu)
* [Dr. Thierry Guigma](email:tguigma@illinois.edu)
