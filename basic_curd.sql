-- Active: 1735910509350@@127.0.0.1@5432
-- create database
CREATE DATABASE new_db

-- create table

-- add data on table


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