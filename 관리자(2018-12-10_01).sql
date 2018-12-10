--����� ������ȭ���Դϴ�.

DROP USER user2 CASCADE;        --CASCADE : user�� Ȱ���ߴ� ��� ������ ����
CREATE USER user2 IDENTIFIED BY 1234 DEFAULT TABLESPACE myts;

CREATE TABLE tbl_test (
    st_name CHAR(10),
    st_addr nVARCHAR2(125)
);

DROP TABLE tbl_test;

GRANT SELECT ON tbl_test TO user2;
GRANT SELECT, INSERT, UPDATE, DELETE ON tbl_test TO user2;

--���� ������� user2�� �����ϰ�, CRUD ������ �ο������� ���� ���� ������ �ο����� �ʾҴ�.

--CONNECT ���ӱ����� DB������ ���� ���� ������ �ſ� �ٸ���
--11gEX������ ����� ���� ������ �ȴ�. ���� CONNECT ������ �Ϲ����� ��� ������� ����. 
GRANT CONNECT TO user2;

--���ӱ����� �ο��ϱ� ���ؼ��� CREATE SESSION �� �̿��Ͽ� ������ �ο��Ѵ�.
GRANT CREATE SESSION TO user2;
REVOKE CREATE TABLE FROM user2;
GRANT CREATE TABLE TO user2;

--user2�� ����� TABLE SPACE�� �ϳ� ����
CREATE TABLESPACE myts DATAFILE 'D:\bizwork\ordata\myts.dbf' SIZE 100M AUTOEXTEND ON NEXT 1M MAXSIZE UNLIMITED;
--myts��� �̸��� ������ ����� ������ myts���Ͽ� ���̺��� �����ϰٴ�. ������� 100�ް��̰� 
--�����ϸ� 1�ް��� Ȯ���ض� �ִ�ũ��� ������ ����. ��� ��ɾ�

--TABLESPACE�� �����ϰ�, ��� ������ �����϶�.
DROP TABLESPACE myts INCLUDING CONTENTS AND DATAFILES CASCADE CONSTRAINTS;

DEFAULT TABLESPACE 
