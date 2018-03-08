SELECT Courses.Description, Enroll.Grade
FROM Courses
INNER JOIN Enroll
ON Enroll.course_id = Courses.course_id
INNER JOIN Students
ON Students.student_id = Enroll.student_id
WHERE Students.Name = 'Alice Wood'
ORDER BY Enroll.Grade;
