SELECT assignments.day,count(assignments.id) as 
number_of_assignments, SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day ;


-- \i 4_queries/totAssg_andDuration.sql