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

