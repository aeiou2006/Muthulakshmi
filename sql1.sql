CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
alter table worker add
sphone int8;
insert into worker values(009, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin',3978400294),
		(010, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR',3978400294),
		(011, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin',3978400294),
		(012, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin',3978400294),
		(013, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account',3978400294),
		(014, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account',3978400294);
select * from worker;
START TRANSACTION;
INSERT INTO worker (WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT,sphone)
VALUES (20,'malar','valli',10000,'2020-04-19 11:00:00','finance',9876532987);
COMMIT;
        