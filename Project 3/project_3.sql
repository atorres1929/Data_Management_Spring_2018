CREATE OR REPLACE FUNCTION give_grade(text) RETURNS VOID AS $$
DECLARE
  	school_name ALIAS FOR $1; 	-- Saves parameter as variable
  	student_total INTEGER;		-- The number of students in the school
	letter_grades varchar[] := '{"A", "A-", "B+", "B", "C", "D"}'; -- The possible grades the students can receive
	probabilities FLOAT[];		-- The probabilities of students receiving each grade
  	studentNumber INTEGER;		-- The number of students that receive a particular grade
	_grade VARCHAR;				-- The grade a student will receieve derived from letter_grades
	prob FLOAT;
BEGIN
	-- Gets the total amount of students in the school
	SELECT COUNT (*) AS student_total
	INTO student_total
	FROM simulated_records
	GROUP BY school;
	
	-- Gets the probabilities of each student getting a grade
	SELECT probs
	INTO probabilities
	FROM school_probs
	WHERE school = school_name;
	
	-- Grab each probability and save it into prob
	FOREACH prob IN ARRAY probabilities
	LOOP
		studentNumber := ROUND(student_total * prob);	-- Get the total number of students and multiply it by the probability of getting a possible grade
		FOREACH _grade IN ARRAY letter_grades 	-- Get each letter grade and save it into _grade
		LOOP
			WITH grades_to_change as (			-- Make a temporary table that has random records FROM the simulated_records table
				SELECT record_id				-- that do not yet have a grade AND match the current school
				FROM simulated_records
				WHERE grade = '-'
				AND school = school_name
				ORDER BY random()
				LIMIT studentNumber				-- Make sure only a certain number of records are randomly pulled (Matching however many student's grades should be changed)
			)
			UPDATE simulated_records			-- Update the simulated_records table to have grades matching the percentages given
			SET grade = _grade
			FROM grades_to_change
			WHERE simulated_records.record_id = grades_to_change.record_id;
		END LOOP;
	END LOOP;
END;
$$ LANGUAGE plpgsql;

-- THIS QUERY MUST BE RUN IN ORDER FOR ALL ROWS TO BE UPDATED

SELECT give_grade(SCHOOL) FROM school_probs;