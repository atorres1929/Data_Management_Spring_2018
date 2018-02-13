UPDATE Enroll SET grade = 'C'
WHERE Enroll.student_id = 
(SELECT student_id FROM Students WHERE Students.name = 'Henrie Cage') 
AND Enroll.course_id =
(SELECT course_id FROM Courses WHERE Courses.description = 'Computer Programming I');
