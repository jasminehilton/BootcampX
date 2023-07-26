-- Get the cohort with the longest average duration of assistance requests.
-- The same requirements as the previous query, but only return the single row with the longest average.

-- cohort, assistance_requests, students, 


SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1