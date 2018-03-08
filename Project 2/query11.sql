SELECT COUNT(Enroll.Grade)
FROM Students
INNER JOIN Enroll
ON Enroll.student_id = Students.student_id
WHERE Students.Name='Alice Wood' 
GROUP BY Enroll.Grade;