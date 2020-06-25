CREATE DATABASE crudapi;

USE crudapi;

CREATE TABLE tbl_employee
(
	id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name VARCHAR(255),
    gender VARCHAR(255),
    department VARCHAR(255),
    dob DATE
);


CREATE TABLE covid19user
(
	id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	age INT,
	zipcode INT,
	feet INT,
	inches INT,
	weight INT,
	ismale FLOAT,
	isfemale FLOAT,
	neversmoked FLOAT,
	exsmoker FLOAT,
	iscurrentlysmoking FLOAT,
	nonhispanic FLOAT,	
	isblack FLOAT,
	ishispanic FLOAT,
	ishypertensive FLOAT,
	nothypertensive FLOAT,
	hasrespiratorydisease FLOAT,
	hasasthma FLOAT,
	hasrecentocs FLOAT,
	hasnorecentocs FLOAT,
	haschronicheartdisease FLOAT,
	hascontrolled FLOAT,
	hasuncontrolled FLOAT,	
	hashematological FLOAT,
	hematologicaldiagnosis INT,
	nonhematologicaldiagnosis INT,
	hasstroke FLOAT,
	haskidney FLOAT,
	hasarthritis FLOAT,
	riskscore FLOAT,
	bmivariable FLOAT,
	agevariable FLOAT,
	imdvariable FLOAT
);