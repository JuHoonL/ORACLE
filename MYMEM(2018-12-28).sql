--����� myMEM ȭ���Դϴ�.

CREATE TABLE tbl_primary(
    p_id        NUMBER          PRIMARY KEY,
    p_name      nVARCHAR2(50)   NOT NULL,
    p_tel       nVARCHAR2(20)
);

--���� ���̺��� PK�� �� ������(���ڵ�)�� �ĺ��ϴ� � ��ҷμ� ����� �ȴ�.
--�׷��� ����(�л�����, ��ǰ����, �ŷ�ó����, �μ�����)�� �����ϴ� ���̺����� ���Ƿ� �ڵ带 �����ؼ�
--�����͸� �߰�(INSERT)�� �� ����Ѵ�. ������ ������ �����Ͱ� �ٷ����� �߰� �Ǵ� 
--work table(��ǰ���Ը���, �л�����ó�� ��) �� ��� �ڵ尳���� �߰��ϱⰡ �ſ� ��ƴ�.
--�׷��� �̷� ���̺��� ���Ƿ� id Į���� �ϳ� �߰��ϰ� ������ ������ ��(���ڰ� �����Ǵ� ����)�� �����
--������ �Ѵ�. MySQL���� DB ������ AUTO INCREMENT��� �ɼ��� �־ PKĮ���� �ش� �ɼ��� �������ָ� INSERT��
--������ �� �ڵ����� 1�� ������ ���� �����ϰ� Į���� �Ҵ� ���ֵ��� �� �� �ִ�.

--�׷���, ����Ŭ(11g ����)������ AUTO INCREMENT �ɼ��� ����.
--������� ����Ŭ�� �ִ� SEQUENCE��� ��ü�� Ȱ���ؼ� AUTO INCREMENT  ȿ���� ���� �� �ִ�.

--���ο� SEQUENCE ��ü�� ����
--NOMAXVALUE : ���Ѿ���(10�� 27�±���) , MAXVALUE 1000 : 1000������(������:10�� 27�±���)  
--NOMINVALUE : -1���� ������ , MINVALUE 0 : ���� 0������(������:10�� -27�±���)
CREATE SEQUENCE PK_SEQ START WITH 1 INCREMENT BY 1 NOMAXVALUE NOMINVALUE ;

DROP SEQUENCE PK_SEQ;

--DUAL : ����Ŭ�� �׽�Ʈ�� DUMY TABLE
SELECT 30 * 40 FROM DUAL;

--������ ������ PK_SEQ �������� �׽�Ʈ �� ����
--SELECT �ڿ��� ���̺� Į����, �Լ���, ���ĵ鸸 �ü�����(�ڿ� ���� �͵��� �������� �ڹٿ����� �޼���ó��(���ϰ�) �ൿ��)
--NEXTVAL : ������ 
SELECT PK_SEQ.NEXTVAL FROM DUAL;

INSERT INTO tbl_primary VALUES(0,'ȫ�浿','0001');

INSERT INTO tbl_primary VALUEs(PK_SEQ.NEXTVAL,'�̸���','0005');

DELETE FROM tbl_primary; 

SELECT * fROM tbl_primary;

--INSERT�� ������ �� ���� ID ���� SEQ�� ���ؼ� Ȯ���ϴ� ���
--INSERT�� ������� ���� ���׿��� ��ȸ�� �ϸ� ������ ����.
SELECT PK_SEQ.CURRVAL FROM DUAL;

--INSERT�� ������� �ʾ� ������ �߻��ϰ� ���� ID���� ���� �� ���� �� ����Ŭ�� SYSTEM DB(�ý��� ������ ����)�� ���� ����
--��ȸ�� �� �ִ�.
SELECT * FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'PK_SEQ';

--�����Լ��� ����ؼ� PK�� ����� ���
SELECT DBMS_RANDOM.VALUE FROM DUAL;
SELECT ROUND(DBMS_RANDOM.VALUE(100000, 9999999),0) FROM DUAL;

INSERT INTO tbl_primary VALUES(ROUND(DBMS_RANDOM.VALUE(040000, 049999),0),'������','0002');


--GUID(Global Unique Identifier) : 16������ 32�ڸ� ������(�ߺ�����), ��ȣŰ�� �ַλ��
--UUID(Universally Unique Identifier)
SELECT SYS_GUID() FROM DUAL;

--SYS_GUID�� ����� ���� PK�� ������ �� CHAR(32) �̻��� ������ �����Ѵ�.
--SYS_GUID�� ����ؼ� PK�� ������ �� CHAR(32)���� ������ �߻��ϴ� ��찡 �ִ�. �׷� ���� CLOB�� BLOB�� ����
INSERT INTO tbl_primary VALUES(SYS_GUID(),'�Ӳ���','0000');

--NOCACHE CYCLE : 1����10���� ������ ������ �����ʰ� 1���� �ٽ� ������ ��,���ſ����⶧���� ���� ���̺� ����� �߻����ؾ���
CREATE SEQUENCE SEQ_TEST START WITH 1 INCREMENT BY 1 MAXVALUE 10 NOCACHE CYCLE;

SELECT SEQ_TEST.NEXTVAL FROM DUAL;
DROP SEQUENCE SEQ_TEST;

--������ ������ �����ϳ� START WITH�� ���� �ȉ�(�����Ϸ��� �ٽ� �������� ����������)
ALTER SEQUENCE SEQ_TEST INCREMENT BY 2 MAXVALUE 20 NOCYCLE; 
ALTER SEQUENCE SEQ_TEST INCREMENT BY 2 MAXVALUE 20 NOCACHE CYCLE;

--�������� ���� �������� �����ϰ� ���� ���� �ִ�.(MAXVALUE�� START�Ǵ� ������ ū������ �����������)
CREATE SEQUENCE ASC_SEQ START WITH 99999 INCREMENT BY -1 MAXVALUE 100000 ;

SELECT ASC_SEQ.NEXTVAL FROM DUAL;

cREATE TABLE tbl_mytable(
    p_id    NUMBER           PRIMARY KEY,
    p_name  nVARCHAR2(50)    NOT NULL,
    p_tel   nVARCHAR2(50)    NOT NULL,
    p_kor   NUMBER(3),
    p_eng   NUMBER(3)
);

SELECT * FROM tbl_mytable;

CREATE SEQUENCE MY_SEQ START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, 'ȫ�浿', '010-2487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '�̸���', '010-3487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '������', '010-4487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '�̼���', '010-5487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '�̹��', '010-6487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '�庸��', '010-7487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '�Ӳ���', '010-8487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '�̼���', '010-9487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '������', '010-1487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '���߱�', '010-1087-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

SELECT p_id, p_name, (p_kor + p_eng) AS �հ� FROM tbl_mytable;