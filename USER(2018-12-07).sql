--����� user1���� ������ ȭ���Դϴ�.
--tbl_addr�� �ϴ� ����
DROP TABLE tbl_addr;

--tbl_addr�� ����
CREATE TABLE tbl_addr(
    id NUMBER PRIMARY KEY,          --�⺻Ű, PK
    st_name CHAR(50) NOT NULL,
    st_age NUMBER(3),
    st_addr VARCHAR2(125)
    );

INSERT INTO tbl_addr VALUES(0,'ȫ�浿',12,'�����');
INSERT INTO tbl_addr VALUES(1,'ȫ�浿',12,'�����');
INSERT INTO tbl_addr VALUES(2,'����ȯ',25,'���ֽ�');
INSERT INTO tbl_addr VALUES(3,'������',27,'���ֽ�');
INSERT INTO tbl_addr VALUES(4,'������',26,'���ֽ�');
INSERT INTO tbl_addr VALUES(5,'�����',24,'���ֽ�');
INSERT INTO tbl_addr VALUES(6,'������',25,'���ֽ�');
INSERT INTO tbl_addr VALUES(7,'������',33,'���ֽ�');
INSERT INTO tbl_addr VALUES(8,'������',33,'���ֽ�');

--data�� �߰��ϸ鼭 0�� �׸�� 7���׺��� �߸� Ȯ���Ͽ� ���� �������ΰ����� �ν��ϰ� INSERTó���� �� ���ȴ�.

SELECT * FROM tbl_addr;
SELECT * FROM tbl_addr WHERE st_name = 'ȫ�浿';       --���ǰ˻�(st_name�� ȫ�浿�� ��츸 ������)

--7���� ȫ�浿�� �ּҸ� �λ����� ����
UPDATE tbl_addr SET st_addr = '�λ��' WHERE id = 1;   --1���� ��ġ�� �ִ� st_addr�� '�λ��'�� ����
DELETE FROM tbl_addr WHERE id = 8;
UPDATE tbl_addr SET st_addr = '������' WHERE id = 7;
UPDATE tbl_addr SET st_addr = '���ֽ�' WHERE id = 5;

--DATEBASE�� TABLE�� ������ �� ����ϰ��� �ϴ� Į���߿� UNIQUE�� �׸��� �ִٸ� �� Į���� PIMARY KEY(PK)�� �����ϴ� ���� ����
--�׷��� ������ ��� TABLE���� ID��� Į���� ���� �߰��ؼ� �ش� Į���� PK�� ������ �ִ� ���� ����.

CREATE TABLE tbl_PostNUM(
    postNUM CHAR(5) PRIMARY KEY,                --��ü���Ἲ �����
    streetN NVARCHAR2(125) NOT NULL UNIQUE,      --�����͸� ����ΰų� �������� �ԷµǾ� ������ �ٽ� �Էµ��� �ʵ��� �ϴ� �ɼ�
    addr NVARCHAR2(125)
    );
