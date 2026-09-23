select 3*4 as Multiplication;
select 13/4 as Quotient;
select 10+10 as Addition;
select 20-10 as Substraction;
select (20 * 100) / 20 as Percentage;
select 34>31;
select 34!=67 Compare;
select database();
-- Logical Oprators


use T388;
select database();
CREATE TABLE Employee (
  EmployeeId INT PRIMARY KEY,
  FullName VARCHAR(45) NOT NULL,
  Department VARCHAR(45) NOT NULL,
  Salary float NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Age INT NOT NULL
);
select * from Employee; 
insert into employee values 
(2005,"Kausar","IT",45000,"Female",20);
select * from Employee;
delete from employee;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
select  * from  Employee;
DELETE FROM employee WHERE Gender = "male";
delete from employee where age>25;
alter table employee add Location varchar(10); 
alter table employee ;
alter table employee drop location; 
alter table employee add Bonus float after salary;
alter table employee add Title varchar(5) first;
describe employee; -- This is use for knowing the information about varchar 
alter table employee change column  Location address varchar(36);
alter table employee modify fullname  varchar(35);
select * from employee;

update employee set address ="Thane";
update employee set address = "Dombivali" where department = "IT"; -- here where is use for making condition here in location column 
update employee set Title = "Mr" where Gender = "Male";
update employee set Title = "Mrs" where Gender = "Female";
update employee set Bonus = salary*0.05; -- Mathematical conditon use in SQL 



use t388;
create table kisan_info
(ID int unique not null,
Name varchar (50) unique not null,
age int check (age>=18),
email_ID varchar(40) default "dummy@gmail.com"
);
desc kisan_info;
insert into kisan_info values
(103,"das",21,default);
alter table kisan_info modify age int check (age>=21);
show create table kisan_info;
select distinct department from employee;
select distinct gender from employee;
select database ();-- to check in which database 

select * from employee
where department ="It" or department ="finance";




select * from kisan_info;
select * from employee;



