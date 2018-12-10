--����� ������ȭ���Դϴ�.
DROP USER user2 CASCADE;

CREATE USER user2 IDENTIFIED BY 1234  DEFAULT TABLESPACE myts;

--���ӱ��� �ο�
GRANT CREATE SESSION TO user2;

--TABLESPACE ��� ���� �ο�
GRANT RESOURCE TO user2;

--TABLE ���� ���Ѻο�
GRANT CREATE TABLE TO user2;

REVOKE CREATE TABLE FROM user2;

GRANT CREATE, INSERT, UPDATE, DELETE ON tbl_test TO user2;

--����������� TABLESPACE�� �ٽ� ����
--�⺻������� ������ �����ϸ� ����ڴ� default tablespace�� SYSTEM(����Ŭ�⺻) tablespace�� �����Ѵ�.
--�� SYSTEM ts�� DBA ������ ���� ����ڸ� ������ �����ؼ� �⺻������ CREATE TABLE ���� ���� �����δ� TABLE�� �����ϱⰡ ��ƴ�.
--�׷��� ������ ����ڿ� TABLESPACE(���� TS�� ��)�� �����ϰ� �̹� ������ ����ڸ� ���� ���� TS�� ������ �ִ� ���� ����.
--��Ģ�� TS�� ���� �����ϰ�, ����ڸ� �����ؼ� DEFAULT TS�� �����ϴ� ���� ������ ����ڸ� ���� ����ϰ� �Ǹ� ���߿� 
--�ٽ� ������ �ؼ� ����� TS�� ������ �� �ִ�.
--DCL ��ɾ�� CRAETE DROP �� �Բ� ����� �� �ִ� ALTER ����� �̿��ؼ� ������ �����Ѵ�.
ALTER USER user2 DEFAULT TABLESPACE myts  ;

--�������
ALTER USER user2 IDENTIFIED BY 1111;