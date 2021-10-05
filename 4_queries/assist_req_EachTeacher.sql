SELECT teachers.name , COUNT(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests
ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;

-- \i 4_queries/assist_req_EachTeacher.sql