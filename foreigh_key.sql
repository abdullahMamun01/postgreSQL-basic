-- without default set null foregin key
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- ON DELET CASCADE for related to foreign key .if user delete then post will delete
    user_id INTEGER REFERENCES "users"(id) ON DELETE CASCADE 
);

DROP TABLE posts CASCADE;


-- with default set null for left join
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INTEGER REFERENCES "users"(id) ON DELETE CASCADE DEFAULT NULL
);