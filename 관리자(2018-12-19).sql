--여기는 관리자 화면입니다.
CREATE USER myuser1 IDENTIFIED BY 1111 DEFAULT TABLESPACE mytbl;

ALTER USER myuser1 DEFAULT TABLESPACE mytsA;

GRANT CREATE TABLE TO myuser1;
GRANT SELECT, INSERT, UPDATE, DELETE ON [TABLE] TO myuser1;
GRANT RESOURCE TO myuser1;

GRANT CREATE SESSION TO myuser1;

CREATE TABLESPACE mytsA DATAFILE 'd:/bizwork/ordata/mytsA.dbf' SIZE 100M AUTOEXTEND ON NEXT 100k;

--user나 ts 등 소문자로 만들어줘도 저장될때는 대문자로 저장되므로 불러와줄때는 대문자로 불러와줘야한다.




