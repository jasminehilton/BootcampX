-- Get the total duration of all assistance requests for each cohort.
-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.

-- SELECT cohorts.name ,AVG(assistance_requests.created_at - assistance_requests.completed_at) AS total_duration
-- FROM students
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- JOIN assistance_requests ON assistance_requests.student_id = students.id
-- GROUP BY cohorts.name
-- ORDER BY total_duration

SELECT cohorts.name , SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_duration
