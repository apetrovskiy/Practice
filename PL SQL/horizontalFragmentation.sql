
-- Global Schema Employee(Eno;Ename;Address;Email;Salary)
-- insert 10 records
-- divide Emp into horizontal fragments 
-- Empp1
-- and 
-- Empp2
-- Fire the 4 Queries
-- 1. Find the salary of all employees.
-- 2. Find the Email of all employees where salary > 5000
-- 3. Find the employee name and Email where employee number is known.
-- 4. Find the employee name and address where employee number is known.



-- Global Schema Employee(Eno;Ename;Address;Email;Salary)
create table Employee(Eno numeric(6),Ename varchar2(50),Address varchar2(50),Email varchar2(20),Salary numeric(6));

-- insert 10 records
insert into Employee values(101,'Steve','Nerul','steve@gmail.com',20000);
insert into Employee values(102,'Matt','Vashi','matt@gmail.com',10000);
insert into Employee values(103,'Bob','Vashi','bob@gmail.com',15000);
insert into Employee values(104,'Alice','Bandra','alice@gmail.com',19000);
insert into Employee values(105,'Smith','Colaba','smith@gmail.com',25000);
insert into Employee values(106,'Jones','Colaba','jones@gmail.com',29000);
insert into Employee values(107,'George','Panvel','george@gmail.com',11000);
insert into Employee values(108,'Nina','Thane','nina@gmail.com',16000);
insert into Employee values(109,'John','Thane','john@gmail.com',22000);
insert into Employee values(110,'Paul','Airoli','paul@gmail.com',30000);

--if there is no user make make one
create user msc1 identified by msc1;
create user msc2 identified by msc2;
create user msc3 identified by msc3;
-- give them privileges
grant all privileges to msc1 identified by msc1;
grant all privileges to msc2 identified by msc2;
grant all privileges to msc3 identified by msc3;

-- divide Emp into vertical fragments

-- connect to msc1
connect msc1/msc1@orcl;
-- Empp1
-- create a link 
create database link linkh1 connect to scott identified by tiger using 'orcl';

create table Empp1 as (select * from Employee@linkh1 where salary <=10000);


-- connect to msc2
connect msc2/msc2@orcl;
--Empp2
-- create a link
create database link linkh2 connect to scott identified by tiger using 'orcl';

create table Empp2 as (select * from Employee@linkh2 where salary > 10000);


-- connect to msc3
connect msc3/msc3@orcl;
-- create 2 different links
create database link linkh1 connect to msc1 identified by msc1 using 'orcl';

create database link linkh2 connect to msc2 identified by msc2 using 'orcl';


-- Fire the 4 Queries
-- 1. Find the salary of all employees.
select salary,ename from Empp1@linkh1 union select salary,ename from Empp2@linkh2;

-- 2. Find the Email of all employees where salary > 5000
select email from (select email,salary from Empp1@linkh1 union select email,salary from Empp2@linkh2) where salary > 5000;
-- or 
select email from Empp1@linkh1 where salary > 5000 union select email from Empp2@linkh2 where salary > 5000;

-- 3. Find the employee name and Email where employee number is known.
select ename,email from (select eno,ename,email from Empp1@linkh1 union select eno,ename,email from Empp2@linkh2) where eno='&eno';

-- 4. Find the employee name and address where employee number is known.
select ename,address from (select eno,ename,address from Empp1@linkh1 union select eno,ename,address from Empp2@linkh2) where eno='&eno';