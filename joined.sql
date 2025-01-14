-- post with user combine join two table
SELECT * FROM posts JOIN users on posts.user_id = users.id;

-- with selected field
SELECT p.id, p.title, p.content, users.name as author, users.email
FROM posts as p
    JOIN users on p.user_id = users.id;

-- alternative approach with USING method
SELECT posts.id, posts.title, posts.content, users.name AS author, users.email
FROM posts
    JOIN users USING (id);