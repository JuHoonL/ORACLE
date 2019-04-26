--여기는 관리자 화면

CREATE TABLESPACE healthts datafile 'D:/bizwork/ordata/healthts.dbf' SIZE 1M AUTOEXTEND ON NEXT 100k;

CREATE USER userhealth IDENTIFIED BY 1234 DEFAULT TABLESPACE healthts;

GRANT dba TO userhealth; 