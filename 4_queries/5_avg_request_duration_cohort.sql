-- Get the average duration of assistance requests for each cohort.
-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

-- assistance_requests, cohorts, students, \

SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time 