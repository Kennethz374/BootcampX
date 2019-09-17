SELECT COUNT(student_id) AS total_assistances, students.name 
FROM students 
JOIN assistance_requests
ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY student_id, students.name;