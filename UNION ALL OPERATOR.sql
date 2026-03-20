SQL UNION ALL Operator

UNION ALL is used to combine results from two or more SELECT queries into one result.

👉 It returns all rows, including duplicate values.

Key Points

Combines multiple SELECT results

Keeps duplicates (this is the main difference from UNION)

All SELECT queries must have:

Same number of columns

Similar data types

Same column order

#SYNTAX:

CREATE TABLE Students_A (
    id INT,
    name VARCHAR2(50),
    dept VARCHAR2(50)
);

CREATE TABLE Students_B (
    id INT,
    name VARCHAR2(50),
    dept VARCHAR2(50)
);


INSERT INTO Students_A VALUES (1, 'Ram','IT');
INSERT INTO Students_A VALUES (2, 'Sita','CSE');
INSERT INTO Students_A VALUES (3, 'Ravi','CSM');

INSERT INTO Students_B VALUES (2, 'Sita','EEE');
INSERT INTO Students_B VALUES (3, 'Raju','ECE');
INSERT INTO Students_B VALUES (4, 'Kiran','IT');

OUTPUT 1:

SELECT id, name FROM Students_A
UNION ALL
SELECT id, name FROM Students_B;

SQL> SELECT id, name FROM Students_A
  2  UNION ALL
  3  SELECT id, name FROM Students_B;

        ID NAME
---------- --------------------------------------------------
         1 Ram
         2 Sita
         3 Ravi
         2 Sita
         3 Raju
         4 Kiran

SELECT id, name FROM Students_A WHERE id > 1
UNION ALL
SELECT id, name FROM Students_B WHERE id > 2;

SQL> SELECT id, name FROM Students_A WHERE id > 1
  2  UNION ALL
  3  SELECT id, name FROM Students_B WHERE id > 2;

        ID NAME
---------- --------------------------------------------------
         2 Sita
         3 Ravi
         3 Raju
         4 Kiran

SELECT id, name, dept FROM Students_A
UNION
SELECT id, name, dept FROM Students_B;

final ga ani vasthayiii output 


