-- left join
--if post has no author then it will be null
SELECT p.id,p.title ,p.content ,users.name as author ,users.email
 FROM posts as p
  LEFT JOIN users on p.user_id = users.id


-- behaviour like right join
  SELECT *
 FROM users
  LEFT JOIN posts as p on p.user_id = users.id

