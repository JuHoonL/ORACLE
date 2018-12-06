--����� user1 �Դϴ�.
SELECT 30*40 FROM DUAL;
SELECT '���ѹα�����' FROM DUAL;

--����� DB ����Ұ� ���� �����̹Ƿ� DB���� � ���� �����ϱ� ���� ������� ����Ҹ� �����ؾ��Ѵ�.
--������߿��� ǥ�� DB�� ��ǥ ����Ҹ� TABLE�� �����ϰڴ�.
CREATE TABLE tbl_addr (
    name CHAR(50),      -- 50���ڹ����� ���ڸ� ����(VARCHAR2 ������ �˻��� �ӵ��� ���� ����)
    age NUMBER(10,1),   -- ������ 10����, �Ҽ��� 1���ڶ�� ǥ��
    addr CHAR(50)
);
DROP TABLE tbl_addr;

CREATE TABLE tbl_addr (
    name VARCHAR2(50),     -- 50���ڹ����� ���ڸ� �����ϵ�, ���� ���ڼ��� 50���ڰ� �ȵǸ� ���� ������ �����ؼ� ����
    age NUMBER,            -- ���� 38�ڸ�
    addr VARCHAR2(125)
);

--TABLE�� ������ �� �˻��ϴ� KEY�� ���� ���ɼ��� ���� �׸�(column)�� ���� ���� �����ϰ�� CHAR������ �����ϴ� ���� ȿ�����̴�.
--���ڰ� ����Ǵ� �κ��� NUMBER��� Ű���� ������ ������ ���������� ������ �ִ��ڸ����� ����Ͽ� ���� �������ִ� ���� ����.
CREATE TABLE tbl_addr (
    st_name CHAR(10) NOT NULL,  -- NOT NULL : �ش� Į���� �����Ͱ� ������ �� ���� �����ʹ� �߰���������� ��ɾ�(��������1)
    st_age NUMBER(3),
    st_addr VARCHAR2(255)
);

--������ �߰� �׽�Ʈ
--CRUD���� C(create) : �̹� ������ TABLE�� �����͸� 1�� �߰��ϴ� ��
INSERT INTO tbl_addr VALUES ('ȫ�浿',12,'����� ��������');

--�߰��� ������ Ȯ�� �׽�Ʈ
--CRUD���� R(read) : TABLE�� ����� �����͸� Ȯ���ϴ� ����
SELECT st_name,st_age,st_addr FROM tbl_addr;

INSERT INTO tbl_addr VALUES ('�̸���',16,'����ϵ� ������');

SELECT st_name,st_age,st_addr FROM tbl_addr;

SELECT st_name FROM tbl_addr;

SELECT st_age FROM tbl_addr;

SELECT st_addr FROM tbl_addr;

SELECT st_addr,st_name FROM tbl_addr;

SELECT * FROM tbl_addr;            -- * : ����  / ? : �Ѱ�

UPDATE tbl_addr SET st_name = '������';

SELECT st_name FROM tbl_addr;

DELETE FROM tbl_addr;

CREATE TABLE tbl_addr(
    id NUMBER PRIMARY KEY,   
    st_name CHAR(50) NOT NULL,
    st_age NUMBER(3),
    st_addr VARCHAR2(255)
);

INSERT INTO tbl_addr VALUES(0,'ȫ�浿',12,'�����');
INSERT INTO tbl_addr VALUES(1,'�̸���',12,'������');
INSERT INTO tbl_addr VALUES(2,'������',12,'�ͻ��');
INSERT INTO tbl_addr VALUES(3,'���Ŵ�',12,'�ͻ��');
INSERT INTO tbl_addr VALUES(4,'�庸��',12,'���ؽ�');
INSERT INTO tbl_addr VALUES(5,'��������',12,'�λ��');
INSERT INTO tbl_addr VALUES(6,'�����Ȳ',12,'�λ��');
INSERT INTO tbl_addr VALUES(7,'�̹��',12,'�����');
INSERT INTO tbl_addr VALUES(8,'�̼���',12,'�����');
INSERT INTO tbl_addr VALUES(9,'�̼���',12,'�س���');

