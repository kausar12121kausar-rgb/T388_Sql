create database T388_fk_pk;
use T388_fk_pk;
CREATE TABLE Employee (
ID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Age INT,
Salary DECIMAL(10, 2)
);


CREATE TABLE Project (
ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(100) NOT NULL,
ID INT,
FOREIGN KEY (ID) REFERENCES Employee(ID)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO Employee (ID, Name, Age, Salary) VALUES
(101, 'Alice Smith', 29, 75000.00),
(102, 'Bob Jones', 34, 82000.50),
(103, 'Charlie Brown', 41, 95000.00),
(104, 'Diana Prince', 26, 68000.00);

INSERT INTO Project (ProjectID, ProjectName, ID) VALUES
(1, 'Website Redesign', 101),
(2, 'Cloud Migration', 101),
(3, 'Mobile App Launch', 102),
(4, 'Data Analytics Pipeline', 103);

select * from employee;
select * from project;
 
 update employee set id = 500 where id = 101;
 
 
 
 
 
 -- WINDOWS FUNCTION --
 
use T388;
select -- if we need all column they use star like ( select * row_number() over (partition by department) as RandkInDepartment from employee
EmployeeId,
fullname,
department,
salary,
row_number() over (partition by department) as RandkInDepartment
from employee;
select * from employee;

select                     -- (decending order to department)
EmployeeId,
fullname,
department,
salary,
row_number() over (partition by department) as RandkInDepartment
from employee order by department desc;

-- RANK () --
select fullname,salary,rank() over (order by salary ) as RankInsalary from employee;

 -- Dense _rank()
 select fullname,salary,dense_rank() over (order by salary ) as RankInsalary from employee;

-- Windows fun' --
select 
EmployeeId,
fullname,
department,
salary,
avg(Salary) over (partition by department) as departmentAvgSalary,
sum(salary) over (partition by department) as departmentTotalSalry
from employee
where gender = "male"
order by department,Salary desc;

select 
*,
avg(Salary) over (partition by department) as departmentAvgSalary,
sum(salary) over (partition by department) as departmentTotalSalry
from employee
where gender = "male"
order by department,Salary desc;

select 
EmployeeId,
fullname,
department,
salary,
age,
lag(salary,1,0) over(partition by department order by age asc) as PreviousEmployeeSalaryByAge
from employee
order by 
Department, age;

select                              -- compare by starting of the entry -- 
EmployeeId,
fullname,
department,
salary,
age,
lag(salary,1,0) over( order by salary ) as PreviousEmployeeSalaryByAge,
(salary -(lag(salary,1,0) over (order by salary)))  as diff from employee;

select EmployeeId,fullname,department,salary,age,                 -- compare from last entry --
lead(salary,1,0) over( order by salary ) as PreviousEmployeeSalaryByAge from employee;





select * from employee;





