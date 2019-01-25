--����� gradeUser ȭ���Դϴ�.
DESC tbl_student;
SELECT * FROM tbl_student;
DESC tbl_score01;

-- ID   �й�  ����  ����
CREATE TABLE tbl_score01 (
    sc_id       NUMBER          PRIMARY KEY,
    sc_st_num   VARCHAR2(5)     NOT NULL,
    sc_subject  VARCHAR2(3)     NOT NULL,
    sc_score    NUMBER(3)
);

SELECT COUNT(*) FROM tbl_score01;

SELECT * FROM tbl_score01;

--�������̺� ����
--ID   �����ȣ     �����    ��米��
CREATE TABLE tbl_subject (
    su_num      VARCHAR2(3)     PRIMARY KEY,
    su_name     nVARCHAR2(20)   NOT NULL,
    su_pro      nVARCHAR2(30)
);

SELECT * FROM tbl_subject;

--��� Į���� �����Ͱ� ���� ��� ����ϴ� ���
--VALUES���� ������ ����Ʈ�� ���̺� �����Ҷ� ������ �ۼ�
INSERT INTO tbl_subject VALUES('001','����','ȫ�浿');

INSERT INTO tbl_subject(su_num,su_name) VALUES('002','����');

--���̺��� ������ ����� Į�� ������ �𸣰ų� ��Ȯ�� Į���� ��ġ�ϵ���
--�����͸� �ۼ��ϴ� ���
INSERT INTO tbl_subject(su_name,su_num) VALUES('����','003');

UPDATE tbl_subject SET su_pro = '������' WHERE su_num = '003';

INSERT INTO tbl_subject(su_num,su_name) VALUES('004','����');

INSERT INTO tbl_subject(su_num,su_name) VALUES('005','����');

INSERT INTO tbl_subject(su_num,su_name) VALUES('006','����');

UPDATE tbl_subject SET su_name = '����' WHERE su_num = '006';

INSERT INTO tbl_subject(su_num,su_name) VALUES('900','��������');

DELETE FROM tbl_subject WHERE su_num = '900';

--�������̺��� �����͸� Ȯ���ϴµ� ����Į���� �����͵��� ������� �ƴϰ�,
--���� ��ȣ�� �Ǿ��ִ�. ��������� �˱Ⱑ �ſ��ƴ�.
--�������̺�� �������̺��� join�� �����ؼ� ��ȸ�� �Ϸ����Ѵ�.

SELECT SC.sc_st_num, SC.sc_subject, SU.su_name, SC.sc_score 
FROM tbl_score01 SC LEFT JOIN tbl_subject SU ON SC.sc_subject = SU.su_num;

--������ȸ�� �ϴµ� �л����� ��� ������ �������� Ȯ���ϱⰡ ��ƴ�.
--�л����̺�� join �����ؼ� ��ȸ�� �Ϸ��� �Ѵ�.
SELECT SC.sc_st_num, ST.st_name, SC.sc_score 
FROM tbl_student ST LEFT JOIN tbl_score01 SC ON ST.st_num = SC.sc_st_num ORDER BY ST.st_num;

ALTER TABLE tbl_student MODIFY st_num CHAR(5);
ALTER TABLE tbl_score01 MODIFY sc_st_num CHAR(5);

--CHAR���� VARCHAR2���� ��� ������ ũ�Ⱑ �޶� ��������ȸ�� �ȵǹǷ� TRIM���� ������ �����������
SELECT SC.sc_st_num, ST.st_name, SC.sc_score 
FROM tbl_student ST LEFT JOIN tbl_score01 SC ON TRIM(ST.st_num) = TRIM(SC.sc_st_num) ORDER BY ST.st_num;

ALTER TABLE tbl_score01 MODIFY sc_st_num VARCHAR2(5);

--�л����̺�� �������̺�, �������̺��� ���ÿ� join ���� view�����
CREATE VIEW view_score
AS
SELECT SC.sc_st_num AS �й�, ST.st_name AS �л��̸�, SC.sc_subject AS �����ȣ,
SU.su_name AS �����̸�, SC.sc_score AS ��������
FROM tbl_score01 SC 
LEFT JOIN tbl_student ST ON TRIM(ST.st_num) = TRIM(SC.sc_st_num) 
LEFT JOIN tbl_subject SU ON SC.sc_subject = SU.su_num ORDER BY ST.st_num;

SELECT * FROM view_score;

--�л������� �й� : 00001
--���������� �й� : 001
--ON TRIM( '00' || SC.sc_st_num ) = TRIM( ST.st_num) => ||�� ���ڿ� �ռͽ� ���
--ON LPAD(SC.sc_st_num,5,'0') = ST.st_num => 5�ڸ��� ����µ� ���ʰ��鿡 0�� ä���־��

SELECT LPAD(sc_st_num,5,'0') FROM tbl_score01;

--view�� �̿��� SELECT ����
SELECT �й�, �л��̸�, SUM(��������) FROM view_score GROUP BY �й�, �л��̸�;

cREATE VIEW �����϶�ǥ
AS
SELECT �й�, �л��̸�, SUM(DECODE(�����ȣ,'001',��������)) AS ��������,
    SUM(DECODE(�����ȣ,'002',��������)) AS ��������,
    SUM(DECODE(�����ȣ,'003',��������)) AS ��������,
    SUM(DECODE(�����ȣ,'004',��������)) AS ��������,
    SUM(DECODE(�����ȣ,'005',��������)) AS ��������,
    SUM(��������) AS ����, AVG(��������) AS ���,
    RANK() OVER(ORDER BY AVG(��������) DESC) AS ����
FROM view_score GROUP BY �й�, �л��̸� ORDER BY ����;

SELECT * FROM �����϶�ǥ;

INSERT INTO tbl_subject(su_num,su_name,su_pro) VALUES('009','��������','�̸���');

UPDATE tbl_subject SET su_pro = '�Ӳ���' WHERE su_num = '009';

UPDATE tbl_subject SET su_num = '010' WHERE su_num = '009';

SELECT * FROM tbl_subject;

