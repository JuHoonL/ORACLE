--����� mymem ȭ���Դϴ�.

SELECT * FROM tbl_iolist;

--�ŷ�ó (��)���翣���Ͼ(���ֳ����Ե�)�� �ڷḸ Ȯ���ϰ� ������
SELECT * FROM tbl_iolist WHERE io_dname = '(��)���翣���Ͼ(���ֳ����Ե�)';

--���� ���� tbl_iolist�� ��ǰ�̸��� �ŷ�ó��, �ŷ�ó��ǥ���� ���� �������ֱ� ������ ���� ��ǰ�̸��̳� �ŷ�ó�� �ŷ�ó��ǥ���� ����
--���� �Ϸ��� �ϸ� �ټ��� ������ ������ �ʿ��ѵ� �� �� �ټ��� �����͸� �����ϴ� ���� DB ���ȯ��, ��Ģ ���忡���� �ſ� �ٶ��� �����ʴ�.
--�׷��� ������ tbl_iolist ���̺��� �и� �۾��Ͽ� �����ͺ����� �ټ� �߻����� �ʵ��� ��ġ�� ���ؾ��Ѵ�. �̸� �̷������� ��2 ����ȭ(2NF)��� �Ѵ�.

--1. �ŷ�ó��� �ŷ�ó��ǥ���� �и�
--��. tbl_iolist�� ���� �ŷ�ó��(io_dname)�� �ŷ�ó��ǥ��(io_ceo) ��� ��ƺ���
--�ŷ�ó��� �ŷ�ó��ǥ���� Ȯ��
SELECT io_dname, io_ceo FROM tbl_iolist ORDER BY io_dname;

--�ŷ�ó��� �ŷ�ó��ǥ���� ��� Ȯ��
--tbl_iolist���� �ŷ�ó��� �ŷ�ó��ǥ���� �Ѱ����� �����Ѱ�
SELECT io_dname, io_ceo FROM tbl_iolist GROUP BY io_dname, io_ceo ORDER BY io_dname;
--��. ���⿡�� ������ ����Ʈ�� ������ �����Ͽ� ������ �۾�


--��. �ŷ�ó ���̺� ����
CREATE TABLE tbl_dept(
    d_code	CHAR(4)		    PRIMARY KEY,
    d_name	nVARCHAR2(50)	NOT NULL,	
    d_ceo	nVARCHAR2(20)	NOT NULL,	
    d_tel	nVARCHAR2(20),		
    d_addr	nVARCHAR2(50),		
    d_fax	nVARCHAR2(20),		
    d_sid	CHAR(14)		
);

--��. �ŷ�ó�� ���̺�Ȯ��
SELECT * FROM tbl_dept;
SELECT COUNT(*) FROM tbl_dept;


--��. iolist���̺��� �ŷ�ó��, ��ǥ����� �����ϰ� �ŷ�ó �ڵ�Į������ ��ü
--a. iolist�� dept ���̺��� JOIN�ؼ� Ȥ�� �߸� ����� �����Ͱ� ���°� Ȯ��
SELECT i.io_dname, D.d_name, d.d_code FROM tbl_iolist I, tbl_dept D WHERE I.io_dname = D.d_name;

--b. iolist������ �ִµ� Ȥ�� dept���� ���� �����Ͱ� �ִ��� Ȯ��
SELECT i.io_dname, D.d_name, d.d_code FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dname = D.d_name;

--c. iolist�� dept�� d_code�� ������ Į���� �߰�
ALTER TABLE tbl_iolist ADD io_dcode CHAR(4);

DESC tbl_iolist;  -- iolist�� io_dcode �߰� Ȯ��

--SUB QUERY
SELECT (SELECT d_name FROM tbl_dept WHERE d_name = io_dname) FROM tbl_iolist;

SELECT I.io_dname, (SELECT D.d_name FROM tbl_dept D WHERE D.d_name = I.io_dname AND d.d_ceo = i.io_ceo) AS dname FROM tbl_iolist I ORDER BY dname;

--�ߺ������Ͱ� �ִ��� �˻��ϴ� SQL���
SELECT d_name, COUNT(*) FROM tbl_dept GROUP BY d_name HAVING COUNT(*) > 1;

SELECT * FROM tbl_dept WHERE d_name = '�츮�õ�';

--d. ���� SUB QUERY�� ����ؼ� dept ���̺��� d_code�� iolist ���̺� ������Ʈ�� ����
UPDATE tbl_iolist I SET io_dcode = (SELECT d_code FROM tbl_dept D WHERE I.io_dname = D.d_name AND I.io_ceo = D.d_ceo) ;

SELECT io_dcode, io_dname, io_ceo FROM tbl_iolist ;

--e. iolist�� dept ���̺��� JOIN�ؼ� �ŷ�ó��� ��ǥ�ڸ��� ���� ��ȸ�ϴ� SQL ���
SELECT I.io_dcode, D.d_name, D.d_ceo, I.io_cname FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code ;

--f. iolist���� io_dname, io_ceo Į���� �����ص� �ȴ�.
ALTER TABLE tbl_iolist DROP COLUMN io_dname;
ALTER TABLE tbl_iolist DROP COLUMN io_ceo;

DESC tbl_iolist;