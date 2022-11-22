select * from employees;

select * from EMPLOYEES
where rownum<11;

--display all information from employees who is getting 5 highest salary
-- BAD PRACTICE
-- It is getting data before order them based salary and
-- cut the list from line 6 then it tries to order them between first 5 rows
-- That is why we are getting WRONG LIST
select * from EMPLOYEES
where rownum<6
order by salary desc;

--CORRECT ANSWER
select * from (select * from EMPLOYEES order by salary desc)
where rownum<6;

--display all information who is getting 5th highest salary

--display all different salaries in desc order
select distinct salary  from EMPLOYEES order by salary desc;


--display 5th highst salary
select * from (select * from EMPLOYEES order by salary desc)
where ROWNUM<6;
--order by salary desc;

select min(salary) from (select * from EMPLOYEES order by salary desc)
where ROWNUM<6;

-- display all information who is getting 5th highest salary
--display all different salaries in desc order
select distinct salary from  EMPLOYEES order by salary desc;

-- display 5th highest salary
select min(salary) from (select distinct salary  from EMPLOYEES order by salary desc)
where rownum<6;


--who is getting 5th highest salary
select * from EMPLOYEES
where salary = (select min(salary) from (select distinct salary  from EMPLOYEES order by salary desc)
                where rownum<6);

---IQ---> display all information who is getting 213th highest salary
select * from EMPLOYEES
where salary = (select min(salary) from (select distinct salary  from EMPLOYEES order by salary desc)
                where rownum<213;

---HOMEWORK---> dispaly all information who is geting 3th lowest salary
select * from EMPLOYEES
where salary = (select min(salary) from (select distinct salary  from EMPLOYEES order by salary desc)
                where rownum<3);