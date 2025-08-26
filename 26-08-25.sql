create DATABASE ORG123;
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
select * from worker where department='admin' and salary>=20000;
select * from worker where department='hr' or salary<=100000;
select * from worker where department='account' and salary>75000;
select * from worker where department='admin' or salary<500000;
select * from worker where salary>=10000;
select * from worker where salary>=20000;
select * from worker where salary<=90000;
select * from worker where salary<=100000;
select * from worker where salary!=30000;
select * from worker where firt_name!= 'geetika';
select * from worker where salary=100000;
select * from worker where department='admin';

select * from worker where worker_id in(1,3,5) and salary>=1000;
select * from worker where department in('hr','admin','account') or first_name='monika';
select * from worker where worker_id not in(1,3,5) and salary>=2000;
select * from worker where department not in('admin') or salary<=3000;

select * from worker where salary between 10000 and 100000;
select * from worker where salary between 100000 and 300000 and department in('hr','admin');
select * from worker where salary between 10000 and 90000 or worker_id not in(3,7);

select * from worker where department not in('hr','admin') and salary between 70000 and 300000;
select * from worker where first_name like 'v%' and salary>=200000;
select * from worker where department not in('admin') and salary<100000;

Select min(salary)
AS LowestSalary
FROM Worker;
select max(salary)
AS highestsalary
FROM worker;
select count(worker_id)
AS totalworker
FROM worker;
select sum(salary)
AS totalsalary
FROM worker;
select avg(salary)
AS totalavg
FROM worker;

select avg(salary) 
AS avg_salary
from worker
where department='admin';
select sum(salary)
AS totalsalary
from worker
where department in ('hr','admin');
select count(first_name)
AS name
from worker
where first_name like 'v%';
select sum(salary)
from worker
where salary between 50000 and 200000;

select first_name from worker
union
select last_name from worker;
select worker_id from worker
union all
select worker_id from worker;
select first_name,salary,
case
    when salary >=300000 then 'rich'
    when salary >=100000 and salary <=300000 then 'middle'
    else 'poor'
end
as statusbasedonsalary
from worker;    

