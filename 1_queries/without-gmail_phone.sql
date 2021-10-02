-- \i 1_queries/without-gmail_phone.sql;
SELECT name, id, email, id ,cohort_id 
FROM students 
WHERE email NOT LIKE' %gmail.com' 
AND phone IS  NULL;
