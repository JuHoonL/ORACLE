--����� ������ ȭ���Դϴ�.
CREATE USER myuser1 IDENTIFIED BY 1111 DEFAULT TABLESPACE mytbl;

ALTER USER myuser1 DEFAULT TABLESPACE mytsA;

GRANT CREATE TABLE TO myuser1;
GRANT SELECT, INSERT, UPDATE, DELETE ON [TABLE] TO myuser1;
GRANT RESOURCE TO myuser1;

GRANT CREATE SESSION TO myuser1;

CREATE TABLESPACE mytsA DATAFILE 'd:/bizwork/ordata/mytsA.dbf' SIZE 100M AUTOEXTEND ON NEXT 100k;

--user�� ts �� �ҹ��ڷ� ������൵ ����ɶ��� �빮�ڷ� ����ǹǷ� �ҷ����ٶ��� �빮�ڷ� �ҷ�������Ѵ�.




