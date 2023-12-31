CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker(

Worker_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

SELECT* FROM WORKER;

INSERT INTO WORKER 
	( WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
	(		001,   'MONIKA', 'ARORA', 100000, '14-02-20 09.00.00', 'HR'),
    (       002,  'NIHARIKA', 'RAO', 80000, '14-06-11 09.00.00', 'admin'),
    (      003,  'vijay', 'kal', 50000, '13-02-20 09.00.00', 'HR'),
    (     004, 'ANIL', 'CHUT', 4000000, ' 14-07-22 09.00.00', 'admin'),
    (     005, 'dhruv',  'rathore', 500000, '15-06-22 09.00.00', 'IT');
INSERT INTO WORKER 
	( WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    (      006,  'viP', 'kal', 500000, '13-02-20 09.00.00', 'HR'),
    (     007, 'ANILLLL', 'CHUT', 40050000, ' 14-07-22 09.00.00', 'admin'),
    (     008, 'dhruvIII',  'rathore', 5500000, '15-06-22 09.00.00', 'IT');

CREATE TABLE BONUS(
WORKER_REF_ID INT,
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY(WORKER_REF_ID)
	REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
    
);
INSERT INTO BONUS
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
    (001, 5000, '16-02-20'),
    (002, 3000, '16-02-11'),
    (003, 4000, '16-04-20'),
    (001, 4500, '16-02-20'),
    (002, 3500, '16-06-11');
    
CREATE TABLE TITLE (
		WORKER_REF_ID INT,
		WORKER_TITLE CHAR(25),
		AFFECTED_FROM DATETIME,
		FOREIGN KEY(WORKER_REF_ID)
			REFERENCES WORKER(WORKER_ID)
			ON DELETE CASCADE
);
SELECT*FROM TITLE;
INSERT INTO TITLE 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
			(      001,      'MANAGER',    '2016-02-20 00.00.00'),
			(      002,      'EXECUTIVE',  '2016-06-11 00.00.00'),
			(      008,      'EXECUTIVE',    '2016-02-20 00.00.00'),
			(      005,      'MANAGER',    '2016-02-20 00.00.00'),
			(      004,      'ASST.MANAGER',   '2016-02-20 00.00.00'),
			(      007,      'MANAGER',    '2016-02-20 00.00.00'),
			(      006,      'LEAD',    '2016-02-20 00.00.00'),
            (      003,      'LEAD',    '2016-02-20 00.00.00');
            
SELECT *FROM TITLE;
SELECT*FROM BONUS;
    
 


    