--����� ������ ȭ���Դϴ�.

--�ڹ� ���ø����̼ǿ��� ����� tablespace�� ����ڸ� ����

CREATE TABLESPACE bbsTS DATAFILE 'd:/bizwork/ordata/bbsTS.dbf' SIZE 100M AUTOEXTEND ON NEXT 100k;

CREATE USER bbsUSER IdENtified BY 1234 DEFAULT TABLESPACE bbsTS;

GRANT dba tO bbsUSER;