INSERT INTO STUDENT VALUES ('123456789', 'John Smith', '123 Fake Address', 'johnsmith@gmail.com');
INSERT INTO STUDENT VALUES ('987654321', 'Serah Connor', '321 Sky Net', 'serahconnor@gmail.com');
INSERT INTO STUDENT VALUES ('012345678', 'Emily Xiong', '687 West Donna Drive', 'emilyxiong@gmail.com');

INSERT INTO TEACHING_ASSISTANT VALUES ('123456789', '200.00');
INSERT INTO TEACHING_ASSISTANT VALUES ('012345678', '100.00');

INSERT INTO INSTRUCTOR VALUES ('Computer Science Teacher', '111111111', 'Emily');
INSERT INTO INSTRUCTOR VALUES ('Art Teacher', '222222222', 'Rean');

INSERT INTO COURSE VALUES (1, 'Database', '3', '111111111', '123456789');
INSERT INTO COURSE VALUES (2, 'Programming Languages', '2', '222222222',  '012345678');

INSERT INTO ENROLLED VALUES('C', '123456789', 1);
INSERT INTO ENROLLED VALUES('A', '987654321', 1);
INSERT INTO ENROLLED VALUES('A', '012345678', 2);

INSERT INTO ENROLLED VALUES('A', '987654321', 2);
INSERT INTO ENROLLED VALUES('A', '012345678', 1);

INSERT INTO WEB_BASED_COURSE VALUES ('www.database.com', 1);

INSERT INTO CLASS_ROOM VALUES (10, 'Art', '1');

INSERT INTO NON_WEB_BASED_COURSE VALUES (2, 10, 'Art', '10:00 Am');



