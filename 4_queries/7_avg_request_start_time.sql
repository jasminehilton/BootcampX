-- Calculate the average time it takes to start an assistance request.
-- Return just a single column here.
-- assistance_requests, 

SELECT AVG(assistance_requests.created_at - assistance_requests.started_at) AS average_wait_time
FROM assistance_requests