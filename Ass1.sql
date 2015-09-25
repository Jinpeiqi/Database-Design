/* Database Systems, for assignment A */

/*Jinpeiqi 12207549 */

/*
drop table CAR cascade constraints;
drop table CLIENT cascade constraints;
drop table EXAM cascade constraints;
drop table INSPECTION cascade constraints;
drop table LESSON cascade constraints;
drop table OFFICE cascade constraints;
drop table STAFF cascade constraints;
*/


ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';


CREATE TABLE STAFF(
STA_NUM int CONSTRAINT STA_NUM_PK PRIMARY KEY,
STA_FNAME varchar2(25)CONSTRAINT NN_STA_FNAME NOT NULL,
STA_LNAME varchar2(25)CONSTRAINT NN_STA_LNAME NOT NULL,
STA_AGE int,
STA_Tel int,
STA_Gender varchar2(10),
STA_ADDRESS varchar2(50),
OFFICE_NUM int,
INSTRUCTOR_LEVEL varchar2(25),
Is_Manage varchar2(10),
Is_Admin varchar2(10)
);

CREATE TABLE OFFICE(
OFFICE_NUM int CONSTRAINT OFFICE_NUM_PK PRIMARY KEY,
OFFICE_STREET varchar2(25),
OFFICE_SUBURB varchar2(25),
OFFICE_CITY varchar2(25),
OFFICE_CONTACT int
);

CREATE TABLE CLIENT(
CLIENT_NUM int CONSTRAINT CLIENT_NUM_PK PRIMARY KEY,
CLIENT_FNAME varchar2(25)CONSTRAINT NN_CLIENT_FNAME NOT NULL,
CLIENT_LNAME varchar2(25)CONSTRAINT NN_CLIENT_LNAME NOT NULL,
CLIENT_AGE int,
CLIENT_Tel int,
CLIENT_Gender varchar2(10),
CLIENT_ADDRESS varchar2(50),
CLIENT_Lisence varchar2(20),
OFFICE_NUM int,
Lessone_ID int
);

CREATE TABLE LESSON(
LESSON_NUM int CONSTRAINT LESSON_NUM_PK PRIMARY KEY,
STA_NUM int REFERENCES STAFF(STA_NUM),
LESSON_START_TIME date,
MILEAGE int,
LESSON_TYPE varchar2(25)
);

CREATE TABLE EXAM(
EXAM_NUM int CONSTRAINT EXAM_NUM_PK PRIMARY KEY,
EXAM_TIME date,
EXAM_TYPE varchar2(25),
EXAM_RESULT varchar2(25),
CLIENT_NUM int REFERENCES CLIENT(CLIENT_NUM),
STA_NUM int REFERENCES STAFF(STA_NUM)
);


CREATE TABLE CAR(
CAR_NUM int CONSTRAINT CAR_NUM_PK PRIMARY KEY,
CAR_TYPE varchar2(25),
STA_NUM int REFERENCES STAFF(STA_NUM)
);

CREATE TABLE INSPECTION(
INSP_NUM int CONSTRAINT INSP_DATE_PK PRIMARY KEY,
CAR_NUM int REFERENCES CAR(CAR_NUM),
INSP_TIME date,
INSP_RESULT varchar2(25)
);


INSERT INTO STAFF VALUES('1','Jin','Peiqi','22','02108207522','Male','316 Dairy Flat Highway Albany','1','Senior','YES','YES');
INSERT INTO STAFF VALUES('2','Jin1','Peiqi1','23','02108207523','Female','317 Dairy Flat Highway Albany','2','Junior','NO','NO');
INSERT INTO STAFF VALUES('3','Jin2','Peiqi2','24','02108207524','Female','318 Dairy Flat Highway Albany','2','Junior','NO','NO');
INSERT INTO STAFF VALUES('4','Jin3','Peiqi3','25','02108207525','Male','319 Dairy Flat Highway Albany','2','Junior','NO','NO');
INSERT INTO STAFF VALUES('5','Jin4','Peiqi4','23','02108207526','Male','314 Dairy Flat Highway Albany','3','Junior','NO','YES');
INSERT INTO STAFF VALUES('6','Jin5','Peiqi5','24','02108207527','Female','318 Dairy Flat Highway Albany','4','Junior','NO','NO');
INSERT INTO STAFF VALUES('7','Jin6','Peiqi6','50','02108207528','Female','318 Dairy Flat Highway Albany','5','Junior','NO','NO');



INSERT INTO CLIENT VALUES('1','Peiqi','Jin','23','02108207522','Male','100 Dairy Flat Highway Albany','Learner','1','1');
INSERT INTO CLIENT VALUES('2','Peiqi1','Jin1','24','02108207522','Male','101 Dairy Flat Highway Albany','Restricted)','2','2');
INSERT INTO CLIENT VALUES('3','Peiqi2','Jin2','25','02108207522','Female','102 Dairy Flat Highway Albany','Learner','1','3');
INSERT INTO CLIENT VALUES('4','Peiqi3','Jin3','26','02108207522','Male','103 Dairy Flat Highway Albany','Restricted','3','4');
INSERT INTO CLIENT VALUES('5','Peiqi4','Jin4','27','02108207522','Female','104 Dairy Flat Highway Albany','Learner','4','5');
INSERT INTO CLIENT VALUES('6','Peiqi5','Jin5','28','02108207522','Male','105 Dairy Flat Highway Albany','Restricted','5','6');



INSERT INTO OFFICE VALUES('1','106 Dairy Flat Highway','Albany','Auckland','02108207522');
INSERT INTO OFFICE VALUES('2','106 Dairy Flat Highway','Albany','Auckland','02108207522');
INSERT INTO OFFICE VALUES('3','106 Dairy Flat Highway','Albany','Auckland','02108207522');
INSERT INTO OFFICE VALUES('4','106 Dairy Flat Highway','Albany','Auckland','02108207522');
INSERT INTO OFFICE VALUES('5','106 Dairy Flat Highway','Albany','Auckland','02108207522');
INSERT INTO OFFICE VALUES('6','106 Dairy Flat Highway','Albany','Auckland','02108207522');



INSERT INTO CAR VALUES('1','A','4');
INSERT INTO CAR VALUES('2','B','5');
INSERT INTO CAR VALUES('3','C','1');
INSERT INTO CAR VALUES('4','D','3');
INSERT INTO CAR VALUES('5','E','2');


INSERT INTO INSPECTION VALUES('1','1','4/7/2015','PASS');
INSERT INTO INSPECTION VALUES('2','2','4/7/2015','PASS');
INSERT INTO INSPECTION VALUES('3','3','4/7/2015','PASS');
INSERT INTO INSPECTION VALUES('4','4','4/7/2015','PASS');
INSERT INTO INSPECTION VALUES('5','5','4/7/2015','PASS');



INSERT INTO LESSON VALUES('1','1','4/1/2015','5','A');
INSERT INTO LESSON VALUES('2','2','4/1/2015','5','A');
INSERT INTO LESSON VALUES('3','3','4/1/2015','5','B');
INSERT INTO LESSON VALUES('4','1','4/1/2015','5','B');
INSERT INTO LESSON VALUES('5','4','4/1/2015','5','C');


INSERT INTO EXAM VALUES('1','4/7/2015','A','FAIL','1','2');
INSERT INTO EXAM VALUES('2','4/8/2015','A','FAIL','1','2');
INSERT INTO EXAM VALUES('3','4/9/2015','A','PASS','1','2');
INSERT INTO EXAM VALUES('4','4/7/2015','A','PASS','2','2');
INSERT INTO EXAM VALUES('5','4/7/2015','A','PASS','3','3');










