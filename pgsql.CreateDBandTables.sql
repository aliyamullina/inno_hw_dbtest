DROP TABLE Department, employees, customer, contract, executor;

--CREATE DATABASE test_data;

CREATE TABLE Department (
	Id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	Name VARCHAR (255)
);

CREATE TABLE Employees (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	department_id INT,	
	name VARCHAR (255)
);

CREATE TABLE Customer(
	Id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,	
  	customer_name VARCHAR(255),	
  	location VARCHAR (255)	
);

CREATE TABLE Contract (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  	customer_id INT,
  	date DATE NOT NULL,
  	amount INT	
);

CREATE TABLE Executor (
	tab_no INT,
  	contract_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY	
);