

select FIRST_NAME from EMPLOYEES;

select FIRST_NAME as given_name from EMPLOYEES;


select FIRST_NAME as "given_name" from EMPLOYEES;

--display annual salary for all employees as annual_salary
select FIRST_NAME, SALARY*12 as annual_salary from EMPLOYEES;

--