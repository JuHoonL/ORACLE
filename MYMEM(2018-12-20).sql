--����� MyMEM ȭ���Դϴ�.

DROP TABLE tbl_iolist;
DROP TABLE tbl_dept;

--������ ���Ը��� ������ ����Ŭ�� import�ϰ� ���Ը��� DB�� ���� ��2����ȭ�� �����ؼ� �ŷ�ó ������ �и��ϴ� �۾�

CREATE TABLE tbl_iolist(
    io_id	    NUMBER	           	PRIMARY KEY	,
    io_date 	CHAR(10)        	NOT NULL,
    io_cname	nVARCHAR2(50)	NOT NULL,
    io_dname	nVARCHAR2(50)	NOT NULL,
    io_dceo	    nVARCHAR2(50),
    io_inout	nVARCHAR2(5) 	NOT NULL,
    io_quan	    NUMBER,
    io_price   	NUMBER,
    io_total    NUMBER			
);

SELECT * FROM tbl_iolist;

SELECT COUNT(*) FROM tbl_iolist;

SELECT io_inout, COUNT(*) FROM tbl_iolist GROUP BY io_inout; 

--���� ���� �������� �ŷ�ó ������ �ٸ� TABLE�� �и��ؼ� ��2����ȭ ������ ����
--1. ���� ���� �������� �ŷ�ó ������ �����ϴ� �۾�
--��. �ŷ�ó��� ��ǥ���� �׷����� ���� ����Ʈ�� ����
SELECT io_dname, io_dceo FROM tbl_iolist GROUP BY io_dname, io_dceo ORDER BY io_dname;


--��. �������� ������ �ŷ�ó������ import�ϱ� ���ؼ� TABLE�� ����
CREATE TABLE tbl_dept(
    d_code	CHAR(6)		    PRIMARY KEY,
    d_name	nVARCHAR2(50)	NOT NULL,
    d_ceo	nVARCHAR2(50)			
);

SELECT * FROM tbl_dept;
SELECT COUNT(*) FROM tbl_dept;


--2. tbl_iolist�� tbl_dept�� ������ Į���� �߰��ϰ� tbl_dept�� ���� �����۾��� ����
--��. Į���߰�
ALTER TABLE tbl_iolist ADD io_dcode CHAR(6);
DESC tbl_iolist;

--SUB QUERY : DML ���ο� �ٸ� SELECT���� �ִ� SQL�� ���Ѵ�.
SELECT io_dname, io_dceo, io_dcode FROM tbl_iolist;

--���� SQL�� SUB QUERY�� �߰��ؼ� DEPT ���̺�� ���� io_dcode�� ��ȸ�� ����
SELECT io_dname, io_dceo,
(SELECT d_code FROM tbl_dept D WHERE D.d_name = tbl_iolist.io_dname AND D.d_ceo = tbl_iolist.io_dceo) AS CODE FROM tbl_iolist;


--SUB QUERY �� ����ؼ� tbl_dept�� ���� tbl_iolist�� �ŷ�ó �ڵ带 update�ϴ� �ڵ�
UPDATE tbl_iolist I
SET io_dcode = (SELECT d_code FROM tbl_dept D WHERE D.d_name = I.io_dname AND D.d_ceo = I.io_dceo) ;


SELECT io_dname, io_dceo, io_dcode FROM tbl_iolist;

--tbl_iolist�� io_dname�� io_dceo Į���� ����
ALTER TABLE tbl_iolist DROP COLUMN io_dname;
ALTER TABLE tbl_iolist DROP COLUMN io_dceo;
DESC tbl_iolist;

--iolist�� dept ���̺��� join�ؼ� ��ȸ�ϴ� �۾�
SELECT I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I, tbl_dept D WHERE I.io_dcode = D.d_code;
--�� join�� EQ Join�̶�� �ϸ�, tbl_iolist���̺��� �ְ� tbl_dept���̺� ���� io_dcode�� ���� �������� �ʴ´ٴ� ������ ���� �� ����
SELECT I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;
--������ ���� ��Ȳ������ tbl_dept���� ���� tbl_iolist���� �ִ� io_dcode�� ������ �ִ�. �׷��� LEFT join�� ����ϴ� ���� ����.

--�׽�Ʈ�� ���ؼ� ������ �����͸� io_dcode�� ���濹��
SELECT * FROM tbl_iolist WHERE io_dcode = 'D00100';

UPDATE tbl_iolist SET io_dcode = 'D00500' WHERE io_id = 306;

--EQ JOIN
SELECT I.io_id, I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I, tbl_dept D 
WHERE I.io_dcode = D.d_code AND io_id BETWEEN 300 AND 310 ORDER BY I.io_id;

--LEFT JOIN
SELECT I.io_id, I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I LEFT JOIN tbl_dept D 
ON I.io_dcode = D.d_code WHERE io_id BETWEEN 300 AND 310 ORDER BY I.io_id;

--Join���� ���� ���·� ���� ���� ���� ���� �հ�ݾ��� ��� (11�� 2372774)
SELECT COUNT(*), SUM(io_total) FROM tbl_iolist WHERE io_id BETWEEN 300 AND 310;

--EQ Join�� �ϰ� �հ� �ݾ� ��� , �Ѱ��� �����Ͱ� ���� �հ��ؼ� ���� (10�� 2321774)
SELECT  COUNT(*), SUM(io_total) FROM tbl_iolist I, tbl_dept D 
WHERE I.io_dcode = D.d_code AND io_id BETWEEN 300 AND 310;

--LEFT join�� �ϰ� ���(������ �����Ͱ� ����, 11�� 237274)
SELECT  COUNT(*), SUM(io_total) FROM tbl_iolist I LEFT JOIN tbl_dept D 
ON I.io_dcode = D.d_code WHERE io_id BETWEEN 300 AND 310;

--LEFT Join�� ���� ���̺��� �����ʹ� ��� �����ְ� �� ���̺��� Ű�� ��ġ�ϴ� �����Ͱ� ������ ���̺� ������ �����ְ� ������ NULL�� ǥ��
--������ ���̺��� �����Ϳ� ��ġ�ϴ� �����Ͱ� ��� ���� ���̺��� �������� �Ϻΰ� �����Ǵ� ���� ����

--iolist�� ���� �ŷ�ó������ �и�
--1. �ŷ�ó ������ GROUPING �Ͽ� ���� ����Ʈ ��ȸ�� ������ ����
SELECT * FROM tbl_iolist;

--�ߺ����� ���ַ� ����Ʈ�� ��ȸ (DISTINCT)
SELECT DISTINCT io_cname FROM tbl_iolist order by io_cname;
SELECT io_cname FROM tbl_iolist GROUP BY io_cname order by io_cname;

--2. �ڵ尪 �ο�

--3. ���̺� ����(tbl_product)
CREATE TABLE tbl_product(
    p_code	CHAR(6)		    PRIMARY KEY	,
    p_name	nVARCHAR2(50)	NOT NULL		
);

DROP TABLE tbl_product;

--4. import
SELECT * FROM tbl_product;


--5. iolist�� pcode Į�� ����
ALTER TABLE tbl_iolist ADD io_pcode CHAR(6);
DESC tbl_iolist;

--6. �ŷ�ó ���� ���̺��� iolist�� dcode Į���� UPDATE
UPDATE tbl_iolist I SET I.io_pcode = (SELECT P.p_code FROM tbl_product P WHERE I.io_cname = P.p_name);