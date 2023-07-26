-- Get important data about each assistance request.
-- Select the teacher's name, student's name, assignment's name if it has one, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.
-- students, assistance_requests, teachers, assignments


SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration 

