--����� myBTS ȭ���Դϴ�.

DROp TABLE tbl_score;

--FOREIGN KEY  ����
--���� tbl_score ���̺� �����͸� �Է��ϴµ� tbl_student���̺� st_num�� ��ġ���� �ʴ� ���� �Է��ϸ�
--������ �߻��ؼ� �߸� �ԷµǴ� �����Ͱ� ������ ���� �ϴ� ��

--���� ���Ἲ����
CREATE TABLE tbl_score (
    id          NUMBER      PRIMARY KEY,
    st_num      VARCHAR2(5)     NOT NULL,
    sc_sb_code  VARCHAR2(3)     NOT NULL,
    sc_score    NUMBER,
    CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num)
);

--�ʱ⿡ �뷮�� �����͸� �Է��Ϸ��� �ϴµ� FK�� �����Ǿ� ������ tbl_student �����Ͱ� ��� �ϼ��Ǳ� ������
--tbl_score �����͸� �߰� �� �� ���� �ȴ�. ���� �ʱ⿡�� �ϴ� FK�� ���� �Ǵ� ������ �ʰ�
--�����͸� �Է� �ϰ� �����Ͱ� ���� �ϼ��Ǹ� FK�� �����ϴ� ���� ����.

ALTER TABLE tbl_score DROP CONSTRAINT FK_st_num ;

ALTER TABLE tbl_score ADD CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num);

--���� �����͸� ��� �Է��� �� FK�� ����(�߰�)�ϴµ� ������ �߻��ϸ� tbl_score�� �߸��� st_num�� �����Ѵٴ� ���̴�.
--�̷� ���� JOIN�� ���ؼ� �����͸� Ȯ�� �ؾ� �Ѵ�.
SELECT SC.st_num, ST.st_num, ST.st_name 
FROM tbl_score SC LEFT JOIN tbl_student ST ON SC.st_num = ST.st_num WHERE ST.st_num='';

SELECT * FROM tbl_student;

ALTER SEQUENCE SEQ_SCORE INCREMENT BY 1;

delete FROM tbl_score ;

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'00001','001',100);

--���� �����͸� �߰��Ϸ��� �ϴµ� tbl_student���� ���� 001 �й��� �߰��Ϸ��� �ϴ� ������ �߻��Ѵ�.
INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'0001','001',100);

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'00002','001',90);

SELECT * fROM tbl_score;

SELECT SC.st_num, ST.st_name, SC.sc_sb_code, SC.sc_score 
FROM tbl_score SC LEFT JOIN tbl_student ST ON SC.st_num = ST.st_num ;

--�й� 00003�� ���� tbl_score�� �Էµ� �����Ͱ� ��� tbl_student���� ������ ����������
--�й� 00002�� �̹� tbl_score�� �Էµ� �����Ͱ� �ֱ� ������ tbl_student���� ������ �Ұ����ϴ�.
--�ᱹ �� �� ���̺��� st_num�� �������� JOIN���� �������� �� ���� ���谡 ��Ȯ������ ���� JOIN�� �����ص� 
--������ ���� �ȴ�.
dELETE FROM tbl_student WHERE st_num = '00003';
dELETE FROM tbl_student WHERE st_num = '00002';

ALTER TABLE tbl_score DROP CONSTRAINT FK_st_num;

--ON DELETE CASCADE�� tbl_student���� �ش� �����͸� �����ϸ� tbl_score�� �ش� �����͵� ���� ������ �Ǿ����� �Ѵ�.
ALTER TABLE tbl_score ADD CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num) ON DELETE CASCADE;

SELECT * FROM tbl_score;

dELETE FROM tbl_student WHERE st_num = '00002';

--tbl_student�� �����͸� �����ϴµ� tbl_score�� st_num�� ��ġ�ϴ� �����Ͱ� ������ st_num�� NULL�� �ٲپ��
--tbl_score�� st_num�� not null�� �⺻ �����Ǿ������Ƿ� �ش� ���� �ڵ�� �ݿ��� �ȵ�
ALTER TABLE tbl_score ADD CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num) ON DELETE SET NULL;
