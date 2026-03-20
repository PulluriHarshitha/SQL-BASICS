EXCEPT OPERATOR

In SQL, EXCEPT operator is used to return the records that are present in the first query but not present in the second query.

🔹 Simple Definition

EXCEPT = First query result – Second query result

EXAMPLE:

CREATE TABLE EMP_harshu (
    id INT,
    name VARCHAR2(50),
    salary NUMBER
);

Table created.

CREATE TABLE EMP_rohit (
    id INT,
    name VARCHAR2(50),
    salary NUMBER
);

Table created.

INSERT ALL
  INTO EMP_harshu VALUES (1,'Ravi',100)
  INTO EMP_harshu VALUES (2,'Sita',200)
  INTO EMP_harshu VALUES (3,'Ram',300)
  INTO EMP_harshu VALUES (4,'John',400)
SELECT * FROM dual;

4 rows created.

INSERT ALL
  INTO EMP_rohit VALUES (5,'pavi',1000)
  INTO EMP_rohit VALUES (9,'Sima',2000)
  INTO EMP_rohit VALUES (10,'Rem',3900)
  INTO EMP_rohit VALUES (4,'Jack',4500)
SELECT * FROM dual;

4 rows created.

OUTPUT 1:
SELECT * FROM EMP_harshu
MINUS
SELECT * FROM EMP_rohit;


#IMPORTANT POINT:minus (use instead of EXCEPT)


        ID NAME                                                   SALARY
---------- -------------------------------------------------- ----------
         1 Ravi                                                      100
         2 Sita                                                      200
         3 Ram                                                       300
         4 John                                                      400


