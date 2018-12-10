--여기는 관리자화면입니다.

DROP USER user2 CASCADE;        --CASCADE : user가 활동했던 모든 정보를 삭제
CREATE USER user2 IDENTIFIED BY 1234 DEFAULT TABLESPACE myts;

CREATE TABLE tbl_test (
    st_name CHAR(10),
    st_addr nVARCHAR2(125)
);

DROP TABLE tbl_test;

GRANT SELECT ON tbl_test TO user2;
GRANT SELECT, INSERT, UPDATE, DELETE ON tbl_test TO user2;

--현재 여기까지 user2를 생성하고, CRUD 권한을 부여했지만 아직 접속 권한을 부여하지 않았다.

--CONNECT 접속권한은 DB버전에 따라서 권한 정도가 매우 다르다
--11gEX에서는 상당히 높은 권한이 된다. 따라서 CONNECT 권한은 일반적인 경우 사용하지 않음. 
GRANT CONNECT TO user2;

--접속권한을 부여하기 위해서는 CREATE SESSION 을 이용하여 권한을 부여한다.
GRANT CREATE SESSION TO user2;
REVOKE CREATE TABLE FROM user2;
GRANT CREATE TABLE TO user2;

--user2가 사용할 TABLE SPACE를 하나 생성
CREATE TABLESPACE myts DATAFILE 'D:\bizwork\ordata\myts.dbf' SIZE 100M AUTOEXTEND ON NEXT 1M MAXSIZE UNLIMITED;
--myts라는 이름의 파일을 만들고 앞으로 myts파일에 테이블을 저장하겟다. 사이즈는 100메가이고 
--부족하면 1메가씩 확장해라 최대크기는 제한이 없다. 라는 명령어

--TABLESPACE를 삭제하고, 모든 정보를 제거하라.
DROP TABLESPACE myts INCLUDING CONTENTS AND DATAFILES CASCADE CONSTRAINTS;

DEFAULT TABLESPACE 
