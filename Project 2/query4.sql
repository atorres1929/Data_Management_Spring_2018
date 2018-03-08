SELECT Faculties.Name
FROM Faculties
INNER JOIN Courses
ON Courses.Instructor = Faculties.faculty_id
WHERE Courses.Semester = 'Spring 2017';
