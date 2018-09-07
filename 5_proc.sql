
delimiter $
CREATE PROCEDURE Get_TA(instructor_ID VARCHAR(9))
BEGIN	
	SELECT s.Student_Name
	FROM COURSE as c, INSTRUCTOR as i, TEACHING_ASSISTANT as t, STUDENT as s
	WHERE s.SSN = t.SSN && c.TA_ID = t.SSN && i.Instructor_ID = instructor_ID && c.Instructor_ID_Ref = i.Instructor_ID;
END;
$
delimiter;

delimiter $
CREATE PROCEDURE GetStudentCourse(CourseNo INT(3))
BEGIN	
	SELECT s.SSN, s.Student_Name, s.Address, s.Email_ID
	FROM STUDENT as s, ENROLLED as e, COURSE as c
	WHERE CourseNo = c.CourseNo && s.SSN = e.SSN;
END;
$
delimiter;
