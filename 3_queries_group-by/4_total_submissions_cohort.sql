-- Get the total number of assignment submissions for each cohort.
-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT cohorts.name AS cohort, COUNT(assignment_id) AS total_submissions
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_id) DESC