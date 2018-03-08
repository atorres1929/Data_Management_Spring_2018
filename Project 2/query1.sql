ALTER TABLE Courses ADD COLUMN semester text;

UPDATE Courses
SET Semester = 'Spring 2018'
WHERE Description = 'Fundamentals of Computer Sys.' 
OR Description = 'Software Engineering I'
OR Description = 'Computer Programming I';

UPDATE Courses
SET Semester = 'Fall 2017'
WHERE Description = 'Introduction to Algorithms' 
OR Description = 'Operating Systems';

UPDATE Courses
SET Semester = 'Spring 2017'
WHERE Description = 'Software Design' 
OR Description= 'Advanced Database';
