--����� Mymem ȭ���Դϴ�

--tbl_iolist���� ��ǰ�������̺��� �и��ؼ� ��2����ȭ ������ ����
--
--tbl_iolist �� ������ Ȯ��
SELECT COUNT(*) FROM tbl_iolist;
SELECT * FROM tbl_iolist;

--��ü�����Ͱ� �ƴ� � ���ǿ� �´� �����͸� �����ؼ� Ȯ���ϰ��� �� ���� WHERE ������ Į�� = ���������� SQL�� �̿��Ѵ�.

--� ������ �����ϱⰡ �������� ���� �� �׳� ��� ������ �����ؼ�(�� 10��, 100��) ��ȸ�ϰ��� �� �� ����Ŭ ���� SQL Ű���� ��
--Į�������� ROWNUM��� Į���� �ִ�. �� Į���� ����� �������� ROW ������ �������� ǥ���ϴ� ����Ŭ DUMY Į��

--������� ������ �־���
SELECT ROWNUM, io_date, io_cname, io_dcode FROM tbl_iolist;

--ROWNUM Į���� �̿��ϸ� �����͸���Ʈ �߿��� ��� ���������� ��ȸ�� �� �� �ִ�.
SELECT ROWNUM, * FROM tbl_iolist WHERE ROWNUM <= 10;  --ǥ��SQL������ ROWNUM, * �� �����۵� �ǳ�, ����Ŭ������ ������
SELECT ROWNUM, io_date, io_cname FROM tbl_iolist WHERE ROWNUM <= 10; -- 10�������� �����ִ� �ڵ�

--10~20�������� �����͸� ��ȸ
SELECT ROWNUM, io_date, io_cname FROM tbl_iolist WHERE ROWNUM BETWEEN 10 AND 20;
SELECT * FROM tbl_iolist;

--MY SQL����
SELECT * FROM tbl_iolist LIMIT 10;

SELECT * FROM tbl_iolist WHERE ROWNUM < 10;

--��ǰ������ ��ǰ���̺�� �и��ϱ� ���ؼ� ��ǰ�̸� ����Ʈ�� �����.
SELECT io_cname FROM tbl_iolist GROUP BY io_cname;

SELECT io_cname, io_inout, io_price FROM tbl_iolist WHERE ROWNUM < 10;

--���� ��ȸ�� �����Ϳ��� io_inout�� '����'�̸� io_price�� '���Դܰ�' �� ���̰� '����'�̸� '����ܰ�'�� ������ ������ �ȴ�.
--�׷��� io_inout �� ���� �ܰ��� �ٸ��� ǥ���� ����

SELECT io_cname, io_inout, DECODE(io_inout, '����', io_price) ���Դܰ�,
DECODE(io_inout, '����', io_price) ����ܰ� FROM tbl_iolist WHERE ROWNUM < 10;


--ǥ���ϰ����ϴ� Į���� ���� Į�� 2 + decode�� ���� Į�� 2 �� �� �׷���̸� �̿��ؼ� ���� �� ���� Į���� ǥ���ϸ� ������(decodeĮ������ �־������)
SELECT io_cname, io_inout, DECODE(io_inout, '����', io_price) ���Դܰ�,
DECODE(io_inout, '����', io_price) ����ܰ� FROM tbl_iolist GROUP BY io_cname, io_inout;

--�ذ���1. �׷���� �ڿ� ���� ����
SELECT io_cname, io_inout, DECODE(io_inout, '����', io_price) ���Դܰ�,
DECODE(io_inout, '����', io_price) ����ܰ� FROM tbl_iolist GROUP BY io_cname, io_inout, 
DECODE(io_inout, '����', io_price), DECODE(io_inout, '����', io_price);

--�ذ���2. AVG�� ����ؼ� dcode�κе��� ������
SELECT io_cname, AVG(DECODE(io_inout, '����', io_price)) ���Դܰ�,
AVG(DECODE(io_inout, '����', io_price)) ����ܰ� FROM tbl_iolist GROUP BY io_cname ORDER BY io_cname;


CREATE TABLE tbl_product (
    p_code	    CHAR(9)		    PRIMARY KEY,
    p_name	    nVARCHAR2(50)	NOT NULL,	
    p_iprice	NUMBER,		
    p_oprice	NUMBER		
);

DROP TABLE tbl_product;

SELECT * FROM tbl_product;
SELECT COUNT(*) FROM tbl_product;

--���� ��ǰ���� ���̺��� �����ϰ� �����͸� ���������
--���Ը����������� ��ǰ�ڵ� Į���� �����ϰ� ��ǰ�ڵ� Į�� �����͸� update�ϰ� ��ǰ�� Į�� ���� 
ALTER TABLE tbl_iolist ADD io_pcode CHAR(9);
ALTER TABLE tbl_iolist DROP COLUMN io_pcode;
DESC tbl_iolist;

--���������� �̿��ؼ� iolist�� productt �� ���̺��� ���踦 �ѹ� ���캸��
SELECT io_cname, (SELECT p_name FROM tbl_product P WHERE P.p_name = I.io_cname), 
(SELECT p_code FROM tbl_product P WHERE P.p_name = I.io_cname) FROM tbl_iolist I;

--productt ���̺��� ��ǰ�ڵ带 ��ȸ�ؼ� iolist ���̺��� io_pcodeĮ���� Update����.
UPDATE tbl_iolist I SET I.io_pcode = (SELECT P.p_code FROM tbl_product P WHERE I.io_cname = P.p_name);
SELECT io_cname FROM tbl_iolist;
SELECT p_name FROM tbl_product;
SELECT io_pcode FROM tbl_iolist;


--Join�� �̿��ؼ� ����
SELECT * FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code ORDER BY I.io_pcode;

ALTER TABLE tbl_iolist DROP COLUMN io_cname;

SELECT * FROM tbl_iolist WHERE ROWNUM < 10;

--tbl_iolist�� ��2����ȭ ������ �Ϸ�Ǿ����Ƿ� ���Ը������ ���鼭 ��ǰ��� �ŷ�ó���� Ȯ���ϰ�ʹ�.
--1. ���Ը������ ��ǰ�� ���̺���
SELECT I.io_date, I.io_pcode, P.p_name, I.io_inout, I.io_price, P.p_iprice, P.p_oprice, I.io_quan, (I.io_price * I.io_quan) AS �հ� 
FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code;

--2. ���Ը������ �ŷ�ó������ ���� ���� �ʹ�.
SELECT I.io_date, I.io_dcode, D.d_name, D.d_ceo, I.io_pcode, I.io_inout, I.io_price, I.io_quan, (I.io_price * I.io_quan) As �հ� 
FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

DESC tbl_dept;

--3. ���Ը������ ���鼭 ��ǰ����, �ŷ�ó������ ���� ����
SELECT I.io_date, I.io_pcode, P.p_name, I.io_inout, I.io_dcode, D.d_name, D.d_ceo, I.io_price, P.p_iprice, P.p_oprice, 
I.io_quan, (I.io_price * I.io_quan) As �հ� FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code 
LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

--���� ����� �� ������ ������ �ʹ� ������ �� SQL�� view�� ����
CREATE VIEW io_dept_product_view AS
SELECT I.io_date, I.io_pcode, P.p_name, I.io_inout, I.io_dcode, D.d_name, D.d_ceo, I.io_price, P.p_iprice, P.p_oprice, 
I.io_quan, (I.io_price * I.io_quan) As �հ� FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code 
LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

SELECT * FROM io_dept_product_view;

SELECT io_inout, COUNT(*), SUM(io_total) FROM tbl_iolist WHERE io_date BETWEEN '2018-03-01' AND '2018-03-31' AND io_inout = '����' GROUP BY io_inout;
--�����Ͱ� ����� ������ ��¥�� �����ϰ� �׾ȿ��� �˻��ϴ°� ���� ( ���� �����س��� ������ �޾Ƽ� ã�°� ȿ����!!)