Create database sf_incident;
use sf_incident;
CREATE TABLE incidents (
  incident_datetime DATETIME,
  incident_date DATE,
  incident_time TIME,
  incident_year YEAR,
  incident_day_of_week VARCHAR(15),
  report_datetime DATETIME,
  row_id VARCHAR(50),
  incident_id VARCHAR(50),
  incident_number VARCHAR(50),
  report_type_code VARCHAR(50),
  report_type_description VARCHAR(100),
  filed_online BOOLEAN,
  incident_code VARCHAR(50),
  incident_category VARCHAR(50),
  incident_subcategory VARCHAR(50),
  incident_description VARCHAR(255),
  resolution VARCHAR(50),
  intersection VARCHAR(255),
  police_district VARCHAR(50),
  analysis_neighborhood VARCHAR(50),
  latitude FLOAT,
  longitude FLOAT
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/SF_Incident_Report_2018-2023.csv' IGNORE 
INTO TABLE incidents
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

select * from incidents;

DELETE FROM incidents
LIMIT 1;