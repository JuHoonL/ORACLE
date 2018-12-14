--����� myuser ȭ���Դϴ�.
--���Ը������(����)���Ͽ��� DataBase�� �����͸� �ű�� DB��Ģ�� �µ��� �����ϴ� ������ ����


--���� myuser���� TABLE������ Ȯ���ؼ� tbl_iolist�� ������ ���콺 ��ư�� ������ ������ ����Ʈ ����
--=> �־��� ������ �ҷ����� ���� �� ���п� ���ϴ� ���Ͻ�Ʈ ���� => ���� ���� ���� => ���� ���� => �Ϸ�

CREATE TABLE tbl_iolist(
    id	        NUMBER          PRIMARY KEY,
    io_date	    CHAR(10)	    NOT NULL,	
    io_cname	nVARCHAR2(50)	NOT NULL,	
    io_dname	nVARCHAR2(30)	NOT NULL,	
    io_dceo 	nVARCHAR2(10),		
    io_inout	nVARCHAR2(5),		
    io_quan	    NUMBER,		
    io_price	NUMBER,		
    io_total	NUMBER		
);

DROP TABLE tbl_iolist;

SELECT * FROM tbl_iolist;
SELECT COUNT(*) FROM tbl_iolist;

--18-02-01 ~ 18-02-28 ���⸮��Ʈ
SELECT * FROM tbl_iolist WHERE io_inout = '����' AND io_date >= '2018-02-01' AND io_date <= '2018-02-28';
--18-02-01 ~ 18-02-28 ���Ը���Ʈ
SELECT * FROM tbl_iolist WHERE io_inout = '����' AND io_date >= '2018-02-01' AND io_date <= '2018-02-28';

SELECT COUNT(*) AS ����Ʈ����, SUM(io_TOTAL) AS ���հ� FROM tbl_iolist;

--����Լ��� �̿��ؼ� ������ �հ踦 ���ϴµ� �����հ�, �����հ踦 ���� ����ϰ� �ʹ�.
--1. ���԰� ������ �����ϴ� Į�� : io_inout
SELECT io_inout,COUNT(io_total),SUM(io_total) FROM tbl_iolist GROUP BY io_inout;

--����Լ��� �̿��ؼ� ������ �հ踦 ���
--���� : ��¥���� ������ �ο��ؼ� ������ �հ� ���
--1. ��¥�� �����ϴ� Į�� : io_date
SELECT io_date, COUNT(io_total),SUM(io_total) FROM tbl_iolist GROUP BY io_date ORDER BY io_date;

--���� : ��¥���� ���� �ٽ� ���� ����� �����Ͽ� ������ �հ踦 ����϶�
--1. ��¥�� �����ϴ� Į�� : io_date
--2. ���԰� ������ �����ϴ� Į�� : io_inout
SELECT io_date,io_inout,COUNT(*),SUM(io_total) FROM tbl_iolist GROUP BY io_date, io_inout ORDER BY io_date;

SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist GROUP BY io_inout, io_date ORDER BY io_inout;

SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist WHERE io_date >= '2018-03-01' AND io_date <= '2018-03-31' 
GROUP BY io_inout, io_date ORDER BY io_date;

SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist WHERE io_date  BETWEEN '2018-03-01' AND '2018-03-31' 
GROUP BY io_inout, io_date ORDER BY io_date;

--�հ�ݾ��� 100���� �̻��� �׸� ������
SELECT * FROM tbl_iolist WHERE io_TOTAL >= 1000000;

--���� ���� ��¥���� �����Ͽ� ������ �հ踦 ��ȸ�ϴ� �� 100���� �̻��� �׸� ���̰� ������
SELECT io_inout,io_date,COUNT(*) FROM tbl_iolist GROUP BY io_inout, io_date HAVING SUM(io_total) >= 100000 ORDER BY io_inout;

--2018-03-01~31�ϱ��� �߿��� ��ȸ(HAVING���� ��� ��踦 ��� �� �Ŀ� ������ �����ϱ� ������ �� �ڿ� ���ټ��� ����.)
SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist WHERE io_date  BETWEEN '2018-03-01' AND '2018-03-31' 
GROUP BY io_inout, io_date HAVING SUM(io_total) >= 100000 ORDER BY io_date;
