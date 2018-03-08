SELECT Faculties.Name, COUNT(*) 
FROM Faculties, Courses
WHERE Courses.Instructor = Faculties.faculty_id
GROUP BY Faculties.name
HAVING COUNT(*) > 1;
