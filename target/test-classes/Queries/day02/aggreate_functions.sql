select * from employees;

/*AGGREATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS

  -count --> it will count rows
  - max    --> it will max value
- min    --> it will min value
- sum    --> it will give total value
- avg    --> it will give average values

 Aggreate functions takes multi row and return one result

 NOTE --> All aggreate function will ignore NULL values
 */

 --How many departments we have?
select * from departments;
select count(*) from departments;

--NULL VALUES
select * from employees;

select count(*) from EMPLOYEES
where DEPARTMENT_ID is null; --she is kimberly

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null; --she is kimberly

--Both ExECUTION will give same result since we dont have any null values for department ID
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null;


select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null;

--How many different firstname we have?
select count(distinct FIRST_NAME) from EMPLOYEES;

--how many employees working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

--how may employees geting salary more than 6000
select count(*) from EMPLOYEE
where max(salary)