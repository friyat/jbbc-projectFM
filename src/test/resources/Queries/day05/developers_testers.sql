
create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);
select * from Testers;
insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from testers;
select * from developers;

/*
 UNION
 -to merge more them one table vertically
 -Remove DUPs
 -Make an order as default asc
 */

select * from DEVELOPERS
union
select * from testers;

select names from DEVELOPERS
union
select names from testers;


 select names from DEVELOPERS
union
select names from testers
order by 1 desc ;

/*
 UNION ALL
 -Don't Remove DuPS
 -Don;t sort the results
 */
 select * from DEVELOPERS
union all
select * from testers;

select names from developers
union all
select names from testers;


-- if you wanna make an order use order by
select names from developers
union all
select names from testers
order by 1;

/*
MINUS
 It removes same data from first table and gives result from first table

 */


select * from developers
minus
select * from testers;


select names from developers
minus
select names from testers;

select names from Testers
minus
select names from developers;

/*
 INTERSECT
 */

select * from developers
intersect
select * from testers;


select names from developers
intersect
select names from testers;