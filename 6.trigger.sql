delimiter $
CREATE TRIGGER  Inc_enrollment_number
AFTER INSERT ON ENROLLED 
FOR EACH ROW
BEGIN
	INSERT into ENROLLED (SSN, CourseNo, Grade) values (NEW.SSN, NEW.CourseNo, NEW.Grade);
	UPDATE COURSE SET No_of_Students = No_of_Students + 1;
END;
$
delimiter; 


delimiter $
CREATE TRIGGER Dec_enrollment_number
AFTER DELETE ON COURSE
FOR EACH ROW
BEGIN
	DELETE FROM ENROLLED
	WHERE OLD.CourseNo = CourseNo;
	UPDATE COURSE SET No_Of_Students = No_of_Students - 1;
END;
$
delimiter;
