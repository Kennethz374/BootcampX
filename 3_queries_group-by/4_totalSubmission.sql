SELECT cohorts.name, COUNT(assignment_id) as total_submissions
FROM cohorts JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_id) DESC;
