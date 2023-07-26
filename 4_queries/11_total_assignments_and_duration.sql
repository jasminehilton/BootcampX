-- Get each day with the total number of assignments and the total duration of the assignments.
-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.
-- assignments per day

SELECT assignments.day AS day, COUNT(assignments.id) AS number_of_assignments, SUM(assignments.duration) AS duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day






