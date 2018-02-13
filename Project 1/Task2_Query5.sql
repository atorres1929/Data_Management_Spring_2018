ALTER TABLE Courses 
ADD CONSTRAINT instructor_delete_restrict 
FOREIGN KEY (instructor) 
REFERENCES faculties 
ON DELETE RESTRICT;