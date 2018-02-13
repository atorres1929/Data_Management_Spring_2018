CREATE TABLE Students
(
    student_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    date_of_birth date,
    address TEXT,
    email TEXT UNIQUE,
    level TEXT NOT NULL
);

CREATE TABLE Faculties
(
    faculty_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    date_of_birth date,
    address TEXT,
    email TEXT UNIQUE,
    level TEXT NOT NULL
);

CREATE TABLE Courses
(
    course_id SERIAL PRIMARY KEY,
    description TEXT NOT NULL,
    level TEXT NOT NULL,
    instructor integer REFERENCES Faculties (faculty_id)
);

CREATE TABLE Enroll
(
    student_id INTEGER REFERENCES Students (student_id),
    course_id INTEGER REFERENCES Courses (course_id), 
    grade TEXT,
    PRIMARY KEY (student_id, course_id)
);