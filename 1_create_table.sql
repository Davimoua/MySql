CREATE TABLE STUDENT (
	SSN varchar(9),
	Student_Name varchar(30),
	Address varchar(30),
	Email_ID varchar(30),
	PRIMARY KEY(SSN)
);

CREATE TABLE TEACHING_ASSISTANT (
	SSN varchar(9),
	Salary 	DECIMAL (6,2),
	FOREIGN KEY (SSN) REFERENCES STUDENT(SSN)	
);

CREATE TABLE INSTRUCTOR (
	Title varchar(30),
	Instructor_ID varchar(9),
	Instructor_Name varchar(30),
	PRIMARY KEY(Instructor_ID)
);

CREATE TABLE COURSE (
	CourseNo INT(3),
	Course_Name varchar(30),
	No_of_Students varchar(30),
	Instructor_ID_Ref varchar(9),
	TA_ID varchar(9),
	FOREIGN KEY (Instructor_ID_Ref) REFERENCES INSTRUCTOR(Instructor_ID),
	FOREIGN KEY (TA_ID) REFERENCES TEACHING_ASSISTANT(SSN),
	PRIMARY KEY(CourseNo)
);

CREATE TABLE ENROLLED (
	Grade varchar(30),
	SSN varchar(9),
	CourseNo INT(3),
	FOREIGN KEY (SSN) REFERENCES STUDENT(SSN),
	FOREIGN KEY (CourseNo) REFERENCES COURSE(CourseNo)
);
CREATE TABLE WEB_BASED_COURSE (
	URL varchar(30),
	CourseNo INT(3),
	FOREIGN KEY (CourseNo) REFERENCES COURSE(CourseNo)
);

CREATE TABLE CLASS_ROOM (
	RoomNo INT(2),
	Building varchar(30),
	Floor varchar(1),
	PRIMARY KEY (RoomNo, Building)
);

CREATE TABLE NON_WEB_BASED_COURSE (
	CourseNo INT(3),
	Room_No_Ref INT(2),
	Building_Ref varchar(30),
	Class_time varchar(30),
	FOREIGN KEY (CourseNo) REFERENCES COURSE(CourseNo),
	FOREIGN KEY (Room_No_Ref, Building_Ref) REFERENCES CLASS_ROOM(RoomNo, Building)
);

