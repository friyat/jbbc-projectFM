select * from EMPLOYEES;

create view EmployeesInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initals,
       FIRST_NAME||' makes '|| salary as Employees_salary from EMPLOYEES;

select * from EMPLOYEESINFO;

--How many columns we have in view?
--initials
--Employees_salary
--can we call spesific column from view

select initals from EmployeesInfo;
select EMPLOYEES_SALARY from EmployeesInfo;

drop view EmployeesInfo;

