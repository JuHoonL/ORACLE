--관리자화면
CREATE TABLESPACE iolistTS DATAFILE 'D:\bizwork\ordata\iolist.dbf' Size 100M AutoExtend On Next 100k;

CREATE USER iolist IDENTIFIED BY 1234 DEFAULT TABLESPACE iolistTS;

GRANT DBA to iolist;