SELECT cohorts.name AS cohort
FROM cohorts
SUM(assignment_submissions.*)as total_submissions
JOIN students ON 
students.id = student_id
JOIN cohort ON 
cohort.id = assignments_submissins.id
GROUP BY cohorts.name
ORDER BY total_submissions;