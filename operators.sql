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


OUTPUT 4:SQL> SELECT salary * 12 AS annual_salary FROM employees;

ANNUAL_SALARY
-------------
       288000
       204000
       204000
       108000
        72000
        57600
        57600
        50400
       144096
       108000
        98400

ANNUAL_SALARY
-------------
        92400
        93600
        82800
       132000
        37200
        34800
        33600
        31200
        30000
        96000
        98400

ANNUAL_SALARY
-------------
        94800
        78000
        69600
        38400
        32400
        28800
        26400
        39600
        33600
        30000
        25200

ANNUAL_SALARY
-------------
        39600
        34800
        28800
        26400
        43200
        38400
        32400
        30000
        42000
        37200
        31200

ANNUAL_SALARY
-------------
        30000
       168000
       162000
       144000
       132000
       126000
       120000
       114000
       108000
        96000
        90000

ANNUAL_SALARY
-------------
        84000
       120000
       114000
       108000
        96000
        90000
        84000
       126000
       114000
        86400
        81600

ANNUAL_SALARY
-------------
        76800
        74400
       138000
       120000
       115200
        88800
        87600
        73200
       132000
       105600
       103200

ANNUAL_SALARY
-------------
       100800
        84000
        74400
        38400
        37200
        30000
        33600
        50400
        49200
        40800
        36000

ANNUAL_SALARY
-------------
        45600
        43200
        34800
        30000
        48000
        46800
        38400
        33600
        37200
        36000
        31200

ANNUAL_SALARY
-------------
        31200
        52800
       156000
        72000
        78000
       120000
       144096
        99600

107 rows selected.

OUTPUT 5 :SELECT salary / 2 AS half_salary FROM employees;

SQL> SELECT salary / 2 AS half_salary FROM employees;

HALF_SALARY
-----------
      12000
       8500
       8500
       4500
       3000
       2400
       2400
       2100
       6004
       4500
       4100

HALF_SALARY
-----------
       3850
       3900
       3450
       5500
       1550
       1450
       1400
       1300
       1250
       4000
       4100

HALF_SALARY
-----------
       3950
       3250
       2900
       1600
       1350
       1200
       1100
       1650
       1400
       1250
       1050

HALF_SALARY
-----------
       1650
       1450
       1200
       1100
       1800
       1600
       1350
       1250
       1750
       1550
       1300

HALF_SALARY
-----------
       1250
       7000
       6750
       6000
       5500
       5250
       5000
       4750
       4500
       4000
       3750

HALF_SALARY
-----------
       3500
       5000
       4750
       4500
       4000
       3750
       3500
       5250
       4750
       3600
       3400

HALF_SALARY
-----------
       3200
       3100
       5750
       5000
       4800
       3700
       3650
       3050
       5500
       4400
       4300

HALF_SALARY
-----------
       4200
       3500
       3100
       1600
       1550
       1250
       1400
       2100
       2050
       1700
       1500

HALF_SALARY
-----------
       1900
       1800
       1450
       1250
       2000
       1950
       1600
       1400
       1550
       1500
       1300

HALF_SALARY
-----------
       1300
       2200
       6500
       3000
       3250
       5000
       6004
       4150

107 rows selected.


2) COMPARISON OPERATORS

CREATE TABLE emp_age (
  emp_id NUMBER,
  emp_name VARCHAR2(30),
  age NUMBER
);

Table created.

SQL>



