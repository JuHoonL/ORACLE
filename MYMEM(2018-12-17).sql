--����� myMem ȭ���Դϴ�.

CREATE TABLE tbl_iolist(
    io_id	    NUMBER		    PRIMARY KEY,
    io_date	    CHAR(10)	    NOT NULL,
    io_cname	nVARCHAR2(50)	NOT NULL,	
    io_dname	nVARCHAR2(30)	NOT NULL,	
    io_ceo	    nVARCHAR2(10),		
    io_inout	nVARCHAR2(6),		
    io_quan	    NUMBER,		
    io_price	NUMBER,		
    io_total	NUMBER		
);


ALTER TABLE tbl_iolist MODIFY io_inout nVARCHAR2(5);
SELECT * FROM tbl_iolist;

SELECT COUNT(*) FROM tbl_iolist WHERE io_inout = '����';

SELECT io_inout AS ����, COUNT(*) AS ����, SUM(io_total) AS �հ� FROM tbl_iolist GROUP BY io_inout ORDER BY io_inout;

SELECT io_date AS ��¥, io_inout AS ����, COUNT(*) AS ����, SUM(io_total) AS �հ� FROM tbl_iolist GROUP BY io_inout, io_date ORDER BY io_date;

--���ڿ� �Լ� ���
SELECT 'KOREA' FROM DUAL;       --DUAL �̶�� ���̺��� �⺻ ���̺�� �����������


SELECT UPPER('korea') FROM DUAL;        --UPPER ���ڿ��� �빮�ڷ� ��ȯ
SELECT LOWER('KOREA') FROM DUAL;        --LOWER ���ڿ��� �ҹ��ڷ� ��ȯ

SELECT INITCAP('republic of korea') FROM DUAL;      --INITCAP ������ �������� �� ���ڸ� �빮�ڷ� ��ȯ(����Ŭ������ ����)

SELECT LENGTH('republic of korea') FROM DUAL;       --LENGTH �ܾ��� ������ �˷���
SELECT LENGTH(n'���ѹα�') FROM DUAL;    --�ѱ��� ��� �����ڵ������� �����ϱ����� n ���(��Ȥ �ѱ۰����� 2���� �ɰ�ǥ���ϱ� ����)

SELECT LENGTHB('���ѹα�') FROM DUAL;    --�������� ����뷮(byte)�� �˷���

SELECT INSTR('Republic of Korea', 'of') FROM DUAL;      --INSTR of�� ������ ���ڿ��߿� ����� ��ġ�� �ִ��� �˷���

SELECT SUBSTR('Republic of Korea',4,3) FROM DUAL;       --SUBSTR�� 4��° ���ں��� 3���ڸ� ǥ��(����Ŭ�� ù���ڰ� 1��°�� ����)

SELECT LEFT('Republic',3) FROM DUAL;            --LEFT �� ���ʺ��� 3��° ��ġ�� ���ڸ� �˷���(����ŬX, ǥ��SQL���� ��)

SELECT MID('Republic',3,2) FROM DUAL;           --MID�� 3��° ���� 2���� ǥ��(����Ŭ�� ù���ڰ� 1��°�� ����)

SELECT LPAD('KOREA',20,'*') FROM DUAL;          --LPAD KOREA�� ���ڼ��� 20���� ����� �������� *���� ä����('**********KOREA')
SELECT LPAD(1,5,'0') FROM DUAL;         --����1�� ���ڿ��� �ٲٰ� 5���� ���ڿ��� ����� ���� ������ 0���� ä����('00001')

SELECT RPAD(1,5,'0') FROM DUAL;         --LPAD�� �ݴ�� �Ǿտ� 1�� ���ְ� ������ 0���� ä����('10000')
SELECT LPAD(1,5,'0'), RPAD(1,5,'0') FROM DUAL;  --LPAD�� RPAD ('00001' / '10000')

INSERT test(t_num) VALUES(LPAD(1,3,'0');    -- t_num�� 001�� �־��

--�������� TRIM L ���� R ������
SELECT LTRIM(' KOREA ���ѹα� ') FROM DUAL;
SELECT RTRIM(' KOREA ���ѹα� ') FROM DUAL;

SELECT TRIM( 'a' FROM 'aaabbbkorennnaaa') FROM DUAL;    -- FROM ���� ���ڿ����� ���� 'a'���ڿ��� ��� �����϶�

--���ں��� �ŷ����п� ���� ������ �հ踦 Ȯ���ϰ��� �Ҷ�
SELECT io_date, io_inout, COUNT(io_total), SUm(io_total) FROM tbl_iolist GROUP BY io_date, io_inout ORDER BY io_date;

--���ں��� �ŷ����п� ���� ������ �հ踦 Ȯ���ϵ�, 2018-03-01~31������
SELECT io_date, io_inout, COUNT(io_total), SUm(io_total) FROM tbl_iolist WHERE io_date BETWEEN '2018-03-01' AND '2018-03-31' 
GROUP BY io_date, io_inout ORDER BY io_date; 

--������ �Ǵ� �⵵���� �հ踦 ����ؼ� ���� ���� ���� �ִ�.
CREATE VIEW �������
AS
SELECT SUBSTR(io_date,1,7) AS ����, io_inout AS ����, COUNT(io_total) AS ����, SUm(io_total) AS ��� FROM tbl_iolist 
GROUP BY SUBSTR(io_date,1,7), io_inout ORDER BY SUBSTR(io_date,1,7);

SELECT * FROM ������� WHERE ���� BETWEEN '2018-03' AND '2018-06';

SELECT io_inout, COUNT(io_total), SUM(io_total), io_dname FROM tbl_iolist GROUP BY io_dname, io_inout ORDER BY io_dname;

SELECT io_cname, SUBSTR(io_date,1,7), io_inout, COUNT(io_total), SUM(io_total) FROM tbl_iolist GROUP BY SUBSTR(io_date,1,7), io_cname, io_inout ORDER BY io_cname;

SELECT * FROM tbl_iolist WHERE io_cname = ' �� Ű ��';

SELECT io_cname, SUBSTR(io_date,1,7), io_inout, COUNT(io_total), SUM(io_total) FROM tbl_iolist WHERE io_cname = ' �� Ű ��' GROUP BY SUBSTR(io_date,1,7), io_cname, io_inout;