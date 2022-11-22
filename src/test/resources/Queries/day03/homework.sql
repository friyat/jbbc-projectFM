select * from employees;
----- 1. display full addresses from locations table in a single column
select * from EMPLOYEES
where SALARY between 5000 and 30000;

--full addresses
select distinct STREET_ADDRESS from LOCATIONS;

-- 2. display all informations of the employee who has the minimum salary in employees table

select MIN(SALARY) from EMPLOYEES;

-- 3. display the second minimum salary from the employees
select * from EMPLOYEES
where SALARY =3000;

select employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id from EMPLOYEES;
select distinct STREET_ADDRESS from LOCATIONS;


