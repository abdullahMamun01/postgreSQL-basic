-- Active: 1735910509350@@127.0.0.1@5432
-- create database
CREATE DATABASE new_db

-- create table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    adulthood_status VARCHAR(50) DEFAULT 'adults'
);

-- add data on table
INSERT INTO students (name ,age,address , created_at)
VALUES 
    ('Bob', 25, '11 Wall St, CityCenter', DEFAULT),
    ('Carol', 24, '23 Main St, Suburbiaville', DEFAULT),
    ('David', 22, '456 Elm St, Townsville', DEFAULT),
    ('Eve', 27, '789 Oak St, Villagetown', DEFAULT),
    ('Frank', 29, '123 Main St, Cityville', DEFAULT),
    ('George', 15, '456 Elm St, Townsville', DEFAULT),
    ('Helen', 17, '789 Oak St, Villagetown', DEFAULT),    
    ('Irene', 18, '890 Pine St, Villagetown', DEFAULT),
    ('Jack', 19, '123 Maple St, Townsville', DEFAULT),
    ('Kathy', 13, '456 Birch St, Cityville', DEFAULT)


-- retrieve all data
SELECT * from students;

-- adding new field year base on created_at
SELECT *, EXTRACT(YEAR from created_at) as YEAR FROM students;

-- replace created_at to year with year base
SELECT id, name, age, address , EXTRACT(YEAR from created_at) as YEAR FROM students;

-- update row
UPDATE students
 SET adulthood_status = 'not adults'
 WHERE age = 18

-- delete row with condition match
DELETE from students 
    WHERE age < 30

-- delete table
DROP TABLE students;