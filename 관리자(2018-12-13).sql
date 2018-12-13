--여기는 관리자 화면입니다.

CREATE USER myuser IDENTIFIED BY 1234;

--아직 TABLESPACE를 생성하기전에 사용자를 먼저 등록하다 보니 DEFAULT TABLESPACE(이하 TS)를 지정하지 않았다. 
-- 이럴경우 DEFAULT TS는 SYSTEM 설정 값으로 지정되는데, 이것은 실무에서 매우 유용한 방법이다.
CREATE USEr myuser IDENTIFIED BY 1234 DEFAULT TABLESPACE;

GRANT DBA TO myuser;

CREATE TABLESPACE myTBL DATAFILE 'D:\bizwork\ordata\myTBL.dbf' SIZE 100M AUTOEXTEND ON NEXT 1M MAXSIZE UNLIMITED;

--myuser 사용자에게 TABLESPACE 를 적용하지 않았는데 이제는 TS를 생성했으므로 myuser에게 DEFAULT TS를 지정하겟다.
ALTER USER myuser DEFAULT TABLESPACE myTBL;

