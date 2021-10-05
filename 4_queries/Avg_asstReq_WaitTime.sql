SELECT AVG(started_at-created_at) as
average_wait_time 
FROM assistance_requests;

-- \i 4_queries/Avg_asstReq_WaitTime.sql