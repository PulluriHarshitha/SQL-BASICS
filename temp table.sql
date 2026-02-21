 A temporary table in SQL is a special table used to store data temporarily during query execution. It helps hold intermediate results without affecting permanent tables.

Types of Temporary Tables in SQL
There are 2 types of Temporary Tables:
1) local temporary table:it doesnot support oracle
2) global temporary table:Oracle uses Global Temporary Tables (GTT).
Structure stays permanent, but data is temporary.
global table on 2 types 1)on commit delete rows
                        2)on commit preserve rows


EXAMPLE OF TEMP TABLE

create global temporary table temp_mugdhasarees (
id number,
name varchar2(50),
salary number
) on commit delete rows;

insert into temp_mugdhasarees 
values (101, 'amit', 20000);
insert into temp_mugdhasarees
values(102,'pranith',25000);

select * from dual; #this is used to check dummy data on oracle 

D
-
X

SQL> select * from temp_mugdhasarees;

        ID NAME                                                   SALARY
---------- -------------------------------------------------- ----------
       101 amit                                                    20000
       102 pranith                                                 25000

SQL> commit;

Commit complete.

SQL> select * from temp_mugdha sarees;
select * from temp_mugdha sarees
              *
ERROR at line 1:
ORA-00942: table or view does not exist (it gives error means i will give on table creation  after commit delete my temp table)


