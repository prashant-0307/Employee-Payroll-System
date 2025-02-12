use employeepayrollsystem;

/* Payroll Calculation Query */

select e.Employee_id, e.FirstName, e.LastName, s.BasicPay, s.Allowance, s.Deductions, 
	(s.BasicPay + s.Allowance - s.Deductions) as NetSalary
from Employee e
join Salary s on e.Employee_id = s.Employee_id;

/* Automate Payroll Processing With a Stord Procedure */

delimiter //
create procedure ProcessPayroll(in empId int, in payMonth date)
begin
	declare netSalary decimal(10,2);
    
    select (BasicPay + Allowance - Deductions)
    into netSalary
    from Salary
    where Employee_id = empID;
    
    insert into Payroll (Employee_id, SalaryMonth, NetSalary) values
    (empID, payMonth, netSalary);
end//
delimiter ;

call ProcessPayroll(1, '2023-06-15');

create user 'payroll_admin'@'localhost' identified by 'securepassword';
grant select, insert, update on Payroll to 'payroll_admin '@' localhost';



