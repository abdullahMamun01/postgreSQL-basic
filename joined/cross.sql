-- cross join
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INTEGER NOT NULL REFERENCES departments(id)
);

INSERT INTO departments (name)
VALUES
    ('Sales'),
    ('Marketing');



INSERT INTO employees (name, department_id)
VALUES
    ('John', 1),
    ('Jane', 1),
    ('Bob', 2);

SELECT * FROM employees CROSS JOIN departments;
