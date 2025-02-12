CREATE DATABASE EmployeePayrollSystem;
use EmployeePayrollSystem;

CREATE TABLE Employee(
	Employee_id int primary key auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Department varchar(100),
    Email varchar(30) unique,
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


insert into Employee(FirstName, LastName, Department, Email, Phone, HireDate) VALUES
('John', 'Doe', 'IT', 'john.doe@example.com', '9876543210', '2023-06-15'),
('Jane', 'Smith', 'HR', 'jane.smith@example.com', '8765432109', '2022-08-20'),
('Robert', 'Brown', 'Finance', 'robert.brown@example.com', '7654321098', '2021-05-10'),
('Emily', 'Clark', 'IT', 'emily.clark@example.com', '6543210987', '2023-01-25'),
('Michael', 'Johnson', 'Marketing', 'michael.johnson@example.com', '5432109876', '2020-11-30'),
('Sarah', 'Williams', 'HR', 'sarah.williams@example.com', '4321098765', '2019-07-12'),
('David', 'Miller', 'IT', 'david.miller@example.com', '3210987654', '2024-02-05'),
('Jessica', 'Davis', 'Finance', 'jessica.davis@example.com', '2109876543', '2021-12-14'),
('Daniel', 'Martinez', 'IT', 'daniel.martinez@example.com', '1098765432', '2022-03-09'),
('Sophia', 'Anderson', 'Marketing', 'sophia.anderson@example.com', '0987654321', '2023-09-18');

INSERT INTO Salary (Employee_id, BasicPay, Allowance, Deductions) VALUES
(1, 50000, 10000, 5000),
(2, 45000, 8000, 4000),
(3, 60000, 12000, 7000),
(4, 55000, 11000, 6000),
(5, 48000, 9500, 4500),
(6, 52000, 10200, 5200),
(7, 61000, 13000, 8000),
(8, 58000, 12500, 7500),
(9, 49000, 9800, 4600),
(10, 53000, 10500, 5400);

INSERT INTO Tax (Employee_id, TaxAmount, ProvindentFund) VALUES
(1, 5000, 2500),
(2, 4500, 2200),
(3, 7000, 3500),
(4, 6000, 3000),
(5, 4800, 2400),
(6, 5200, 2600),
(7, 8000, 4000),
(8, 7500, 3800),
(9, 4600, 2300),
(10, 5400, 2700);

INSERT INTO Payroll (Employee_id, SalaryMonth, NetSalary) VALUES
(1, '2025-01-01', 55000),
(2, '2025-01-01', 49000),
(3, '2025-01-01', 65000),
(4, '2025-01-01', 60000),
(5, '2025-01-01', 53000),
(6, '2025-01-01', 57000),
(7, '2025-01-01', 66000),
(8, '2025-01-01', 63000),
(9, '2025-01-01', 54000),
(10, '2025-01-01', 58000);


show tables;

select * 
from employee;


