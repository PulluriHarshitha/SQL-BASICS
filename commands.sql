#COMMANDS
DDL - Data Definition Language
DDL (Data Definition Language) consists of SQL commands that can be used for defining, altering and deleting database structures such as tables, indexes and schemas. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database
 commands_create,alter,drop,truncate,rename

EXAMPLES

SQL> create table reddie (
  2  r_id int primary key,
  3  first_name varchar(50),
  4  last_name varchar(50),
  5  hire_date date
  6  );

Table created.

SQL> alter table reddie
  2  add salary number(10,2);

Table altered.

SQL> alter table reddie
  2  modify first_name varchar(100);

Table altered.

SQL> alter table reddie
  2  drop column last_name;

Table altered.
table is altered we will see like that "desc table_name"

SQL> desc reddie
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 R_ID                                      NOT NULL NUMBER(38)
 FIRST_NAME                                         VARCHAR2(100)
 HIRE_DATE                                          DATE
 SALARY                                             NUMBER(10,2)

#rename the table name

SQL> rename reddie to guptha;

Table renamed.

SQL> desc guptha
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 R_ID                                      NOT NULL NUMBER(38)
 FIRST_NAME                                         VARCHAR2(100)
 HIRE_DATE                                          DATE
 SALARY                                             NUMBER(10,2)

TRUNCATE_Remove all records from a table, including all spaces allocated for the records are removed

SQL> truncate table guptha;

Table truncated.

SQL> desc guptha;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 R_ID                                      NOT NULL NUMBER(38)
 FIRST_NAME                                         VARCHAR2(100)
 HIRE_DATE                                          DATE
 SALARY                                             NUMBER(10,2)

SQL>drop table guptha;

Table dropped.

SQL> desc guptha
ERROR:
ORA-04043: object guptha does not exist
 TABLE SHOULD BE DROP OR DELETED RANDOMLY
 FLASHBACK_restore a dropped table back from the recycle bin.

SQL> flashback table guptha to before drop;

Flashback complete.

SQL> desc guptha
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 R_ID                                      NOT NULL NUMBER(38)
 FIRST_NAME                                         VARCHAR2(100)
 HIRE_DATE                                          DATE
 SALARY                                             NUMBER(10,2)

"PURGE"TABLE MEANS PERMENTALY DELETED A DATABASE

SQL> drop table guptha purge;

Table dropped.

SQL> purge recyclebin
  2  ;

Recyclebin purged.

SQL> desc guptha;
ERROR:
ORA-04043: object guptha does not exist

 after using purge keyword table should be deleted permantely it shows error.

DML - Data Manipulation Language
DML commands are used to manipulate the data stored in database tables. With DML, you can insert new records, update existing ones, delete unwanted data or retrieve information.
commands-insert,update,delete

 create table google (
  2  job_id number primary key,
  3  job_title varchar2(50),
  4  min_salary number(1,2),
  5  max_salary number(10,20)
  6  );

Table created.

SQL> desc jobs;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 JOB_ID                                    NOT NULL VARCHAR2(10)
 JOB_TITLE                                 NOT NULL VARCHAR2(35)
 MIN_SALARY                                         NUMBER(6)
 MAX_SALARY                                         NUMBER(6)

Data type mistakes in your table
❌ NUMBER(1,2)

This is invalid logic because scale (2) cannot be greater than precision (1).

❌ NUMBER(10,20)

This is also invalid because scale (20) cannot be greater than precision (10). 
after we modify the table

SQL> ALTER TABLE google MODIFY min_salary NUMBER(10,2);

Table altered.

SQL> ALTER TABLE google MODIFY max_salary NUMBER(10,2);

Table altered.

SQL> desc google;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 JOB_ID                                    NOT NULL NUMBER
 JOB_TITLE                                          VARCHAR2(50)
 MIN_SALARY                                         NUMBER(10,2)
 MAX_SALARY                                         NUMBER(10,2)

if u want insert a values on above table

SQL> insert into google(job_id,job_title,min_salary,max_salary)
  2  values(1250,'hr',25000,150000);

1 row created.

SQL> insert into google values(1231,'manager',30000,2000000);

1 row created.

SQL> select * from google;

    JOB_ID JOB_TITLE                                          MIN_SALARY
---------- -------------------------------------------------- ----------
MAX_SALARY
----------
      1250 hr                                                      25000
    150000

      1231 manager                                                 30000
   2000000


SQL>






