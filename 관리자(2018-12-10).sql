--����� ������ȭ���Դϴ�.

--���ο� ����� user2�� ���� 
CREATE USER user2 IDENTIFIED BY 1234;
DROP USER USER2; 

--���� user2 ����ڴ� �ƹ��� ������ ���� ����
--������ user1���� DBA��� ���� ������ �ο������� ���� �ǹ������� DBA ������ �ƹ����Գ� �Ժη� �ο����� �ʴ´�.
--����Ŭ���� DBA������ �ְ������ sysdba���ѿ� ���ϴ� ���� �����̾ �Ժη� �ο��ϸ� ������ ����ų�� �ִ�.
--�ְ� �������� ����Ŭ������ sysdba, MySQL������ root, MSSQL������ sa, ��Ÿ �ٸ��������� administer, root��� �Ѵ�.
--DDL-sysdba, DBA / DML-�Ϲ����� / DCL-sysdba ���� ��

--user2���� �������� ������ �ο��ϴ� ����� ���� �н�
--�ӽ÷� ���̺� �ϳ� ����
CREATE TABLE tbl_tset(
    st_name CHAR(20),
    st_addr nVARCHAR2(125)
);

--1. user2���� CRUD�� ���� �� �� �ִ� ������ �ο�
GRANT SELECT ON tbl_test TO user2;          --user2���� tbl_test ���̺��� ���� ���� �ִ� ������ �ְڴ�.
GRANT INSERT ON tbl_test TO user2;          --INSERT(�߰�) ���� �ο�
GRANT SELECT, INSERT, UPDATE, DELETE ON tbl_tset TO user2;          --CRUD�� ���� ��� �ο�

--Ư������ڿ��� �ο��� ������ ��ȸ�ϴ� PL/SQL(����Ŭ SQL)
SELECT * FROM USER_TAB_PRIVS_MADE WHERE GRANTEE = 'USER2';        --����� ID�� �빮�ڷ�



