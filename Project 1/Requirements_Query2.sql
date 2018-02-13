INSERT INTO students (name, date_of_birth, address, email, level) VALUES   
('Alice Wood', 		'06/15/1993', '5637 NW 41 ST', 		'awood001@cis.fiu.edu', 'ugrad'	), 
('Henrie Cage', 	'04/24/1994', '1443 NW 7 ST', 		'hcage001@cis.fiu.edu', 'ugrad'	), 
('John Smith', 		'01/09/1995', '731 NW 87 AVE', 		'jsmit005@cis.fiu.edu', 'ugrad'	),
('Franklin Wong', 	'12/08/1995', '638 NW 104 AVE', 	'fwong001@cis.fiu.edu', 'ugrad'	),
('Jennifer King', 	'11/08/1998', '3500 W Flagler ST', 	'jking001@cis.fiu.edu', 'ugrad'	), 
('Richard Young', 	'12/05/1995', '778 SW 87 AVE', 		'ryoun001@cis.fiu.edu', 'grad'	),
('Robert Poore', 	'08/22/1996', '101 SW 8 ST', 		'rpoor001@cis.fiu.edu', 'grad'	), 
('Joyce English', 	'07/31/1999', '8421 SW 109 AVE', 	'jengl001@cis.fiu.edu', 'grad'	); 
  
 
INSERT INTO faculties (name, date_of_birth, address, email, level) VALUES 
('George Blunt', 	'08/13/1979', '11345 SW 56 ST', 	'bluns@cis.fiu.edu', 'Instructor'			),
('Thomas Taylor', 	'05/24/1988', '4467 NW 8 ST', 		'taylt@cis.fiu.edu', 'Instructor'			), 
('Daniel Evans', 	'10/07/1979', '8754 SW 134 TER',	'evand@cis.fiu.edu', 'Professor'			), 
('Ramesh Nara', 	'09/15/1982', '5631 SW 72 ST', 		'narar@cis.fiu.edu', 'Professor'			),
('Steven Garden', 	'09/18/1975', '1277 SW 87 AVE', 	'gards@cis.fiu.edu', 'Associate Professor'	), 
('William Parre', 	'11/22/1976', '1570 NE 127 AVE', 	'parrw@cis.fiu.edu', 'Associate Professor'	);
 
 
INSERT INTO Courses (description, level, instructor) VALUES
('Fundamentals of Computer Sys.', 	'ugrad', 	1),
('Software Engineering I', 			'ugrad' ,	2), 
('Computer Programming I', 			'ugrad', 	2),
('Introduction to Algorithms', 		'grad', 	4), 
('Operating Systems', 				'grad', 	5),
('Software Design', 				'grad', 	6), 
('Advanced Database', 				'grad', 	5);
 -- The foreign key value cannot be derived, and must be directly inserted
 
INSERT INTO enroll (student_id, course_id, grade) VALUES  
(1, 1, 'A'	),
(1, 2, 'B'	), 
(1, 3, 'A'	), 
(3, 1, 'F'	), 
(3, 3, 'C'	), 
(4, 3, 'NA'	), 
(5, 1, 'B'	),
(6, 6, 'C'	),
(6, 7, 'B'	),
(7, 7, 'B'	);
--The two foreign key values cannot be derived, and must be inserted