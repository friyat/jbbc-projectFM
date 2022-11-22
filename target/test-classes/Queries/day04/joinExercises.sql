select * from EMPLOYEES;

--1. Display all first_name and related department_name

    --Steven Executive
    --David IT
select * from EMPLOYEES;
select * from DEPARTMENTS;
    select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D
    on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

    --order list based firstname
    select FIRST_NAME,DEPARTMENT_NAME
    from EMPLOYEES E inner join DEPARTMENTS D
            on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME;

--2.Display all first_name and department_name including the  department without employee
select * from EMPLOYEES;
select * from DEPARTMENTS;
--RIGHT JOIN
select FIRST_NAME,DEPARTMENT_NAME from employees e right join departments d
    on e.DEPARTMENT_ID = e.DEPARTMENT_ID;

--LEFT JOIN
select FIRST_NAME,DEPARTMENT_NAME from departments d left join employees e
    on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--how many employee we have for each department name
select DEPARTMENT_NAME,count(*) from DEPARTMENTS d left join EMPLOYEES e
    on d.DEPARTMENT_ID=e.DEPARTMENT_ID
                                group by DEPARTMENT_NAME;

--3.Display all first_name and department_name including the  employee without department
select * from EMPLOYEES;
select * from DEPARTMENTS;

--MAtching portion+uniqe employee --> Left Join
    select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e left outer join DEPARTMENTS d
            on e. DEPARTMENT_ID = d.DEPARTMENT_ID;

-- RIGHT JOIN
    select FIRST_NAME,DEPARTMENT_NAME from departments d right join employees e
                               on d.DEPARTMENT_ID = e.DEPARTMENT_ID;


--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
select FIRST_NAME,DEPARTMENT_NAME from departments d full join employees e
             on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--5.Display All cities and related country names
select city, country_name from LOCATIONS L inner join COUNTRIES C
    on L.COUNTRY_ID = C.COUNTRY_ID;


--6.Display All cities and related country names  including with countries without city
select * from COUNTRIES;
select distinct COUNTRY_ID from LOCATIONS;

select CITY,COUNTRY_NAME from LOCATIONS L right join COUNTRIES C
on L.COUNTRY_ID=C.COUNTRY_ID;


--7.Display all department name and  street adresss
select DEPARTMENT_NAME,STREET_ADDRESS,L.Location_ID from LOCATIONS L inner join DEPARTMENTS D
on L.LOCATION_ID=D.LOCATION_ID;

--8.Display first_name,last_name and department_name,city for all employees
select first_name,last_name,department_name,city from EMPLOYEES E
                  inner join  DEPARTMENTS D
                         on E.DEPARTMENT_ID = D.DEPARTMENT_ID
                                  inner join LOCATIONS L
                          on D.LOCATION_ID = L.LOCATION_ID;

-- where is the Kimberly ?
select first_name,last_name,department_name,city from EMPLOYEES E
                    left join  DEPARTMENTS D
                         on E.DEPARTMENT_ID = D.DEPARTMENT_ID
                                         left join LOCATIONS L
                                        on D.LOCATION_ID = L.LOCATION_ID;

--how many employees departments we have in each city?
select city,count(*) from EMPLOYEES E
             left join  DEPARTMENTS D
                  on E.DEPARTMENT_ID = D.DEPARTMENT_ID
                              left join LOCATIONS L
                                  on D.LOCATION_ID = L.LOCATION_ID
group by city
order by 2 ;

--9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city,COUNTRY_NAME from EMPLOYEES E
        inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
inner join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID
inner join COUNTRIES C
on L.COUNTRY_ID=C.COUNTRY_ID;

--how many employees departments we have in country name?
select COUNTRY_NAME,count(*) from EMPLOYEES E
inner join DEPARTMENTS D
        on E.DEPARTMENT_ID = D.DEPARTMENT_ID
inner join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID
inner join COUNTRIES C
on L.COUNTRY_ID = c.COUNTRY_ID
group by COUNTRY_NAME
having count(*)>20
order by 2;