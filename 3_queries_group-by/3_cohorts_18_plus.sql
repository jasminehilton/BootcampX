-- Get all cohorts with 18 or more students.
-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.



SELECT cohorts.name, COUNT(cohorts.id) AS student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
HAVING COUNT(cohorts.id) >= 18
ORDER BY COUNT(cohorts.id)
 