SELECT Students.Name 
FROM Students 
INNER JOIN Enroll
ON Enroll.student_id = Students.student_id
INNER JOIN Courses 
ON Courses.course_id = Enroll.course_id
WHERE Courses.level = 'ugrad' 
AND Enroll.Grade = 'B';