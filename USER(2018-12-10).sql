--����� user1���� ������ ȭ���Դϴ�.
--user1�� ���� dba������ ���� �ִ�.
CREATE TABLE tbl_std (
    st_num CHAR(6) PRIMARY KEY,
    st_name CHAR(20) NOT NULL,
    st_tel nVARCHAR2(20),
    st_addr nVARCHAR2(125),
    int_age NUMBER(3),
    int_grade NUMBER(2)
);

DROP TABLE tbl_std;

--ȫ�浿, �̸���, ������, �Ӳ���, ���� �� 5���� �̸��� �������� ������ �׸��� �����Ӱ� �����Ͽ� �����͸� �߰��Ͻÿ�
INSERT INTO tbl_std VALUES ('0','ȫ�浿','010-5789-4125','���ֱ����� ����',26,3);
INSERT INTO tbl_std VALUES ('1','�̸���','010-2687-9754','���ֱ����� ����',22,2);
INSERT INTO tbl_std VALUES ('2','������','010-1547-6325','���ֱ����� �ϱ�',28,4);
INSERT INTO tbl_std VALUES ('3','�Ӳ���','010-3569-4259','���ֱ����� ����',21,1);
INSERT INTO tbl_std VALUES ('4','����','010-6574-9632','���ֱ����� ����',19,1);

SELECT * FROM tbl_std;

UPDATE tbl_addr SET st_addr='����ϵ� ������' WHERE st_name='�̸���';

