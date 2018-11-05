#create database ClassTestA;
use ClassTestA;

/*
create table Employee (
	EmployeeID  varchar(10),
    FirstName  char(25),
    LastName  char(25),
    Address  varchar(25),
    Primary Key (EmployeeID)
    );

create table Department (
	DeptNo varchar(10),
    DepartmentName  char(15),
    City varchar (25),
    Primary Key (DeptNo)
    );
    
create table DepartmentEmployee (
	DeptNo varchar(10),
    EmployeeID varchar(10),
    Pos varchar(25),
    Foreign key (DeptNo) references Department(DeptNo),
    Foreign key (EmployeeID) references Employee(EmployeeID)
    );
    
create table Project (
	ProjectNo varchar(10),
    ProjectName varchar(20),
    DeptNo varchar (10),
    Primary Key (ProjectNo),
    Foreign key (DeptNo) references Department(DeptNo)
    );

insert into Employee (EmployeeID, FirstName, LastName, Address)
values (1111, 'Alex', 'Burhop', '170 Laugh Street'),
(1112, 'Vince', 'Burhop', '1640 Diversey Avenue'),
(1113, 'Karl', 'Burhop', '180 Gettysburg Lane'),
(1114, 'Kirby', 'Burhop', '884 Hope Avenue'),
(1115, 'Kelly', 'Burhop', '420 Reality Road'),
(1116, 'Kim', 'Burhop', '754 Darkshade Court'),
(1117, 'John', 'Burhop', '435 Portland Street'),
(1118, 'Zoe', 'Burhop', '565 Beaver Road');
insert into Department (DeptNo, DepartmentName, City)
values ('22C', 'Comp Science', 'Cedar Rapids'),
(5002, 'Accounting', 'Iowa City'),
(5003, 'Law', 'Des Moines');
insert into DepartmentEmployee (DeptNo, EmployeeID, Pos)
values ('22C', 1112, 'Manager'),
('22C', 1113, 'Professor'),
('22C', 1114, 'Professor'),
('22C', 1115, 'Professor'),
('22C', 1116, 'Professor'),
('22C', 1117, 'Professor'),
(5002, 1111, 'Manager'),
(5003, 1118, 'Manager');
insert into Project (ProjectNo, ProjectName, DeptNo)
values (801, 'Mean Dist', '22C'),
(802, 'Accounts Rec', 5002),
(803, 'Wolf Vs. US Govt', 5003);
*/

select * from Employee;
select * from Department;
select * from DepartmentEmployee;
select * from Project;

SELECT Employee.FirstName, Employee.LastName, DepartmentEmployee.Pos 
	From Employee
		Inner Join DepartmentEmployee
			On Employee.EmployeeID = DepartmentEmployee.EmployeeID
WHERE DepartmentEmployee.DeptNo = '22C';

SELECT DeptNo, count(EmployeeID)
	from DepartmentEmployee
group by DeptNo
having count(EmployeeID) > 5;

Select Project.ProjectNo, Project.ProjectName, count(DepartmentEmployee.DeptNo)
	from Project
		Inner Join DepartmentEmployee
			On Project.DeptNo = DepartmentEmployee.DeptNo
group by ProjectNo;

