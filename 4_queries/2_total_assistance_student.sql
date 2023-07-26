-- Get the total number of assistance_requests for a student.
-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.

-- assistance_requests, students, 

SELECT COUNT(assistance_requests.id) AS total_assitances, name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name