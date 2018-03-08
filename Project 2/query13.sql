CREATE TABLE Title(
  Name text PRIMARY KEY,
  Abbreviation text
);

INSERT INTO Title VALUES
('Instructor', 'Instr'),
('Associate Professor', 'AP'),
('Professor', 'Prof');

UPDATE Faculties
SET level = Title.Abbreviation
FROM Title
WHERE Faculties.level = Title.Name;

UPDATE Faculties
SET level = 'Instr'
WHERE level = 'Instructor';

UPDATE Faculties
SET level = 'AP'
WHERE level = 'Associate Professor';

UPDATE Faculties
SET level = 'Prof'
WHERE level = 'Professor';