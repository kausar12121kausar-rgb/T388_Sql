use t388;
CREATE TABLE Projects (


 ProjectId INT PRIMARY KEY AUTO_INCREMENT,


   
ProjectName VARCHAR(200) NOT NULL,


 EmployeeId INT,


   
StartDate DATETIME,


   
EndDate DATETIME


);


 


INSERT INTO Projects VALUES


(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),


(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),


(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),


(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),


(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));
alter table projects ADD DURATION INT;
 
UPDATE PROJECTS SET DURATION =DATEDIFF(ENDDATE, STARTDATE);
SELECT DURATION ,COUNT(*) FROM PROJECTS GROUP BY DURATION;
SELECT DURATION,COUNT(*) FROM PROJECTS GROUP BY DURATION HAVING COUNT(*)>=2;
SELECT DURATION,COUNT(*) FROM PROJECTS GROUP BY DURATION HAVING COUNT(*)>=2 LIMIT 3;
SELECT DURATION,COUNT(*) FROM PROJECTS
WHERE DURATION >=20
GROUP BY DURATION
HAVING COUNT(*)>=2
ORDER BY DURATION DESC;

select * from employee;
select* from projects;


select * from projects where employeeid is null;-- null value dhundne ke liye 
select * from projects where employeeid is not null; -- not null value ke liye 

update projects set employeeid = 1003 where projectID = 6;
-- IN , LIKE, BETWEEN

select * from employee where age between 25 and 27; -- Between me jab select krta hu final valueme min max dono aati hai ya nhi ? ( ans; yes aati hai )
select * from employee where employeeid  between  1003 and 1007;
select * from employee where employeeid in ( 1003, 1005, 1007); 





-- underscore mins single character (_)...... like "_a%"    compulsory ek character hona he chahiye 
use t388;
select * from simple; 
select * from simple  where FULLNAME  like "a%";
select * from simple  where FULLNAME  like "_u%";
select * from simple  where FULLNAME  like "%a_";
select * from simple  where FULLNAME  like "%e__";
select * from simple where FULLNAME like "%an%";
select * from simple  where FULLNAME  like "%n%";
select * from simple  where FULLNAME  like "a_%";
select * from simple  where FULLNAME  like "a%t";
select * from simple  where FULLNAME  not like "a%t";-- vise versa of LIKE function ( perticular find krrhe haai usko chor ke baki sb ) 



-- BUILT-IN FUNCTION IN SQL
-- AVG()
Select avg(salary) from employee;
Select max(salary) from employee;
Select sum(salary) from employee;
Select count(salary) from employee;
Select min(salary) from employee;
select count(*),avg(salary),sum(salary) from employee;



-- MATH FUNCTION
SELECT abs(6*(-7));
SELECT (6*(-7));

select datediff(startdate, enddate) from projects;
select abs(datediff(startdate, enddate))
as duration from projects;
select mod (12,7);


-- CELING AND FLOOR FUNCTION
	-- celing and floor explain in int and mock *******
    select ceil (33.8);
	select floor (33.8);
    
   -- TRUNCATE (a,b)--
select truncate (1223456.8765432,1);-- we do in excel for increasing and dicreasing in excel like this
select truncate (1223456.8765432,0);
select truncate (1223456.8765432,-1); -- now here -1 se wo 5.6 nhi honga wo actully 6 ko 0 kr denga usko remove kr denga 
select exp(2);
select power(2,4);
select pow(2,4);
select sqrt(169);
select sqrt(16);
select sqrt(salary) from employee;
select concat("Good"," ","Morning") as remark;
select *,concat(fullname, "@itvedant") as code from employee;
select*, lower(fullname) as newname, upper(fullname) as CAPITALNAME from employee;

-- alter table employee add Email varchar (50);
alter table employee modify Email varchar (50);
update employee set Email = concat(fullname, "@gmail.com");
select replace("Hello Everyone, Good Morning" , "Morning","Night") as statement;
select fullname, replace(fullname, "Mohanty", "Patil") as changedname from employee;
select fullname, replace(fullname, "Mohanty", "Patil") as changed,reverse(fullname) from employee;
select fullname, length(fullname) from employee;
select salary, length(salary) from employee;
select substring("Maharashtra", 3 ,5);
select fullname,length(fullname),
ltrim(fullname),length(ltrim(fullname)) as ltrim_length,
rtrim(fullname),length(rtrim(fullname)) as rtrim_length,
trim(fullname),length(trim(fullname))as all_trim_length 
from trimmer;


-- sub-query
select age from employee where employeeid = "1002";
select age from employee where fullname = "Mary Smith";
select * from employee where age = (select age from employee where fullname = "Mary Smith");

select * from employee where salary = (select salary from employee where fullname = "John Doe");
select * from employee where department = (select department from employee where fullname = "John Doe");
select max(salary) from employee;
select max(salary) from employee where salary<(select max(salary) from employee);
select min(salary) from employee where salary>(select min(salary) from employee);
select max(salary) from employee where salary<(select max(salary) from employee where salary<(select max(salary) from employee));


-- MULTIPLE ROW SUB QUERY--
use T388;
select age from employee where EmployeeId in (1002,1003);  
select * from employee
 where age in (select age from employee where EmployeeId in (1002,1003));


-- ANY,ALL (where in ALL use and logical oprator , and in ANY we use or oprator)--   any gratet than minimum, any reater than maximum , all greater than maximum 
select distinct salary from employee;
select * from employee where
Salary > any (select salary from employee where employeeid between 1001 and 1003);
select * from employee where
salary < any (select salary from employee where employeeid between 1001 and 1003);

select * from employee where
salary > all (select salary from employee where employeeid between 1001 and 1003);

select * from employee where
salary <= all (select salary from employee where employeeid between 1001 and 1003);

select * from employee where
salary < all (select salary from employee where employeeid between 1001 and 1003);

select * from employee;


-- JOINS --

   
   
    














