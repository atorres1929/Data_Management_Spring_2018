SELECT Name, AGE(current_date, date_of_birth)
FROM Students
ORDER BY AGE(current_date, date_of_birth);