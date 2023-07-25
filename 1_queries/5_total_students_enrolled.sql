-- Get all of the students currently enrolled.
-- Get their name, id, and cohort_id.
-- Order them by cohort_id.
-- A student's end date will be NULL when they are currently enrolled in Bootcamp.


SELECT name, id, cohort_id 
FROM students 
WHERE end_date IS NULL 
ORDER BY cohort_id
