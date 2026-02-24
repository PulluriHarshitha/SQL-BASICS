create table stu_mrtn (
  2  roll_no int primary key,
  3  name varchar2(50),
  4  address varchar2(100),
  5  phone varchar2(15),
  6  age int
  7  );

Table created.

SQL>  insert into stu_mrtn values (1, 'Sophia', 'Berlin', 'xxxxxxxxxx', 18);

1 row created.

SQL>  insert into stu_mrtn values (2, 'alexa', 'tokyo', 'xxxxxxxxxx', 19);

1 row created.

SQL>  insert into stu_mrtn values (3, 'santa', 'berlin', 'xxxxxxxxxx', 20);

1 row created.

SQL>  insert into stu_mrtn values (4, 'akira', 'india', 'xxxxxxxxxx', 21);

1 row created.

SQL>  insert into stu_mrtn values (5, 'anatha', 'india', 'xxxxxxxxxx', 17);

1 row created.

SQL> select * from stu_mrtn;

   ROLL_NO NAME
---------- --------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
PHONE                  AGE
--------------- ----------
         1 Sophia
Berlin
xxxxxxxxxx              18

         2 alexa
tokyo
xxxxxxxxxx              19

   ROLL_NO NAME
---------- --------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
PHONE                  AGE
--------------- ----------

         3 santa
berlin
xxxxxxxxxx              20

         4 akira
india

   ROLL_NO NAME
---------- --------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
PHONE                  AGE
--------------- ----------
xxxxxxxxxx              21

         5 anatha
india
xxxxxxxxxx              17


OUTPUT 2 : INSERT A ADD DATA

SQL> insert into stu_mrtn values (6, 'chitti', 'usa', 'xxxxxxxxxx', 27);

1 row created.

SQL> select * from stu_mrtn;

   ROLL_NO NAME
---------- --------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
PHONE                  AGE
--------------- ----------
         1 Sophia
Berlin
xxxxxxxxxx              18

         2 alexa
tokyo
xxxxxxxxxx              19

   ROLL_NO NAME
---------- --------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
PHONE                  AGE
--------------- ----------

         3 santa
berlin
xxxxxxxxxx              20

         4 akira
india

   ROLL_NO NAME
---------- --------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
PHONE                  AGE
--------------- ----------
xxxxxxxxxx              21

         5 anatha
india
xxxxxxxxxx              17

         6 chitti

   ROLL_NO NAME
---------- --------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
PHONE                  AGE
--------------- ----------
usa
xxxxxxxxxx              27


6 rows selected.
