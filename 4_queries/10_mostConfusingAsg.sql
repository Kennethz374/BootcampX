SELECT 
assignments.id AS id,
assignments.name AS name,
assignments.day AS day,
assignments.chapter AS chapter,
COUNT(assignment_id) AS total_requests

FROM assignments 
JOIN assistance_requests
ON assignments.id = assignment_id

GROUP BY assignments.id, day, assignments.name, chapter
ORDER BY total_requests DESC;