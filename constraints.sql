  create table depts(b_id number(10)constraint depts_b_id_pk primary key,
  2   b_name char(5) check(b_name in('csg','aids','it')));


Table created.

 create table stu5(s_id number(10)constraint stu5_s_id_pk primary key,
  2  s_name char(20)constraint stu5_s_name_nn not null,
  3  b_id number(10) constraint stu5_b_id_fk references depts(b_id),
  4  mobile number(10),
  5  email varchar (30) check (email like '%@gmail.com'));

Table created.

#creating table

 create table year(b_id number(10)constraint year_b_id_pk primary key,
  2  b_name char(5) check(b_name in(1,2,3,4)));

Table created.

SQL> create table stu6(s_id number(10)constraint stu6_s_id_pk primary key,
  2  s_name char(20)constraint stu6_s_name_nn not null,
  3  b_id number(10) constraint stu6_b_id_fk references year(b_id),
  4  mobile number(10),
  5  email varchar (30) check (email like '%@gmail.com'));

Table created.

SQL> insert into year values(1, 1);

1 row created.

SQL> insert into year values(2, 2
  2
SQL>
SQL> insert into year values(2, 2);

1 row created.

SQL> insert into year values(3, 3);

1 row created.

SQL> insert into year values(4, 4);

1 row created.

SQL> select * from year;

      B_ID B_NAM
---------- -----
         1 1
         2 2
         3 3
         4 4
SQL> insert into stu6 values(1250,'raj',1,7645375896,'raj@gmail.com');

1 row created.

SQL> insert into stu6 values(1251,'ram',1,8645365898,'ram@gmail.com');

1 row created.

SQL> insert into stu6 values(1231,'das',1,7641365999,'das@gmail.com');

1 row created.

SQL> insert into stu6 values(1235,'jay',1,7864135965,'jay@gmail.com');

1 row created.

SQL> select * from stu6;

      S_ID S_NAME                     B_ID     MOBILE
---------- -------------------- ---------- ----------
EMAIL
------------------------------
      1250 raj                           1 7645375896
raj@gmail.com

      1251 ram                           1 8645365898
ram@gmail.com

      1231 das                           1 7641365999
das@gmail.com


      S_ID S_NAME                     B_ID     MOBILE
---------- -------------------- ---------- ----------
EMAIL
------------------------------
      1235 jay                           1 7864135965
jay@gmail.com


SQL>

