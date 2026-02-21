SQL> create database puma;
SP2-0640: Not connected
SQL> conn
Enter user-name: hr
Enter password:
Connected.

EXAMPLE 1 CREATE DATABASE

SQL> CREATE TABLE airtelcustomer (
  2    airtelcustomerid NUMBER PRIMARY KEY,
  3    firstname VARCHAR2(50),
  4    lastname VARCHAR2(50),
  5    country VARCHAR2(50),
  6    age NUMBER CHECK (age >= 0 AND age <= 99),
  7    phone VARCHAR2(10)
  8  );

Table created.

SQL> INSERT ALL
  2    INTO airtelcustomer VALUES (1, 'harshu', 'pulluri', 'india', 20, '987654321')
  3    INTO airtelcustomer VALUES (2, 'rohit', 'reddi', 'usa', 21, '987654021')
  4    INTO airtelcustomer VALUES (3, 'adhavith', 'reddi', 'japan', 28, '987954091')
  5    INTO airtelcustomer VALUES (4, 'manasa', 'reddy', 'uk', 27, '887954091')
  6    INTO airtelcustomer VALUES (5, 'sathuakka', 'dyvarshetti', 'spain', 23, '887974098')
  7    INTO airtelcustomer VALUES (6, 'vaishu', 'reddi', 'germany', 25, '888994098')
  8  SELECT * FROM dual;

6 rows created.

OUTPUT 1: total data

SQL> select * from airtelcustomer;

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------
               1 harshu
pulluri
india                                                      20 987654321

               2 rohit
reddi
usa                                                        21 987654021

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------

               3 adhavith
reddi
japan                                                      28 987954091

               4 manasa
reddy

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------
uk                                                         27 887954091

               5 sathuakka
dyvarshetti
spain                                                      23 887974098

               6 vaishu

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------
reddi
germany                                                    25 888994098


6 rows selected.

OUTPUT 2 : IF YOU WANT SPECFIC COLOUMNS

SQL> select firstname,country,age from airtelcustomer;

FIRSTNAME
--------------------------------------------------
COUNTRY                                                   AGE
-------------------------------------------------- ----------
harshu
india                                                      20

rohit
usa                                                        21

adhavith
japan                                                      28


FIRSTNAME
--------------------------------------------------
COUNTRY                                                   AGE
-------------------------------------------------- ----------
manasa
uk                                                         27

sathuakka
spain                                                      23

vaishu
germany                                                    25


6 rows selected.

OUTPUT 3 : SPECFIC CONDITION 

select * from airtelcustomer where country = 'india';

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------
               1 harshu
pulluri
india                                                      20 987654321

OUTPUT 4 : Age > 25 unna records

SQL> select * from airtelcustomer where age > 20;

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------
               2 rohit
reddi
usa                                                        21 987654021

               3 adhavith
reddi
japan                                                      28 987954091

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------

               4 manasa
reddy
uk                                                         27 887954091

               5 sathuakka
dyvarshetti

AIRTELCUSTOMERID FIRSTNAME
---------------- --------------------------------------------------
LASTNAME
--------------------------------------------------
COUNTRY                                                   AGE PHONE
-------------------------------------------------- ---------- ----------
spain                                                      23 887974098

               6 vaishu
reddi
germany                                                    25 888994098

OUTPUT 5 : RENAME THE TABLE_NAME

QUERRY:RENAME old_table_name TO new_table_name;

rename airtelcustomer to jiocustomer;

Table renamed.

select firstname, age from jiocustomer order by age desc;

FIRSTNAME                                                 AGE
-------------------------------------------------- ----------
adhavith                                                   28
manasa                                                     27
vaishu                                                     25
sathuakka                                                  23
rohit                                                      21
harshu                                                     20

6 rows selected.

SQL> alter table jiocustomer drop column lastname;

Table altered.

SQL> desc jiocustomer;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 AIRTELCUSTOMERID                          NOT NULL NUMBER
 FIRSTNAME                                          VARCHAR2(50)
 COUNTRY                                            VARCHAR2(50)
 AGE                                                NUMBER
 PHONE                                              VARCHAR2(10)

SQL> alter table jiocustomer drop (airtelcustomerid,age);

Table altered.

SQL> desc jiocustomer ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FIRSTNAME                                          VARCHAR2(50)
 COUNTRY                                            VARCHAR2(50)
 PHONE                                              VARCHAR2(10)

SQL>SQL> drop table jiocustomer purge;

Table dropped.

SQL> desc jiocustomer;
ERROR:
ORA-04043: object jiocustomer does not exist

#PURGE keyword to delete table permantely on database;








