DELIMITER $$
CREATE FUNCTION Course_Instructor (course_name VARCHAR(30)) 
RETURNS VARCHAR(30)
BEGIN
	DECLARE Instructor_Name VARCHAR(30);

	SELECT i.Instructor_Name INTO Instructor_Name
	FROM INSTRUCTOR as i, COURSE as c
	WHERE c.Instructor_ID_Ref = i.Instructor_ID && course_name = c.Course_Name;

	RETURN Instructor_Name;
END $$
DELIMITER;