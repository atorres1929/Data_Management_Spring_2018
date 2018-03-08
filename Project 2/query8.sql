SELECT Faculties.Name 
FROM Faculties
INNER JOIN Courses 
ON Courses.instructor = Faculties.faculty_id
WHERE Courses.level = 'grad' 
AND Faculties.date_of_birth >= '01/01/1980';
