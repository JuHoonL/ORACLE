--����� myuser�� ȭ���Դϴ�.

CREATE TABLE tbl_employee(
    strEmpno CHAR(3) PRIMARY KEY,
    strName nVARCHAR2(20) NOT NULL,
    strJob nVARCHAR2(20),
    intSal NUMBER(10),
    strDeptNo nVARCHAR2(20)
);

INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('001','ȫ�浿','�λ����',2500000,'�ѹ���');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('002','�̸���','�������',2500000,'������');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('003','������','�޿�����',2500000,'�ѹ���');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('004','����','�������',2500000,'�����');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('005','�Ӳ���','ǰ������',2500000,'�����');

SELECT strEmpno,strName,strJob,intSal,strDeptNo FROM tbl_employee WHERE strdeptno = '�ѹ���';

UPDATE tbl_employee SET strdeptno = '�λ������' WHERE strdeptno = '�ѹ���';

SELECT * FROM tbl_employee;

INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('006','��ϼ�','�λ纸��',2500000,'�λ������');

UPDATE tbl_employee SEt intSal = '1500000' WHERE strName = '��ϼ�';

UPDATE tbl_employee SEt strdeptno = '�λ� ������' WHERE strName = '��ϼ�';

UPDATE tbl_employee SET strdeptno = '�λ��' WHERE strdeptno = '�λ������' OR strdeptno = '�λ� ������';

UPDATE tbl_employee SET strdeptno = '�����' WHERE strName = '�Ӳ���';

CREATE TABLE tbl_dept(
    strDeptNo CHAR(3) PRIMARY KEY,
    strDeptName nVARCHAR2(20) NOT NULL,
    strDeptChief nVARCHAR2(20)
);

INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('01','�ѹ���','ȫ�浿');
INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('02','������','�̸���');
INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('03','�����','����');
INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('04','�����','�Ӳ���');

--strDeptno�� strDeptName���� ����
ALTER TABLE tbl_employee ReNAME COLUMN strDeptNo TO strDeptName;

--strDeptNo Į���� �߰�
ALTER TABLE tbl_employee ADD strDeptNO CHAR(3);

--TABLE COLUMN�� �������� ���¹�
DESCRIBE tbl_employee;
DESC tbl_employee;
DESC tbl_dept;

--strDeptNO ������Ʈ (tb_dept�� ����)
UPDATE tbl_employee SET strDeptNo = '01' WHERE strdeptname = '�λ��' OR strdeptname = '�λ� ������';
UPDATE tbl_employee SET strDeptNo = '02' WHERE strdeptname = '������';
UPDATE tbl_employee SET strDeptNo = '03' WHERE strdeptname = '�����';
UPDATE tbl_employee SET strDeptNo = '04' WHERE strdeptname = '�����';

--steDeptName COLUMN�� ����
ALTER TABLE tbl_employee DROP COLUMN strDeptName;

SELECT E.strEmpno AS ����, E.strName AS �̸�, E.strJob AS �������, E.intSal AS ���޿�, E.strDeptNo AS �μ��ڵ�, D.strdeptname AS �μ���
FROM tbl_employee E, tbl_dept D 
WHERE E.strDeptNo = D.strdeptno;

UPDATE tbl_dept SET strDeptName = '�λ������' WHERE strdeptno = '01';

SELECT E.strEmpno AS ����, E.strName AS �̸�, E.strJob AS �������, E.intSal AS ���޿�, E.strDeptNo AS �μ��ڵ�, D.strdeptname AS �μ���
FROM tbl_employee E, tbl_dept D 
WHERE E.strDeptNo = D.strdeptno ORDER bY D.strdeptno;



