SQL> create database puma;
SP2-0640: Not connected
SQL> conn
Enter user-name: hr
Enter password:
Connected.

EXAMPLE 1 CREATE DATABASE

SQL> CREATE TABLE airtelcustomer (
  2    airtelcustomerid NUMBER PRIMARY KEY,
  3    firstname VARCHAR2(50),
  4    lastname VARCHAR2(50),
  5    country VARCHAR2(50),
  6    age NUMBER CHECK (age >= 0 AND age <= 99),
  7    phone VARCHAR2(10)
  8  );

Table created.