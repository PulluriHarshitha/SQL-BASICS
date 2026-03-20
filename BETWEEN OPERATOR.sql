SQL BETWEEN Operator

BETWEEN operator is used to select values that lie within a specified range.

👉 It includes both the starting value and ending value.including both limits

value >= start AND value <= end

EXAMPLE 1:NUMBERS RANGE

CREATE TABLE childstudent (
    id NUMBER,
    marks NUMBER,
    school varchar2(50)
);

Table Created.

INSERT INTO childstudent VALUES (1, 50 ,'kerla model school');
 
1 row created.

INSERT INTO childstudent VALUES (2, 65 ,'vishwabharthi school');

1 row created.

INSERT INTO childstudent VALUES (3, 80 ,'vaishitha school');

1 row created.

INSERT INTO childstudent VALUES (4, 90, 'kakatiya schools');

1 row created.


SQL> select * from childstudent
  2  where marks between 60 and 85;

        ID      MARKS SCHOOL
---------- ---------- --------------------------------------------------
         2         65 vishwabharthi school
         3         80 vaishitha school



