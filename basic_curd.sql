-- Active: 1735910509350@@127.0.0.1@5432
-- create database
CREATE DATABASE new_db

-- create table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- add data on table

INSERT INTO students (name ,age,address , created_at)
VALUES 
    ('JOHN' ,20 ,'123 Main St, Cityville' ,DEFAULT),
    ('Jane Smith', 22, '456 Elm St, Townsville', DEFAULT),
    ('Alice Johnson', 19, '789 Oak St, Villagetown', DEFAULT);

-- retrieve all data
SELECT * from students;

-- adding new field year base on created_at
SELECT *, EXTRACT(YEAR from created_at) as YEAR FROM students;

-- replace created_at to year with year base

SELECT id, name, age, address , EXTRACT(YEAR from created_at) as YEAR FROM students;