--여기는 관리자화면입니다.

--새로운 사용자 user2를 생성 
CREATE USER user2 IDENTIFIED BY 1234;
DROP USER USER2; 

--현재 user2 사용자는 아무런 권한이 없는 상태
--지난번 user1에는 DBA라는 통합 권한을 부여했지만 실제 실무에서는 DBA 권한을 아무에게나 함부로 부여하지 않는다.
--오라클에서 DBA권한은 최고권한인 sysdba권한에 준하는 높은 권한이어서 함부로 부여하면 문제를 일으킬수 있다.
--최고 권한으로 오라클에서는 sysdba, MySQL에서는 root, MSSQL에서는 sa, 기타 다른곳에서는 administer, root라고 한다.
--DDL-sysdba, DBA / DML-일반유저 / DCL-sysdba 에게 줌

--user2에게 세부적인 권한을 부여하는 방법에 대해 학습
--임시로 테이블 하나 생성
CREATE TABLE tbl_tset(
    st_name CHAR(20),
    st_addr nVARCHAR2(125)
);

--1. user2에게 CRUD를 실행 할 수 있는 권한을 부여
GRANT SELECT ON tbl_test TO user2;          --user2에게 tbl_test 테이블을 읽을 수만 있는 권한을 주겠다.
GRANT INSERT ON tbl_test TO user2;          --INSERT(추가) 권한 부여
GRANT SELECT, INSERT, UPDATE, DELETE ON tbl_tset TO user2;          --CRUD의 권한 모두 부여

--특정사용자에게 부여된 권한을 조회하는 PL/SQL(오라클 SQL)
SELECT * FROM USER_TAB_PRIVS_MADE WHERE GRANTEE = 'USER2';        --사용자 ID는 대문자로



