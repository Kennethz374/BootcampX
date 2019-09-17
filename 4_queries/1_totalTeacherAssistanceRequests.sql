SELECT COUNT(teacher_id) AS total_assistances, teachers.name
FROM assistance_requests 
JOIN teachers 
ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teacher_id, teachers.name;