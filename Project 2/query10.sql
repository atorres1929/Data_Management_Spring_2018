SELECT Students.Name, MAX(Enroll.Grade)
FROM Students
INNER JOIN Enroll
ON Enroll.student_id = Students.student_id
GROUP BY Students.name;
