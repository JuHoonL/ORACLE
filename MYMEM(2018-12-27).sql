--����� mymem ȭ���Դϴ�.

CREATE TABLE tbl_score(
    g_id    	NUMBER		    PRIMARY KEY,
    g_stname	nVARCHAR2(50)	NOT NULL,	
    g_subject	nVARCHAR2(10)	NOT NULL,	
    g_score 	NUMBER		
);

DROP TABLE tbl_score;

SELECT COUNT(*) FROM tbl_score;

SELECT * FROM tbl_score;

SELECT g_id, g_stname, g_subject, g_score FROM tbl_score;

SELECT g_subject, SUM(g_score) AS ��������, ROUND(SUM(g_score)/100,2) AS ������� FROM tbl_score GROUP BY g_subject;

SELECT g_stname, SUM(g_score) AS ����, ROUND(SUM(g_score)/6,2) AS ��� FROM tbl_score GROUP BY g_stname ORDER BY g_stname;

--SQL���� SELECT�� FOR ��ɰ� ���� �����ϴ�. 
--�Լ�() = method()�̰� , Ű���� = ��ɾ� �̴�.
--SQL���� �Լ�()�� ���� ��ΰ� �Ű������� �ݵ�� �ʿ�� �Ѵ�.
SELECT g_stname AS �̸�, 
(SELECT g_score FROM tbl_score WHERE g_subject = '����') AS ���� 
FROM tbl_score GROUP BY g_stname;


--����Ŭ �����Լ� ������ Į�������� ���������� ���� ������ ������ ǥ���ϴ� ��
--DECODE(g_subject, '����', 100, 0) => g_subject���� '����'�̸� 100���� ǥ�� �ƴϸ� 0���� ǥ���ض�
SELECT g_stname, 
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '�̼�', g_score, 0)) AS �̼� 
FROM tbl_score GROUP BY g_stname ;


CREATE VIEW �����϶�ǥ
AS
SELECT g_stname, 
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '�̼�', g_score, 0)) AS �̼� 
FROM tbl_score GROUP BY g_stname ;

SELECT * FROM �����϶�ǥ;

SELECT * FROM tbl_iolist WHERE ROWNUM < 10;

SELECT * FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

--�ŷ�ó���� �ŷ��ݾ��� ���ΰ� �˰� �ʹ�.
SELECT I.io_dcode, D.d_name, D.d_ceo, SUM(I.io_price * I.io_quan) AS �ŷ��ݾ�
FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code GROUP BY I.io_dcode, D.d_name, D.d_ceo;

--���ǹ� DECODE�� �̿��� ���� ���� �ݾ� ������
SELECT I.io_dcode, D.d_name, D.d_ceo, SUM(DECODE(I.io_inout,'����',I.io_price * I.io_quan,0)) AS ���Աݾ�,
SUM(DECODE(I.io_inout,'����',I.io_price * I.io_quan,0)) AS ����ݾ�
FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code GROUP BY I.io_dcode, D.d_name, D.d_ceo;

SELECT g_stname FROM tbl_score GROUP BY g_stname ORDER BY g_stname;

CREATE TABLE tbl_student(
    st_num	    CHAR(5)		    PRIMARY KEY,
    st_name	    nVARCHAR2(50)	NOT NULL	
);

DROP TABLE tbl_student;

SELECT COUNT(*) FROM tbl_student;

SELECT S.g_stname, (SELECT st_name FROM tbl_student T WHERE S.g_stname = T.st_name) FROM tbl_score S GROUP BY S.g_stname;

SELECT S.g_stname, T.st_name FROM tbl_score S LEFT JOIN tbl_student T ON S.g_stname = T.st_name GROUP BY S.g_stname, T.st_name;

ALTER TABLE tbl_score ADD g_stnum CHAR(5);

DESC tbl_score;

UPDATE tbl_score S SET S.g_stnum = (SELECT T.st_num FROM tbl_student T WHERE S.g_stname = T.st_name);

SELECT * FROM tbl_score WHERE g_stnum IS NULL;

ALTER TABLE tbl_score DROP COLUMN g_stname;

SELECT S.g_id, T.st_name, S.g_stnum, S.g_subject, S.g_score FROM tbl_score S LEFT JOIN tbl_student T ON S.g_stnum = T.st_num ORDER BY S.g_stnum; 

CREATE TABLE tbl_subject(
    sb_num	    CHAR(5)		    PRIMARY KEY,
    sb_name	    nVARCHAR2(50)	NOT NULL	
);

INSERT INTO tbl_subject VALUES('B0001', '����');
INSERT INTO tbl_subject VALUES('B0002', '����');
INSERT INTO tbl_subject VALUES('B0003', '����');
INSERT INTO tbl_subject VALUES('B0004', '����');
INSERT INTO tbl_subject VALUES('B0005', '����');
INSERT INTO tbl_subject VALUES('B0006', '�̼�');

ALTER TABLE tbl_score ADD g_bcode CHAR(5);

UPDATE tbl_score S SET S.g_bcode = (SELECT SB.sb_num FROM tbl_subject SB WHERE S.g_subject = SB.sb_name);

SELECT S.g_bcode, SB.sb_num, S.g_subject, SB.sb_name FROM tbl_score S LEFT JOIN tbl_subject SB ON S.g_subject = SB.sb_name;

CREATE VIEW ���ռ����϶�ǥ
AS
SELECT T.st_name, 
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '����', g_score, 0)) AS ����,
SUM(DECODE(g_subject, '�̼�', g_score, 0)) AS �̼� 
FROM tbl_score S LEFT JOIN tbl_student T ON S.g_stnum = T.st_num GROUP BY T.st_name ;

SELECT * FROM ���ռ����϶�ǥ;