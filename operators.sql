SQL - Logical Operators

SQL Logical Operators are used to test conditions in queries, returning results as TRUE, FALSE, or UNKNOWN. They help in combining, negating, and comparing conditions, enabling precise data retrieval and filtering.

1) ARITHMETIC OPERATORS

SQL> CREATE TABLE emp_salary (
  2    emp_id NUMBER,
  3    emp_name VARCHAR2(30),
  4    salary NUMBER
  5  );

Table created.

SQL> INSERT INTO emp_salary VALUES (1, 'Ravi', 20000);

1 row created.

SQL> INSERT INTO emp_salary VALUES (2, 'Anu', 30000);

1 row created.

SQL> INSERT INTO emp_salary VALUES (3, 'Kiran', 40000);

1 row created.

SQL> desc emp_salary
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMP_ID                                             NUMBER
 EMP_NAME                                           VARCHAR2(30)
 SALARY                                             NUMBER

2. output)SELECT emp_name, salary + 5000 AS new_salary FROM emp_salary;

EMP_NAME                       NEW_SALARY
------------------------------ ----------
Ravi                                25000
Anu                                 35000
Kiran                               45000

3.output)SELECT salary - 2000 AS reduced_salary FROM employees;


SQL> SELECT salary - 2000 AS reduced_salary FROM employees;

REDUCED_SALARY
--------------
         22000
         15000
         15000
          7000
          4000
          2800
          2800
          2200
         10008
          7000
          6200

REDUCED_SALARY
--------------
          5700
          5800
          4900
          9000
          1100
           900
           800
           600
           500
          6000
          6200

REDUCED_SALARY
--------------
          5900
          4500
          3800
          1200
           700
           400
           200
          1300
           800
           500
           100

REDUCED_SALARY
--------------
          1300
           900
           400
           200
          1600
          1200
           700
           500
          1500
          1100
           600

REDUCED_SALARY
--------------
           500
         12000
         11500
         10000
          9000
          8500
          8000
          7500
          7000
          6000
          5500

REDUCED_SALARY
--------------
          5000
          8000
          7500
          7000
          6000
          5500
          5000
          8500
          7500
          5200
          4800

REDUCED_SALARY
--------------
          4400
          4200
          9500
          8000
          7600
          5400
          5300
          4100
          9000
          6800
          6600

REDUCED_SALARY
--------------
          6400
          5000
          4200
          1200
          1100
           500
           800
          2200
          2100
          1400
          1000

REDUCED_SALARY
--------------
          1800
          1600
           900
           500
          2000
          1900
          1200
           800
          1100
          1000
           600

REDUCED_SALARY
--------------
           600
          2400
         11000
          4000
          4500
          8000
         10008
          6300

107 rows selected.

