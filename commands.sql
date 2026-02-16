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


EXAMPLE 2

SQL> create table flipkart(
  2  job_id number primary key,
  3  job_title varchar2(50),
  4  min_salary number(1,2),
  5  max_salary number(10,2)
  6  );

Table created.

SQL> ALTER TABLE flipkart MODIFY min_salary NUMBER(10,2);

Table altered.

SQL> ALTER TABLE flipkart MODIFY max_salary NUMBER(10,2);

Table altered.

SQL> desc flipkart;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 JOB_ID                                    NOT NULL NUMBER
 JOB_TITLE                                          VARCHAR2(50)
 MIN_SALARY                                         NUMBER(10,2)
 MAX_SALARY                                         NUMBER(10,2)

SQL> insert into flipkart(job_id,job_title,min_salary,max_salary)
  2  values(1231,'manager',35000,85000);

1 row created.
SQL> select * from flipkart;

    JOB_ID JOB_TITLE                                          MIN_SALARY
---------- -------------------------------------------------- ----------
MAX_SALARY
----------
      1231 manager                                                 35000
     85000


SQL> delete from flipkart
  2  where job_id = 1231;

1 row deleted.

SQL> select * from flipkart where job_id = 1231;

no rows selected

SQL> commit;

Commit complete.

SQL> desc flipkart;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 JOB_ID                                    NOT NULL NUMBER
 JOB_TITLE                                          VARCHAR2(50)
 MIN_SALARY                                         NUMBER(10,2)
 MAX_SALARY                                         NUMBER(10,2)

DQL--Data Query Language
DQL is used to fetch data from the database. The main command is SELECT, which retrieves records based on the query. The output is returned as a result set (a temporary table) that can be viewed or used in applications.


SQL> select * from employees;

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        100 Steven               King
SKING                     515.123.4567         17-JUN-03 AD_PRES         24000
                                     90

        101 Neena                Kochhar
NKOCHHAR                  515.123.4568         21-SEP-05 AD_VP           17000
                      100            90

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        102 Lex                  De Haan
LDEHAAN                   515.123.4569         13-JAN-01 AD_VP           17000
                      100            90

        103 Alexander            Hunold
AHUNOLD                   590.423.4567         03-JAN-06 IT_PROG          9000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      102            60

        104 Bruce                Ernst
BERNST                    590.423.4568         21-MAY-07 IT_PROG          6000
                      103            60

        105 David                Austin

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
DAUSTIN                   590.423.4569         25-JUN-05 IT_PROG          4800
                      103            60

        106 Valli                Pataballa
VPATABAL                  590.423.4560         05-FEB-06 IT_PROG          4800
                      103            60


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        107 Diana                Lorentz
DLORENTZ                  590.423.5567         07-FEB-07 IT_PROG          4200
                      103            60

        108 Nancy                Greenberg
NGREENBE                  515.124.4569         17-AUG-02 FI_MGR          12008
                      101           100

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        109 Daniel               Faviet
DFAVIET                   515.124.4169         16-AUG-02 FI_ACCOUNT       9000
                      108           100

        110 John                 Chen
JCHEN                     515.124.4269         28-SEP-05 FI_ACCOUNT       8200

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      108           100

        111 Ismael               Sciarra
ISCIARRA                  515.124.4369         30-SEP-05 FI_ACCOUNT       7700
                      108           100

        112 Jose Manuel          Urman

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
JMURMAN                   515.124.4469         07-MAR-06 FI_ACCOUNT       7800
                      108           100

        113 Luis                 Popp
LPOPP                     515.124.4567         07-DEC-07 FI_ACCOUNT       6900
                      108           100


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        114 Den                  Raphaely
DRAPHEAL                  515.127.4561         07-DEC-02 PU_MAN          11000
                      100            30

        115 Alexander            Khoo
AKHOO                     515.127.4562         18-MAY-03 PU_CLERK         3100
                      114            30

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        116 Shelli               Baida
SBAIDA                    515.127.4563         24-DEC-05 PU_CLERK         2900
                      114            30

        117 Sigal                Tobias
STOBIAS                   515.127.4564         24-JUL-05 PU_CLERK         2800

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      114            30

        118 Guy                  Himuro
GHIMURO                   515.127.4565         15-NOV-06 PU_CLERK         2600
                      114            30

        119 Karen                Colmenares

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
KCOLMENA                  515.127.4566         10-AUG-07 PU_CLERK         2500
                      114            30

        120 Matthew              Weiss
MWEISS                    650.123.1234         18-JUL-04 ST_MAN           8000
                      100            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        121 Adam                 Fripp
AFRIPP                    650.123.2234         10-APR-05 ST_MAN           8200
                      100            50

        122 Payam                Kaufling
PKAUFLIN                  650.123.3234         01-MAY-03 ST_MAN           7900
                      100            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        123 Shanta               Vollman
SVOLLMAN                  650.123.4234         10-OCT-05 ST_MAN           6500
                      100            50

        124 harshu               Mourgos
KMOURGOS                  650.123.5234         16-NOV-07 ST_MAN           5800

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      100            50

        125 Julia                Nayer
JNAYER                    650.124.1214         16-JUL-05 ST_CLERK         3200
                      120            50

        126 Irene                Mikkilineni

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
IMIKKILI                  650.124.1224         28-SEP-06 ST_CLERK         2700
                      120            50

        127 James                Landry
JLANDRY                   650.124.1334         14-JAN-07 ST_CLERK         2400
                      120            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        128 Steven               Markle
SMARKLE                   650.124.1434         08-MAR-08 ST_CLERK         2200
                      120            50

        129 Laura                Bissot
LBISSOT                   650.124.5234         20-AUG-05 ST_CLERK         3300
                      121            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        130 Mozhe                Atkinson
MATKINSO                  650.124.6234         30-OCT-05 ST_CLERK         2800
                      121            50

        131 James                Marlow
JAMRLOW                   650.124.7234         16-FEB-05 ST_CLERK         2500

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      121            50

        132 TJ                   Olson
TJOLSON                   650.124.8234         10-APR-07 ST_CLERK         2100
                      121            50

        133 Jason                Mallin

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
JMALLIN                   650.127.1934         14-JUN-04 ST_CLERK         3300
                      122            50

        134 Michael              Rogers
MROGERS                   650.127.1834         26-AUG-06 ST_CLERK         2900
                      122            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        135 Ki                   Gee
KGEE                      650.127.1734         12-DEC-07 ST_CLERK         2400
                      122            50

        136 Hazel                Philtanker
HPHILTAN                  650.127.1634         06-FEB-08 ST_CLERK         2200
                      122            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        137 Renske               Ladwig
RLADWIG                   650.121.1234         14-JUL-03 ST_CLERK         3600
                      123            50

        138 Stephen              Stiles
SSTILES                   650.121.2034         26-OCT-05 ST_CLERK         3200

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      123            50

        139 John                 Seo
JSEO                      650.121.2019         12-FEB-06 ST_CLERK         2700
                      123            50

        140 Joshua               Patel

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
JPATEL                    650.121.1834         06-APR-06 ST_CLERK         2500
                      123            50

        141 Trenna               Rajs
TRAJS                     650.121.8009         17-OCT-03 ST_CLERK         3500
                      124            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        142 Curtis               Davies
CDAVIES                   650.121.2994         29-JAN-05 ST_CLERK         3100
                      124            50

        143 Randall              Matos
RMATOS                    650.121.2874         15-MAR-06 ST_CLERK         2600
                      124            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        144 Peter                Vargas
PVARGAS                   650.121.2004         09-JUL-06 ST_CLERK         2500
                      124            50

        145 John                 Russell
JRUSSEL                   011.44.1344.429268   01-OCT-04 SA_MAN          14000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
            .4        100            80

        146 Karen                Partners
KPARTNER                  011.44.1344.467268   05-JAN-05 SA_MAN          13500
            .3        100            80

        147 Alberto              Errazuriz

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
AERRAZUR                  011.44.1344.429278   10-MAR-05 SA_MAN          12000
            .3        100            80

        148 Gerald               Cambrault
GCAMBRAU                  011.44.1344.619268   15-OCT-07 SA_MAN          11000
            .3        100            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        149 Eleni                Zlotkey
EZLOTKEY                  011.44.1344.429018   29-JAN-08 SA_MAN          10500
            .2        100            80

        150 Peter                Tucker
PTUCKER                   011.44.1344.129268   30-JAN-05 SA_REP          10000
            .3        145            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        151 David                Bernstein
DBERNSTE                  011.44.1344.345268   24-MAR-05 SA_REP           9500
           .25        145            80

        152 Peter                Hall
PHALL                     011.44.1344.478968   20-AUG-05 SA_REP           9000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
           .25        145            80

        153 Christopher          Olsen
COLSEN                    011.44.1344.498718   30-MAR-06 SA_REP           8000
            .2        145            80

        154 Nanette              Cambrault

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
NCAMBRAU                  011.44.1344.987668   09-DEC-06 SA_REP           7500
            .2        145            80

        155 Oliver               Tuvault
OTUVAULT                  011.44.1344.486508   23-NOV-07 SA_REP           7000
           .15        145            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        156 Janette              King
JKING                     011.44.1345.429268   30-JAN-04 SA_REP          10000
           .35        146            80

        157 Patrick              Sully
PSULLY                    011.44.1345.929268   04-MAR-04 SA_REP           9500
           .35        146            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        158 Allan                McEwen
AMCEWEN                   011.44.1345.829268   01-AUG-04 SA_REP           9000
           .35        146            80

        159 Lindsey              Smith
LSMITH                    011.44.1345.729268   10-MAR-05 SA_REP           8000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
            .3        146            80

        160 Louise               Doran
LDORAN                    011.44.1345.629268   15-DEC-05 SA_REP           7500
            .3        146            80

        161 Sarath               Sewall

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
SSEWALL                   011.44.1345.529268   03-NOV-06 SA_REP           7000
           .25        146            80

        162 Clara                Vishney
CVISHNEY                  011.44.1346.129268   11-NOV-05 SA_REP          10500
           .25        147            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        163 Danielle             Greene
DGREENE                   011.44.1346.229268   19-MAR-07 SA_REP           9500
           .15        147            80

        164 Mattea               Marvins
MMARVINS                  011.44.1346.329268   24-JAN-08 SA_REP           7200
            .1        147            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        165 David                Lee
DLEE                      011.44.1346.529268   23-FEB-08 SA_REP           6800
            .1        147            80

        166 Sundar               Ande
SANDE                     011.44.1346.629268   24-MAR-08 SA_REP           6400

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
            .1        147            80

        167 Amit                 Banda
ABANDA                    011.44.1346.729268   21-APR-08 SA_REP           6200
            .1        147            80

        168 Lisa                 Ozer

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
LOZER                     011.44.1343.929268   11-MAR-05 SA_REP          11500
           .25        148            80

        169 Harrison             Bloom
HBLOOM                    011.44.1343.829268   23-MAR-06 SA_REP          10000
            .2        148            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        170 Tayler               Fox
TFOX                      011.44.1343.729268   24-JAN-06 SA_REP           9600
            .2        148            80

        171 William              Smith
WSMITH                    011.44.1343.629268   23-FEB-07 SA_REP           7400
           .15        148            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        172 Elizabeth            Bates
EBATES                    011.44.1343.529268   24-MAR-07 SA_REP           7300
           .15        148            80

        173 Sundita              Kumar
SKUMAR                    011.44.1343.329268   21-APR-08 SA_REP           6100

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
            .1        148            80

        174 Ellen                Abel
EABEL                     011.44.1644.429267   11-MAY-04 SA_REP          11000
            .3        149            80

        175 Alyssa               Hutton

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
AHUTTON                   011.44.1644.429266   19-MAR-05 SA_REP           8800
           .25        149            80

        176 Jonathon             Taylor
JTAYLOR                   011.44.1644.429265   24-MAR-06 SA_REP           8600
            .2        149            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        177 Jack                 Livingston
JLIVINGS                  011.44.1644.429264   23-APR-06 SA_REP           8400
            .2        149            80

        178 Kimberely            Grant
KGRANT                    011.44.1644.429263   24-MAY-07 SA_REP           7000
           .15        149

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        179 Charles              Johnson
CJOHNSON                  011.44.1644.429262   04-JAN-08 SA_REP           6200
            .1        149            80

        180 Winston              Taylor
WTAYLOR                   650.507.9876         24-JAN-06 SH_CLERK         3200

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      120            50

        181 Jean                 Fleaur
JFLEAUR                   650.507.9877         23-FEB-06 SH_CLERK         3100
                      120            50

        182 Martha               Sullivan

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
MSULLIVA                  650.507.9878         21-JUN-07 SH_CLERK         2500
                      120            50

        183 Girard               Geoni
GGEONI                    650.507.9879         03-FEB-08 SH_CLERK         2800
                      120            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        184 Nandita              Sarchand
NSARCHAN                  650.509.1876         27-JAN-04 SH_CLERK         4200
                      121            50

        185 Alexis               Bull
ABULL                     650.509.2876         20-FEB-05 SH_CLERK         4100
                      121            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        186 Julia                Dellinger
JDELLING                  650.509.3876         24-JUN-06 SH_CLERK         3400
                      121            50

        187 Anthony              Cabrio
ACABRIO                   650.509.4876         07-FEB-07 SH_CLERK         3000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      121            50

        188 Kelly                Chung
KCHUNG                    650.505.1876         14-JUN-05 SH_CLERK         3800
                      122            50

        189 Jennifer             Dilly

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
JDILLY                    650.505.2876         13-AUG-05 SH_CLERK         3600
                      122            50

        190 Timothy              Gates
TGATES                    650.505.3876         11-JUL-06 SH_CLERK         2900
                      122            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        191 Randall              Perkins
RPERKINS                  650.505.4876         19-DEC-07 SH_CLERK         2500
                      122            50

        192 Sarah                Bell
SBELL                     650.501.1876         04-FEB-04 SH_CLERK         4000
                      123            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        193 Britney              Everett
BEVERETT                  650.501.2876         03-MAR-05 SH_CLERK         3900
                      123            50

        194 Samuel               McCain
SMCCAIN                   650.501.3876         01-JUL-06 SH_CLERK         3200

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      123            50

        195 Vance                Jones
VJONES                    650.501.4876         17-MAR-07 SH_CLERK         2800
                      123            50

        196 Alana                Walsh

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
AWALSH                    650.507.9811         24-APR-06 SH_CLERK         3100
                      124            50

        197 Kevin                Feeney
KFEENEY                   650.507.9822         23-MAY-06 SH_CLERK         3000
                      124            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        198 Donald               OConnell
DOCONNEL                  650.507.9833         21-JUN-07 SH_CLERK         2600
                      124            50

        199 Douglas              Grant
DGRANT                    650.507.9844         13-JAN-08 SH_CLERK         2600
                      124            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        200 Jennifer             Whalen
JWHALEN                   515.123.4444         17-SEP-03 AD_ASST          4400
                      101            10

        201 Michael              Hartstein
MHARTSTE                  515.123.5555         17-FEB-04 MK_MAN          13000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      100            20

        202 Pat                  Fay
PFAY                      603.123.6666         17-AUG-05 MK_REP           6000
                      201            20

        203 Susan                Mavris

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
SMAVRIS                   515.123.7777         07-JUN-02 HR_REP           6500
                      101            40

        204 Hermann              Baer
HBAER                     515.123.8888         07-JUN-02 PR_REP          10000
                      101            70


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        205 Shelley              Higgins
SHIGGINS                  515.123.8080         07-JUN-02 AC_MGR          12008
                      101           110

        206 William              Gietz
WGIETZ                    515.123.8181         07-JUN-02 AC_ACCOUNT       8300
                      205           110

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------


107 rows selected.

SQL> select first_name
  2  from employees;

FIRST_NAME
--------------------
Ellen
Sundar
Mozhe
David
Hermann
Shelli
Amit
Elizabeth
Sarah
David
Laura

FIRST_NAME
--------------------
Harrison
Alexis
Anthony
Gerald
Nanette
John
Kelly
Karen
Curtis
Lex
Julia

FIRST_NAME
--------------------
Jennifer
Louise
Bruce
Alberto
Britney
Daniel
Pat
Kevin
Jean
Tayler
Adam

FIRST_NAME
--------------------
Timothy
Ki
Girard
William
Douglas
Kimberely
Nancy
Danielle
Peter
Michael
Shelley

FIRST_NAME
--------------------
Guy
Alexander
Alyssa
Charles
Vance
Payam
Alexander
Janette
Steven
Neena
Sundita

FIRST_NAME
--------------------
Renske
James
David
Jack
Diana
Jason
Steven
James
Mattea
Randall
Susan

FIRST_NAME
--------------------
Samuel
Allan
Irene
harshu
Julia
Donald
Christopher
TJ
Lisa
Karen
Valli

FIRST_NAME
--------------------
Joshua
Randall
Hazel
Luis
Trenna
Den
Michael
John
Nandita
Ismael
John

FIRST_NAME
--------------------
Sarath
Lindsey
William
Stephen
Martha
Patrick
Jonathon
Winston
Sigal
Peter
Oliver

FIRST_NAME
--------------------
Jose Manuel
Peter
Clara
Shanta
Alana
Matthew
Jennifer
Eleni

107 rows selected.

SQL> select first_name
  2  from employees
  3  where salary < 20000;

FIRST_NAME
--------------------
Neena
Lex
Alexander
Bruce
David
Valli
Diana
Nancy
Daniel
John
Ismael

FIRST_NAME
--------------------
Jose Manuel
Luis
Den
Alexander
Shelli
Sigal
Guy
Karen
Matthew
Adam
Payam

FIRST_NAME
--------------------
Shanta
harshu
Julia
Irene
James
Steven
Laura
Mozhe
James
TJ
Jason

FIRST_NAME
--------------------
Michael
Ki
Hazel
Renske
Stephen
John
Joshua
Trenna
Curtis
Randall
Peter

FIRST_NAME
--------------------
John
Karen
Alberto
Gerald
Eleni
Peter
David
Peter
Christopher
Nanette
Oliver

FIRST_NAME
--------------------
Janette
Patrick
Allan
Lindsey
Louise
Sarath
Clara
Danielle
Mattea
David
Sundar

FIRST_NAME
--------------------
Amit
Lisa
Harrison
Tayler
William
Elizabeth
Sundita
Ellen
Alyssa
Jonathon
Jack

FIRST_NAME
--------------------
Kimberely
Charles
Winston
Jean
Martha
Girard
Nandita
Alexis
Julia
Anthony
Kelly

FIRST_NAME
--------------------
Jennifer
Timothy
Randall
Sarah
Britney
Samuel
Vance
Alana
Kevin
Donald
Douglas

FIRST_NAME
--------------------
Jennifer
Michael
Pat
Susan
Hermann
Shelley
William

106 rows selected.

SQL>





