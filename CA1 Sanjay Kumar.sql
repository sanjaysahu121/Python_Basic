create database ca1;
use ca1;
create table Employee(Emp_ID int primary key , Name varchar(50) , Dept_ID int , salary int );
create table Department(Dept_ID int , Dept_Name varchar(30));
insert into Employee values
(101, 'Rahul', 201, 50000),
(102, 'Neha', 202, 35000),
(103, 'Aman', 203, 60000),
(104, 'Riya', 204, 45000),
(105, 'Karan', 205, 30000);

insert into Employee values
(106 , 'Sanjay' , 207 , 65000);
select*from Employee;

insert into Department values
(201 , 'IT'),
(203 , 'HR'),
(206 , 'Finance'),
(207 , 'Marketing'),
(204 , 'SDE');
select*from Department;

#1 
SELECT Employee.Name, Department.Dept_Name
FROM Employee
INNER JOIN Department ON Employee.Dept_ID = Department.Dept_ID;

# 2
SELECT Name, Salary 
FROM Employee 
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

# 3 
CREATE VIEW highSalary AS
SELECT * FROM Employee 
WHERE salary > 60000;

#4
SELECT * FROM highSalary;



# Q  2 
create table Student (Student_ID int primary key , Name varchar(30) ,Department varchar(20) ,  Marks int);

insert into Student values
(301, 'simran', 'IT', 50),
(302, 'alok', 'HR', 79),
(303, 'anshu', 'IT', 60),
(304, 'Riya', 'Finance', 96),
(305, 'Karan', 'HR', 65);

# 2.1
SELECT * FROM Student 
WHERE Marks > 75;

# 2.2
SELECT AVG(Marks) AS Average_Marks 
FROM Student;

# 2.3
SELECT Department, SUM(Marks) AS Total_Marks
FROM Student
GROUP BY Department;

# 2.4

SELECT * FROM Student 
ORDER BY Marks DESC;

 