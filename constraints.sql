  create table depts(b_id number(10)constraint depts_b_id_pk primary key,
  2  b_name char(5) check(b_name in('csg','aids','it')));

Table created.
