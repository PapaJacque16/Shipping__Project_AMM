#create schema create_shipping_AAM;
use create_shipping_AAM;

CREATE TABLE SHIPS(
	Ship_Name varchar(50) NOT NULL,
    Displacement INT NOT NULL,
    Captain_Name varchar(50) NOT NULL,
    Crew INT NOT NULL,
    Home_Port varchar(50)NOT NULL,
    Year_Built INT NOT NULL
);

Create table PORTS (
	Port_Name varchar(50)NOT NULL,
    City varchar(50) NOT NULL,
    Country varchar(50) NOT NULL
);

Create table CONTAINERS (
	container_ID INT NOT NULL,
    Height INT NOT NULL,
    Weight INT NOT NULL, 
    Length INT NOT NULL,
    ship_ID varchar(10) NOT NULL
);