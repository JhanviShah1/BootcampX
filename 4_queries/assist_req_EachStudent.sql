SELECT students.name , COUNT(assistance_requests.*) as total_assistances
FROM students
JOIN assistance_requests
ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;

-- \i 4_queries/assist_req_EachStudent.sql