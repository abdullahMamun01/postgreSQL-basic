-- counting similar age
SELECT age , count(*) from students
    GROUP BY age;
    
-- count how many adults and how many teenage or child
SELECT
    
        WHEN age >= 18 
        ELSE 'Not Adult'
    END AS status,
    COUNT(*) AS count
FROM students
GROUP BY status;