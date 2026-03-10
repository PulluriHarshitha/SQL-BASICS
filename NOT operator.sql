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
