Microsoft Windows [Version 10.0.18363.719]
(c) 2019 Microsoft Corporation. All rights reserved.

C:\Users\ACER>cd..

C:\Users>cd..

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>my sql -u root -p
'my' is not recognized as an internal or external command,
operable program or batch file.

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 11
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database biogfrafi
    -> create database biogfrafi;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'create database biogfrafi' at line 2
MariaDB [(none)]> create database biografi;
Query OK, 1 row affected (0.003 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| biografi           |
| galih              |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
8 rows in set (0.003 sec)

MariaDB [(none)]> use biografi;
Database changed
MariaDB [biografi]> exit
Bye

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 12
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> DROP database biografi
    -> DROP database biografi;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DROP database biografi' at line 2
MariaDB [(none)]> DROP database biografi;
Query OK, 0 rows affected (0.003 sec)

MariaDB [(none)]> create db_galih
    -> create db_galih;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'db_galih
create db_galih' at line 1
MariaDB [(none)]> create db_galih;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'db_galih' at line 1
MariaDB [(none)]> create database galih;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| galih              |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
7 rows in set (0.003 sec)

MariaDB [(none)]> use galih;
Database changed
MariaDB [galih]> create table galih_akbar (id varchar(10), nama varchar(50), alamat varchar(100));
Query OK, 0 rows affected (0.083 sec)

MariaDB [galih]> show tables;
+-----------------+
| Tables_in_galih |
+-----------------+
| galih_akbar     |
+-----------------+
1 row in set (0.003 sec)

MariaDB [galih]> desc galih_akbar;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| id     | varchar(10)  | YES  |     | NULL    |       |
| nama   | varchar(50)  | YES  |     | NULL    |       |
| alamat | varchar(100) | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.026 sec)

MariaDB [galih]> INSERT into galih_akbar (id, nama, alamat) values ("1","galih","cijambe");
Query OK, 1 row affected (0.089 sec)

MariaDB [galih]> select from * galih_akbar;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from * galih_akbar' at line 1
MariaDB [galih]> select * from galih_akbar;
+------+-------+---------+
| id   | nama  | alamat  |
+------+-------+---------+
| 1    | galih | cijambe |
+------+-------+---------+
1 row in set (0.002 sec)

MariaDB [galih]> > INSERT into galih_akbar (id, nama, alamat) values ("2","haikal","subang");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '> INSERT into galih_akbar (id, nama, alamat) values ("2","haikal","subang")' at line 1
MariaDB [galih]> > INSERT into galih_akbar (id, nama, alamat) values ("2","haikal","subang");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '> INSERT into galih_akbar (id, nama, alamat) values ("2","haikal","subang")' at line 1
MariaDB [galih]>  INSERT into galih_akbar (id, nama, alamat) values ("1","galih","cijambe");
Query OK, 1 row affected (0.006 sec)

MariaDB [galih]> show tables;
+-----------------+
| Tables_in_galih |
+-----------------+
| galih_akbar     |
+-----------------+
1 row in set (0.002 sec)

MariaDB [galih]> select * from galih_akbar;
+------+-------+---------+
| id   | nama  | alamat  |
+------+-------+---------+
| 1    | galih | cijambe |
| 1    | galih | cijambe |
+------+-------+---------+
2 rows in set (0.001 sec)

MariaDB [galih]> delete from galih_akbar where id="1"
    -> delete from;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'delete from' at line 2
MariaDB [galih]> delete from galih_akbar where id="1";
Query OK, 2 rows affected (0.012 sec)

MariaDB [galih]> select * from galih_akbar;
Empty set (0.001 sec)

MariaDB [galih]>  INSERT into galih_akbar (id, nama, alamat) values ("1","galih","cijambe");
Query OK, 1 row affected (0.005 sec)

MariaDB [galih]> select * from galih_akbar;
+------+-------+---------+
| id   | nama  | alamat  |
+------+-------+---------+
| 1    | galih | cijambe |
+------+-------+---------+
1 row in set (0.001 sec)

MariaDB [galih]> update galih_akbar set nama="GALIH AKBAR" where id="1";
Query OK, 1 row affected (0.027 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [galih]> select * from galih_akbar;
+------+-------------+---------+
| id   | nama        | alamat  |
+------+-------------+---------+
| 1    | GALIH AKBAR | cijambe |
+------+-------------+---------+
1 row in set (0.001 sec)

MariaDB [galih]> exit
Bye

C:\xampp\mysql\bin>