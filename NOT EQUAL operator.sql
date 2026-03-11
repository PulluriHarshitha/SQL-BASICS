NOT EQUAL OPERATORS

The NOT EQUAL operator in SQL is used to find rows where two values are different.

In simple words, it selects records that do not match a given value.

Symbols used:

1) <>

2) !=

Both mean “not equal to.”
i

EXAMPLES:

create table hostel (
id number,
name varchar2(50),
age number,
college varchar2(50),
city varchar2(50)
);

Table created.

SQL> insert into hostel values (1,'harshu',20,'smec','knr');

1 row created.

SQL> insert into hostel values (2,'vaishu',20,'smec','hsbd');

1 row created.

SQL> insert into hostel values (3,'teju',22,'cmrit','vmd');

1 row created.

SQL> insert into hostel values (4,'shiny',26,'ku','mncl');

1 row created.

SQL> insert into hostel values (5,'reethu',27,'cec','wgl');

1 row created.

SQL> insert into hostel values (6,'chinni',24,'deg','jgl');

1 row created.

SQL> select * from hostel;


        ID NAME              AGE COLLEGE                                       CITY
---------- ---------- ---------- -------------------------------------------------- ---------------
         1 harshu             20 smec                                          knr
         2 vaishu             20 smec                                          hsbd
         3 teju               22 cmrit                                         vmd
         4 shiny              26 ku                                            mncl
         5 reethu             27 cec                                           wgl
         6 chinni             24 deg                                           jgl

6 rows selected.

output 1: