  create table depts(b_id number(10)constraint depts_b_id_pk primary key,
  2  b_name char(5) check(b_name in('csg','aids','it')));

Table created.

 create table stu5(s_id number(10)constraint stu5_s_id_pk primary key,
  2  s_name char(20)constraint stu5_s_name_nn not null,
  3  b_id number(10) constraint stu5_b_id_fk references depts(b_id),
  4  mobile number(10),
  5  email varchar (30) check (email like '%@gmail.com'));

Table created.
