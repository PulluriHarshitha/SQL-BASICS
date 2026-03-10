NOT Operator in SQL

The NOT operator is used to reverse a condition.
If a condition is true, NOT makes it false.
If a condition is false, NOT makes it true.

example:

SQL> create table students_mrtn (
  2  id number,
  3  name varchar2(50),
  4  age number,
  5  city varchar2(50)
  6  );

Table created.

SQL> insert into students_mrtn values (1, 'harshitha', 20, 'Hyderabad');

1 row created.

SQL> insert into students_mrtn values (2, 'reddi', 21, 'nirmal');

1 row created.

SQL> insert into students_mrtn values (3, 'sitha', 23, 'delhi');

1 row created.

SQL> insert into students_mrtn values (4, 'ravana', 27, 'goa');

1 row created.

SQL> select * from students_mrtn;

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
CITY
--------------------------------------------------
         1 harshitha                                                  20
Hyderabad

         2 reddi                                                      21
nirmal

         3 sitha                                                      23
delhi


        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
CITY
--------------------------------------------------
         4 ravana                                                     27
goa


OUTPUT 1:NOT with Condition

SQL> select * from students_mrtn
  2  where not city = 'delhi';

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
CITY
--------------------------------------------------
         1 harshitha                                                  20
Hyderabad

         2 reddi                                                      21
nirmal

         4 ravana                                                     27
goa

OUTPUT 2 : NOT with IN ( NOT FROM hyd and nirmal)

SQL> select * from students_mrtn
  2   where city NOT IN ('Hyderabad','nirmal');

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
CITY
--------------------------------------------------
         3 sitha                                                      23
delhi

         4 ravana                                                     27
goa

OUTPUT 3 : NOT with BETWEEN( AGE NOT B|W 23 TO 27)

SQL> select * from students_mrtn
  2  where age NOT BETWEEN 23 and 27;

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
CITY
--------------------------------------------------
         1 harshitha                                                  20
Hyderabad

         2 reddi                                                      21
nirmal

OUTPUT 4 : NOT with LIKE(names not starting with 'R'.)

SQL> select * from students_mrtn
  2  where age NOT BETWEEN 23 and 27;


        ID NAME              AGE CITY
---------- ---------- ---------- ---------------
         1 harshitha          20 Hyderabad
         2 reddi              21 nirmal

OUTPUT 5 : NOT with NULL(Select rows where city is not NULL)

select * from students_mrtn
  2  where city is not null;

        ID NAME              AGE CITY
---------- ---------- ---------- ---------------
         1 harshitha          20 Hyderabad
         2 reddi              21 nirmal
         3 sitha              23 delhi
         4 ravana             27 goa

IF WE HAVE TO UPDATE A NEW COLOUM AS 'DEPT' WE USE ALTER TABLE

SQL> ALTER TABLE students_mrtn
  2  add DEPT_NAME varchar2(50);

Table altered.

SQL> desc students_mrtn;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID                                                                                   NUMBER
 NAME                                                                                 VARCHAR2(50)
 AGE                                                                                  NUMBER
 CITY                                                                                 VARCHAR2(50)
 DEPT_NAME                                                                            VARCHAR2(50)

SQL> insert into students_mrtn values (2, 'reddi', 21, 'nirmal','IT');

1 row created.

SQL> insert into students_mrtn values (1, 'harshitha', 20, 'Hyderabad','CSE');

1 row created.


SQL> insert into students_mrtn values (3, 'sitha', 23, 'delhi','ECE');

1 row created.

SQL> insert into students_mrtn values (4, 'ravana', 27, 'goa','CSM');

1 row created.

SQL> select * from students_mrtn;

        ID NAME              AGE CITY            DEPT_NAME
---------- ---------- ---------- --------------- --------------------------------------------------
         1 harshitha          20 Hyderabad
         2 reddi              21 nirmal
         3 sitha              23 delhi
         4 ravana             27 goa
         2 reddi              21 nirmal          IT
         1 harshitha          20 Hyderabad       CSE
         3 sitha              23 delhi           ECE
         4 ravana             27 goa             CSM

8 rows selected.




