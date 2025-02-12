CREATE DATABASE EmployeePayrollSystem;
use EmployeePayrollSystem;

CREATE TABLE Employee(
	Employee_id int primary key auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Department varchar(100),
    Email varchar(15) unique,
    Phone varchar(15),
    HireDate date
);

create table Salary(
	Salary_id int primary key auto_increment,
    Employee_id int,
    BasicPay decimal(10,2),
    Allowance decimal(10,2),
    Deductions decimal(10,2),
    foreign key (Employee_id) references Employee(Employee_id) on delete cascade
);

create table Tax(
	Tax_id int primary key auto_increment,
    Employee_id int,
    TaxAmount decimal(10,2),
    ProvindentFund decimal(10,2),
    foreign key (Employee_id) references Employee(Employee_id) on delete cascade
);

create table Payroll(
	Payroll_id int primary key auto_increment,
    Employee_id int,
    SalaryMonth date,
    NetSalary decimal(10,2),
    foreign key (Employee_id) references Employee(Employee_id) on delete cascade
);