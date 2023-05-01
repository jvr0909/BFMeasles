# BFMeasles


## Introduction

This repository is for the Burkino Faso Measles project. The project is a collaboration between the [Burkina Faso Ministry of Health](https://www.sante.gov.bf/accueil) and the [University of Illinois at Urbana-Champaign's Center for Health Informatics](https://chi.healtheng.illinois.edu/). This project includes cleaning and analyzing data from the Burkina Faso Ministry of Health's measles database. The database contains all measles cases reported in the country  and immunization coverages. The project also includes creating a new database in a different but future-proof and secure platform.

## Data

The data is provided by the Burkina Faso Ministry of Health. The data is stored in a Microsoft Access database. The data is not publicly available. The data is available to the project team members.


## Setup

### Requirements

The project requires Python 3.6 or higher. The project also requires the following Python packages:
``` {bash}
pip install -r requirements.txt
```

### Configuration

The configuration file is an `app.yaml` file in the root directory. The file is not included in the repository. The file should contain the following:

```yaml
env_variables: 
    user: YOUR_DATABASE_USERNAME
    host: YOUR_DATABASE_HOST
    database: YOUR_DATABASE_NAME
    password: YOUR_DATABASE_PASSWORD
```

Replace YOUR_DATABASE_USERNAME, YOUR_DATABASE_HOST, YOUR_DATABASE_NAME, and YOUR_DATABASE_PASSWORD with the appropriate values for your setup

### Running
To run the server, execute the following command in your terminal:


```bash
python3 -m flask run
```

## Contributing

To gain access to the repository, please contact the Dr. Ian Brooks at his email address: ianb@illinois.edu.



