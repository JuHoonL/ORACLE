--����� user2�� ȭ�� �Դϴ�.
CREATE TABLE tbl_employee(
    strEmpno CHAR(3) PRIMARY KEY,
    strName nVARCHAR2(20) NOT NULL,
    strjob nVARCHAR2(20),
    intSal NUMBER(3),
    strEdptNO nVARCHAR2(20)
);

ALTER TABLE tbl_employee MODIFY intSal NUMBER(10) ;

SELECT * FROM tbl_employee;

INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('001','ȫ�浿','�λ����',2500000,'�ѹ���');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('002','�̸���','�������',2500000,'������');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('003','������','�޿�����',2500000,'�ѹ���');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('004','����','�������',2500000,'�����');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('005','�Ӳ���','ǰ������',2500000,'�����');

