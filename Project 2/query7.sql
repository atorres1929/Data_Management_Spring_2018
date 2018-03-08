SELECT Students.name, Enroll.grade
FROM Students
INNER JOIN Enroll
ON Enroll.student_id=Students.student_id
INNER JOIN Courses
ON COURSES.course_id = Enroll.course_id
WHERE Courses.description = 'Fundamentals of Computer Sys.'
ORDER BY Enroll.Grade; 
