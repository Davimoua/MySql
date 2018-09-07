CREATE VIEW TA_COURSE(Student_Name, Student_Email, Course_Name_Assisting) As
	SELECT s.Student_Name, s.Email_ID, c.Course_Name
	FROM TEACHING_ASSISTANT as t, COURSE as c, STUDENT as s
	WHERE t.SSN = c.TA_ID && t.SSN = s.SSN;

CREATE VIEW Student_Grade_A(Student_SSN, Num_Of_A) As
	SELECT s.SSN, COUNT(e.Grade) as num_of_A
	FROM STUDENT as s, ENROLLED as e, COURSE as c
	WHERE e.CourseNo = c.CourseNo && e.SSN = s.SSN && e.Grade = 'A'
	HAVING num_Of_A > 1;