SQL SELECT Query

The SQL SELECT statement is used to retrieve data from one or more tables and display it in a structured format of rows and columns.
Fetches all columns using * or specific columns by name.
Filters and sorts data using WHERE and ORDER BY.
Supports grouping, aggregation, and table relationships using GROUP BY, HAVING, and JOIN.

EXAMPLE

SQL> CREATE TABLE interview (
  2    customer_id NUMBER PRIMARY KEY,
  3    firstname    VARCHAR2(50),
  4    lastname     VARCHAR2(50),
  5    age          NUMBER(3),
  6    country      VARCHAR2(50),
  7    phone_number NUMBER(15)
  8  );

Table created.
SQL> insert into interview values (1, 'Amit', 'Sharma', 22, 'India', 9876543210);

1 row created.

SQL> insert into interview values (2, 'sophia', 'miller', 32, 'usa', 8886543210);

1 row created.

SQL> insert into interview values (3, 'akira', 'tanaka', 24, 'japan', 7654543210);

1 row created.

SQL> insert into interview values (4, 'carlos', 'hemas', 28, 'italy', 7654542288);

1 row created.

SQL> insert into interview values (5, 'jenila', 'rosy', 21, 'china', 7654547798);

1 row created.

SQL> insert into interview values (6, 'meera', 'jasmine', 25, 'russia', 9797547798);

1 row created.


SQL> select * from interview;

CUSTOMER_ID FIRSTNAME
----------- --------------------------------------------------
LASTNAME                                                  AGE
-------------------------------------------------- ----------
COUNTRY                                            PHONE_NUMBER
-------------------------------------------------- ------------
          1 Amit
Sharma                                                     22
India                                                9876543210

          2 sophia
miller                                                     32
usa                                                  8886543210

CUSTOMER_ID FIRSTNAME
----------- --------------------------------------------------
LASTNAME                                                  AGE
-------------------------------------------------- ----------
COUNTRY                                            PHONE_NUMBER
-------------------------------------------------- ------------

          3 akira
tanaka                                                     24
japan                                                7654543210

          4 carlos
hemas                                                      28

CUSTOMER_ID FIRSTNAME
----------- --------------------------------------------------
LASTNAME                                                  AGE
-------------------------------------------------- ----------
COUNTRY                                            PHONE_NUMBER
-------------------------------------------------- ------------
italy                                                7654542288

          5 jenila
rosy                                                       21
china                                                7654547798

          6 meera

CUSTOMER_ID FIRSTNAME
----------- --------------------------------------------------
LASTNAME                                                  AGE
-------------------------------------------------- ----------
COUNTRY                                            PHONE_NUMBER
-------------------------------------------------- ------------
jasmine                                                    25
russia                                               9797547798


6 rows selected.

Querry 1:

SQL> select firstname,customer_id from interview;

FIRSTNAME                                          CUSTOMER_ID
-------------------------------------------------- -----------
Amit                                                         1
sophia                                                       2
akira                                                        3
carlos                                                       4
jenila                                                       5
meera                                                        6

6 rows selected.

QUERRY 2:

SQL> SELECT FirstName, LastName
  2  FROM interview;

FIRSTNAME
--------------------------------------------------
LASTNAME
--------------------------------------------------
Amit
Sharma

sophia
miller

akira
tanaka


FIRSTNAME
--------------------------------------------------
LASTNAME
--------------------------------------------------
carlos
hemas

jenila
rosy

meera
jasmine


6 rows selected.

QUERRY 3 :SQL> SELECT FirstName, LastName
  2  FROM interview;

FIRSTNAME
--------------------------------------------------
LASTNAME
--------------------------------------------------
Amit
Sharma

sophia
miller

akira
tanaka


FIRSTNAME
--------------------------------------------------
LASTNAME
--------------------------------------------------
carlos
hemas

jenila
rosy

meera
jasmine


6 rows selected.

SQL>SQL> SELECT FirstName, LastName
  2  FROM interview;

FIRSTNAME
--------------------------------------------------
LASTNAME
--------------------------------------------------
Amit
Sharma

sophia
miller

akira
tanaka


FIRSTNAME
--------------------------------------------------
LASTNAME
--------------------------------------------------
carlos
hemas

jenila
rosy

meera
jasmine


6 rows selected.

QUERRY 3 : SELECT Statement with WHERE Clause

SQL> select firstname,lastname
  2  from interview
  3  where age = 21;

FIRSTNAME
--------------------------------------------------
LASTNAME
--------------------------------------------------
jenila
rosy


