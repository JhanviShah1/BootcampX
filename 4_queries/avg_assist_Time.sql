SELECT AVG(completed_at-started_at) AS average_assistance_request_duration
FROM assistance_requests;

-- \i 4_queries/avg_assist_Time.sql