INSERT INTO posts (title, content, user_id)
VALUES
    ('Post Title 1', 'Content for post 1', 1),
    ('Post Title 2', 'Content for post 2', 2),
    ('Post Title 3', 'Content for post 3', 1),
    ('Post Title 4', 'Content for post 4', 3),
    ('Post Title 5', 'Content for post 5', 2),
    ('Post Title 6', 'Content for post 6', 1),
    ('Post Title 7', 'Content for post 7', 3),
    ('Post Title 8', 'Content for post 8', 2),
    ('Post Title 9', 'Content for post 9', 1),
    ('Post Title 10', 'Content for post 10', 3);





-- insert users
INSERT INTO users (name, email, age)
VALUES
    ('Alice Johnson', 'alice.johnson@example.com', 25),
    ('Bob Smith', 'bob.smith@example.com', 30),
    ('Charlie Brown', 'charlie.brown@example.com', 22),
    ('Diana Prince', 'diana.prince@example.com', 28),
    ('Evan Peters', 'evan.peters@example.com', 35),
    ('Fiona Gallagher', 'fiona.gallagher@example.com', 27),
    ('George Clooney', 'george.clooney@example.com', 40),
    ('Hannah Baker', 'hannah.baker@example.com', 24),
    ('Ian Somerhalder', 'ian.somerhalder@example.com', 38),
    ('Jane Austen', 'jane.austen@example.com', 32);



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



INSERT INTO posts (title, content, user_id)
VALUES
    ('Post Title 1', 'Content for post 1', NULL),


SELECT * from users

