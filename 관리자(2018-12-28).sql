--여기는 관리자 화면입니다.

--자바 어플리케이션에서 사용할 tablespace와 사용자를 생성

CREATE TABLESPACE bbsTS DATAFILE 'd:/bizwork/ordata/bbsTS.dbf' SIZE 100M AUTOEXTEND ON NEXT 100k;

CREATE USER bbsUSER IdENtified BY 1234 DEFAULT TABLESPACE bbsTS;

GRANT dba tO bbsUSER;