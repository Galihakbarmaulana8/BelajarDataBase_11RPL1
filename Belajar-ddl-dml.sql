MariaDB [(none)]> CREATE DATABASE sekolahh;
Query OK, 1 row affected 
MariaDB [(none)]> use sekolah;
Database changed
MariaDB [sekolah]> SHOW DATABASES;
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
MariaDB [sekolah]> CREATE TABLE siswa(nis CHAR(8)PRIMARY KEY, nama VARCHAR(100), jk CHAR(1),tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100274','FIRDAUS WIGUNA','L','SUBANG','2005-08-17','KALIJATI','11-RPL-1','70.97');
Query OK, 1 row affected (0.009 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES ('12100281','GALIH AKBAR MAULANA','L','TANGERANG','2005-07-21','CIJAMBE','11-RPL-1','80.88');
Query OK, 1 row affected (0.006 sec)
MariaDB [sekolah]>  INSERT INTO siswa VALUES ('12100053','ALYA ELIDHIYA','P','SUBANG','2006-04-16','SUBANG','11-RPL-1','80.58');
Query OK, 1 row affected (0.006 sec)
MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100293','HAIKAL FADHILAH IBRAHIM','L','SUBANG','2005-11-07','SUBANG','11-RPL-1','70.20');
Query OK, 1 row affected (0.008 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES ('12100362','KARTIKA SARI DEWI','L','CIANJUR','2005-09-02','SUBANG','11-RPL-1','80.88');
Query OK, 1 row affected (0.011 sec)
MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="BANDUNG" WHERE nis="12100268";
Query OK, 0 rows affected (0.017 sec)
Rows matched: 0  Changed: 0  Warnings: 0
MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="2005-05-05", alamat="BINONG" WHERE nis="12100274";
Query OK, 1 row affected (0.007 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> DELETE FROM siswa WHERE nis="12100274";
Query OK, 1 row affected (0.015 sec)

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+-------------------------+------+-----------+------------+---------+----------+-------+
| nis      | nama                    | jk   | tmp_lahir | tgl_lahir  | alamat  | kelas    | nilai |
+----------+-------------------------+------+-----------+------------+---------+----------+-------+
| 12100053 | ALYA ELIDHIYA           | P    | SUBANG    | 2006-04-16 | SUBANG  | 11-RPL-1 | 80.58 |
| 12100281 | GALIH AKBAR MAULANA     | L    | TANGERANG | 2005-07-21 | CIJAMBE | 11-RPL-1 | 80.88 |
| 12100293 | HAIKAL FADHILAH IBRAHIM | L    | SUBANG    | 2005-11-07 | SUBANG  | 11-RPL-1 |  70.2 |
| 12100362 | KARTIKA SARI DEWI       | p    | CIANJUR   | 2005-09-02 | CIJAMBE | 11-RPL-1 | 80.88 |
+----------+-------------------------+------+-----------+------------+---------+----------+-------+
4 rows in set (0.001 sec)

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+-----------------------------+------+------------+------------+---------------------+----------+-------+
| nis      | nama                        | jk   | tmp_lahir  | tgl_lahir  | alamat              | kelas    | nilai |
+----------+-----------------------------+------+------------+------------+---------------------+----------+-------+
| 12100022 | AEF ADITYA GELAR NUGRAHA    | L    | SUBANG     | 2005-09-20 | PAGADEN             | 11-RPL-1 |  60.9 |
| 12100053 | ALYA ELIDHIYA               | P    | SUBANG     | 2006-04-16 | SUBANG              | 11-RPL-1 | 80.58 |
| 12100086 | ARIEZTO ZUCOV               | L    | SUBANG     | 2006-12-06 | KALIJATI            | 11-RPL-1 |    60 |
| 12100095 | ARZENNA HAQI MUHAMMAD       | L    | SUBANG     | 2005-11-27 | KALIJATI            | 11-RPL-1 |    66 |
| 12100098 | ASSEP RIZKI JULIANSAH       | L    | SUBANG     | 2006-07-17 | KALIJATI            | 11-RPL-1 | 66.66 |
| 12100148 | DAVID LUTFI                 | L    | SUBANG     | 2005-09-16 | MANYINGSAL          | 11-RPL-1 | 69.66 |
| 12100217 | EBEN HEZER WANGSA DJAJA     | L    | JAKARTA    | 2006-10-30 | KALIJATI            | 11-RPL-1 | 89.66 |
| 12100218 | EGAN WIRYAWAN               | L    | SUBANG     | 2006-06-16 | PERUM               | 11-RPL-1 | 79.66 |
| 12100219 | EGI RENALDI                 | L    | SUBANG     | 2006-07-26 | MANYINGSAL          | 11-RPL-1 | 76.66 |
| 12100236 | EPI HALIMAH                 | P    | SUBANG     | 2006-04-27 | SUBANG              | 11-RPL-1 | 86.99 |
| 12100249 | FADHL GAVINDAFFA ABDULLAH   | L    | SUBANG     | 2006-01-27 | CIJAMBE             | 11-RPL-1 | 79.99 |
| 12100268 | FARIZ FADLI RAFLIUDIN       | L    | YOGYAKARTA | 2005-06-22 | BELENDUNG           | 11-RPL-1 |    10 |
| 12100276 | FIRDAUS WIGUNA              | L    | SUBANG     | 2006-09-01 | PERUM               | 11-RPL-1 |    80 |
| 12100281 | GALIH AKBAR MAULANA         | L    | TANGERANG  | 2005-07-21 | CIJAMBE             | 11-RPL-1 | 80.88 |
| 12100293 | HAIKAL FADHILAH IBRAHIM     | L    | SUBANG     | 2005-11-07 | SUBANG              | 11-RPL-1 |  70.2 |
| 12100307 | HASBI DHIYA FARHANSYAHPUTRA | L    | GARUT      | 2005-11-17 | BTN GEMBOR          | 11-RPL-1 |    60 |
| 12100340 | IQBAL NAUFAL HAKIM          | L    | MAKASSAR   | 2005-12-29 | BTN GEMBOR          | 11-RPL-1 |    70 |
| 12100362 | KARTIKA SARI DEWI           | p    | CIANJUR    | 2005-09-02 | CIJAMBE             | 11-RPL-1 | 80.88 |
| 12100410 | M.IQBAL SYAHPUTRA           | L    | SUBANG     | 2006-06-26 | DANGDEUR            | 11-RPL-1 |    79 |
| 12100419 | M. DZAKY FIRDAUS            | L    | BANDUNG    | 2006-07-21 | PERUM PERMATA HIJAU | 11-RPL-1 |    89 |
| 12100452 | MOHAMMAD INDRA ERDIN        | L    | SUBANG     | 2005-09-22 | WANAREJA            | 11-RPL-1 |  79.9 |
| 12100476 | MUHAMMAD WAHYUDIN SYAWALI   | L    | JAKARTA    | 2005-11-08 | WANASARI            | 11-RPL-1 |  70.9 |
| 12100497 | MUTHIA ZAHRA RUKMANA        | P    | SUBANG     | 2006-02-12 | PALASARI            | 11-RPL-1 |  76.9 |
| 12100531 | NAZWA ANGGINA               | P    | SUBANG     | 2006-07-02 | RAWALELE            | 11-RPL-1 |  60.9 |
| 12100563 | NURUL EKA MARYANA           | P    | BANDUNG    | 2006-06-02 | SUKAMELANG          | 11-RPL-1 |  70.9 |
| 12100614 | RENALDI NURMAZID            | L    | SUBANG     | 2005-11-16 | WANAREJA            | 11-RPL-1 |  84.9 |
| 12100662 | RIZKI GIANT SEPPANGGA       | L    | SUBANG     | 2005-12-07 | SUBANG              | 11-RPL-1 |  73.9 |
| 12100670 | RIZQI CATUR MADANI          | L    | SUBANG     | 2006-06-22 | CIPAKU              | 11-RPL-1 |  76.9 |
| 12100673 | ROFI ANUGRAH FIRDAUS        | L    | SUBANG     | 2006-06-03 | SURYACIGADUNG       | 11-RPL-1 |  82.9 |
| 12100700 | SANDI ADI PRATAMA           | L    | SUBANG     | 2005-02-17 | GUNUNG SEMBUNG      | 11-RPL-1 |  67.9 |
| 12100714 | SELLY RIZKI APRILIA         | P    | SUBANG     | 2006-04-14 | CIRANGKONG          | 11-RPL-1 |  75.9 |
| 12100725 | SHABYAN DWI JUAN ADRIANSYAH | L    | SUBANG     | 2006-06-08 | KALIJATI            | 11-RPL-1 | 75.09 |
| 12100778 | TASYA AMELIA                | P    | SUBANG     | 2006-06-14 | SUBANG              | 11-RPL-1 | 80.09 |
| 12100823 | WANANDA DILLA ZAHRA         | P    | SUBANG     | 2006-01-14 | BABAKAN RAWA        | 11-RPL-1 | 90.09 |
| 12100848 | YUFA GINA MARYAFA           | P    | SUBANG     | 2006-10-27 | BINONG              | 11-RPL-1 | 86.09 |
| 12100864 | ZUNADEA KUSMIANDITA SUNTORO | L    | SUBANG     | 2006-09-07 | SUBANG              | 11-RPL-1 | 81.69 |
+----------+-----------------------------+------+------------+------------+---------------------+----------+-------+
36 rows in set (0.001 sec)