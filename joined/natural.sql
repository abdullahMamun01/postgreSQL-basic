CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2),
    customer_id INTEGER
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    age INTEGER,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO orders (order_date, total_amount, customer_id)
VALUES
    (CURRENT_TIMESTAMP, 150.00, 1),
    (CURRENT_TIMESTAMP, 250.00, 2);

INSERT INTO customers (name, email, age)
VALUES
    ('Alice Johnson', 'alice.johnson@example.com', 25),
    ('Bob Smith', 'bob.smith@example.com', 30);
 
-- if both table has same column name then we can use natural join
SELECT *
FROM orders
NATURAL JOIN customers;

drop table customers;
drop table orders;

