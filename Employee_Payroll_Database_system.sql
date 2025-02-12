CREATE DATABASE EmployeePayrollSystem;
use EmployeePayrollSystem;

CREATE TABLE Employee {
	Employee_id int primary key auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Department varchar(100),
    Email varchar(15) unique,
    Phone varchar(15),
    HireDate date
};

create table Salary{
	Salary_id int primary key auto_increment
}

