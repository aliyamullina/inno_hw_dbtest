DROP TABLE Department, employees, customer, contract, executor;

--CREATE DATABASE test_data;

CREATE TABLE Department (
	Id INT NOT NULL UNIQUE,
	Name VARCHAR (255)
);

CREATE TABLE Employees (
	id INT NOT NULL UNIQUE,
	department_id INT,	
	name VARCHAR (255)
);

CREATE TABLE Customer(
	Id INT NOT NULL UNIQUE,	
  	customer_name VARCHAR(255),	
  	location VARCHAR (255)	
);

CREATE TABLE Contract (
	id INT NOT NULL UNIQUE,
  	customer_id INT,
  	date DATE,
  	amount INT	
);

CREATE TABLE Executor (
	tab_no INT,
  	contract_id INT	
);