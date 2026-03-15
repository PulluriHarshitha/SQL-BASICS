UNION OPERATOR

The UNION operator is used to combine the results of two or more SELECT queries into a single result table.
It removes duplicate rows and shows only unique records.

Rules for UNION

Each SELECT statement must have the same number of columns.

The columns must have similar data types.

The columns must be in the same order.


create table students1 (
  2  id number,
  3  name varchar2(30),
  4  dept varchar2(30),
  5  city varchar2(30),
  6  mobile number
  7  );

Table created.


SQL> insert into students1 values (101,'Ravi','cse','Hyderabad','987654321');

1 row created.

SQL> insert into students1 values (102,'Raju','csm','medchal','887654321');

1 row created.

SQL> insert into students1 values (103,'vijay','csd','masimmaguda','887654324');

1 row created.

SQL> insert into students1 values (104,'arjun','it','ghatkesar','887854324');

1 row created.

create table students2 (
id number,
name varchar2(30),
dept varchar2(30),
city varchar2(30),
mobile number
);

SQL> insert into students1 values (105,'arjun','csd','kandlakoya','887857724');

1 row created.

SQL> insert into students1 values (106,'ram charan','ece','vizag','987857724');

1 row created.

SQL> insert into students1 values (107,'nithin','eee','vijayawada','987850724');

1 row created.

OUTPUT 1:

SQL> select name from students1
  2  union
  3  select name from students2;

NAME
----------
Raju
Ravi
arjun
nithin
ram charan
vijay

6 rows selected.

SQL> select city from students1
  2  union
  3  select city from students2;

CITY
---------------
Hyderabad
ghatkesar
kandlakoya
masimmaguda
medchal
vijayawada
vizag

7 rows selected.

OUTPUT 2 : UNION with Multiple Columns

SQL> SELECT id,name,city FROM students1
  2  union
  3  SELECT id,name,city FROM students2;

        ID NAME       CITY
---------- ---------- ---------------
       101 Ravi       Hyderabad
       102 Raju       medchal
       103 vijay      masimmaguda
       104 arjun      ghatkesar
       105 arjun      kandlakoya
       106 ram charan vizag
       107 nithin     vijayawada

7 rows selected.

OUTPUT 3 : UNION with WHERE Condition

SELECT name FROM students1
WHERE city='Hyderabad'
UNION
SELECT name FROM students2
WHERE city='vizag';

NAME
----------
Ravi


OUTPUT 4 : UNION with ORDER BY

SELECT dept FROM students1
UNION
SELECT dept FROM students2
ORDER BY dept;

DEPT
------------------------------
csd
cse
csm
ece
eee
it

6 rows selected.

