CREATE TABLE employees1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2)
);



INSERT INTO employees1 (name, department, age, salary) VALUES
('Alice', 'HR', 25, 50000.00),
('Bob', 'Engineering', 30, 80000.00),
('Charlie', 'Engineering', 28, 70000.00),
('Diana', 'Marketing', 35, 60000.00),
('Eve', 'HR', 29, 55000.00);


SELECT * FROM employees1;

SELECT * from projects;

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    budget DECIMAL(10, 2)
);

INSERT INTO projects (name, budget) VALUES
('Project Alpha', 150000.00),
('Project Beta', 200000.00),
('Project Gamma', 100000.00);



CREATE TABLE employee_projects (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees1(id),
    project_id INT REFERENCES projects(id),
    hours_worked INT
);

INSERT INTO employee_projects (employee_id, project_id, hours_worked) VALUES
(1, 1, 120),
(2, 2, 150),
(3, 2, 100),
(4, 3, 80),
(5, 1, 90);




SELECT projects.name , sum(hours_worked) from employee_projects
JOIN projects ON  projects.id = employee_projects.project_id
GROUP BY projects.name 