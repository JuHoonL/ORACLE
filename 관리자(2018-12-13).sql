--����� ������ ȭ���Դϴ�.

CREATE USER myuser IDENTIFIED BY 1234;

--���� TABLESPACE�� �����ϱ����� ����ڸ� ���� ����ϴ� ���� DEFAULT TABLESPACE(���� TS)�� �������� �ʾҴ�. 
-- �̷���� DEFAULT TS�� SYSTEM ���� ������ �����Ǵµ�, �̰��� �ǹ����� �ſ� ������ ����̴�.
CREATE USEr myuser IDENTIFIED BY 1234 DEFAULT TABLESPACE;

GRANT DBA TO myuser;

CREATE TABLESPACE myTBL DATAFILE 'D:\bizwork\ordata\myTBL.dbf' SIZE 100M AUTOEXTEND ON NEXT 1M MAXSIZE UNLIMITED;

--myuser ����ڿ��� TABLESPACE �� �������� �ʾҴµ� ������ TS�� ���������Ƿ� myuser���� DEFAULT TS�� �����ϰٴ�.
ALTER USER myuser DEFAULT TABLESPACE myTBL;

