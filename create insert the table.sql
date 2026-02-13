SQL> create table harshu(
  2   h_id number,
  3   h_name varchar2(50),
  4   salary number,
  5   bonus number
  6   );

Table created.

SQL> insert all into harshu values (1, 'rohit',80000,700)
  2             into harshu values (2, 'reddy',70000,500)
  3             into harshu values (3, 'nani',65000,400)
  4  select * from dual;

3 rows created.
SQL> select
  2  h_name,
  3  salary,
  4  bonus,
  5  salary + bonus as total_income,
  6  salary - bonus as after_bonus_deduction,
  7  salary * 0.10 as ten_percent_salary,
  8  salary / 12 as monthly_salary,
  9  mod(salary, 10000) as salary_remainder
 10  from harshu;

H_NAME                                                 SALARY      BONUS
-------------------------------------------------- ---------- ----------
TOTAL_INCOME AFTER_BONUS_DEDUCTION TEN_PERCENT_SALARY MONTHLY_SALARY
------------ --------------------- ------------------ --------------
SALARY_REMAINDER
----------------
rohit                                                   80000        700
       80700                 79300               8000     6666.66667
               0

reddy                                                   70000        500
       70500                 69500               7000     5833.33333
               0

H_NAME                                                 SALARY      BONUS
-------------------------------------------------- ---------- ----------
TOTAL_INCOME AFTER_BONUS_DEDUCTION TEN_PERCENT_SALARY MONTHLY_SALARY
------------ --------------------- ------------------ --------------
SALARY_REMAINDER
----------------

nani                                                    65000        400
       65400                 64600               6500     5416.66667
            5000


EXAMPLE 2: SQL> create table rohith (
  2  id_int,
  3  name
  4
SQL> create table
  2
SQL> create table rohith (
  2  id number,
  3  name varchar2(50),
  4  marks number
  5  );

Table created.

SQL> insert all
  2  into rohith values(1,'harshu' ,74)
  3  into rohith values(2,'sweety' ,87)
  4  into rohith values(3,'chintu' ,56)
  5  select * from dual;

3 rows created.

SQL> select * from rohith
  2  where marks >=50;

        ID NAME                                                    MARKS
---------- -------------------------------------------------- ----------
         1 harshu                                                     74
         2 sweety                                                     87
         3 chintu                                                     56

SQL>