select * from employees;
/*
 -it gives only matching portion of tables
 -the order tables does not matter
 */
 select * from CUSTOMER;
select * from ADDRESS;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS inner join CUSTOMER
on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;

--Another Q ---> what if I want to customer.address_id information too
select FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS,PHONE from ADDRESS inner join CUSTOMER
on  ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;

-- Another Q --> Do I need to type table name always
-- ALIASES
    -- Table Aliases
        -- Customer  --> C
        -- Employees --> E
        -- Address   --> A

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A  inner join CUSTOMER C
                           on A.ADDRESS_ID = C.ADDRESS_ID;

/*
 LEFT OUTER JOIN / LEFT JOIN
 --it will give matching part + unique for LEFT table
 --the order of is important
 */
