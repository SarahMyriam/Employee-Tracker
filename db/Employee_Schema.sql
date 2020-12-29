-- Drops the favorite_db if it exists currently --
DROP DATABASE IF EXISTS EmployeeTracker_db;
-- Creates the "favorite_db" database --
CREATE DATABASE EmployeeTracker_db ;
USE EmployeeTracker_db;

-- Make it so all of the following code will affect favorite_db --

-- Creates the table "favorite_foods" within favorite_db --
CREATE TABLE department (

id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) 

);

CREATE TABLE `role`(

id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30),
salary  DECIMAL,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES department(id)

);

CREATE TABLE employee(
    
id  INT AUTO_INCREMENT PRIMARY KEY,
first_name  VARCHAR(30),
last_name VARCHAR(30), 
role_id  INT  NOT NULL,
manager_id  INT, 
FOREIGN KEY (role_id) REFERENCES `role`(id),
FOREIGN KEY(manager_id) REFERENCES employee (id)

 );