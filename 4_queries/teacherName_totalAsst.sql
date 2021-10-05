SELECT teachers.name as teacher, cohorts.name, count(assistance_requests) as 
total_assistances
FROM teachers
JOIN assistance_requests
ON teachers.id = teacher_id
JOIN students
ON students.id = student_id
JOIN cohorts
ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;


--  \i 4_queries/teacherName_totalAsst.sql