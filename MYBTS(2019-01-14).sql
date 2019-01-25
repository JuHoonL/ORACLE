--����� myBTS ȭ���Դϴ�.

CREATE TABLE tbl_student(
    st_num      CHAR(5)          PRIMARY KEY,
    st_name     nVARCHAR2(20)    NOT NULL,
    st_grade    CHAR(2),
    st_tel      nVARCHAR2(20)
);

CREATE TABLE tbl_score (
    id          NUMBER      PRIMARY KEY,
    st_num      CHAR(5)     NOT NULL,
    sc_sb_code  CHAR(3)     NOT NULL,
    sc_score    NUMBER
);

Alter TABLE tbl_student MODIFY st_num VARCHAR2(5);

Alter TABLE tbl_score MODIFY st_num VARCHAR2(5);
Alter TABLE tbl_score MODIFY sc_sb_code VARCHAR2(3);

DESC tbl_student;
DESC tbl_score;

DROP TABLE tbl_score;

--���� ���̺�(tbl_score)�� �����͸� �߰��� �� �й�(st_num)�� �����ȣ(sc_sb_code)�� �ߺ��Ǵ� ������
--�߻��� �� �ִ�.
--���� ��� 00001 �й��� 001 ������ 2�� �̻� �ߺ��Ǿ� �Է� �� �� �����Ƿ� �ߺ��Է��� �ȵǵ��� 
--���̺� ���踦 �ٽ� �����Ѵ�. (������� �߰�, CONSTRANINT)

CREATE TABLE tbl_score (
    id          NUMBER      PRIMARY KEY,
    st_num      VARCHAR2(5)     NOT NULL,
    sc_sb_code  VARCHAR2(3)     NOT NULL,
    sc_score    NUMBER,
    CONSTRAINT  un_num_sb_code UNIQUE(st_num, sc_sb_code)
);

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL, '00001','001', 80);
INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL, '00001','002', 80);
INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL, '00001','003', 80);

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL, '00001','001', 70);

--�ټ��� Į���� ��� PK�� �����ϴ� ���
--id�� �ߺ����� �ƴҰ�� �ߺ����� ��� �߰��� �ɼ�����(Į���� ��� �ϳ��� PK�� �����ϴ°�)
CREATE TABLE tbl_score01 (
    id          NUMBER,
    st_num      VARCHAR2(5)     NOT NULL,
    sc_sb_code  VARCHAR2(3)     NOT NULL,
    sc_score    NUMBER,
    CONSTRAINT  PK_num_sb_code PRIMARY KEY(id, st_num, sc_sb_code)
);

INSERT INTO tbl_score01 VALUES(SEQ_SCORE.NEXTVAL, '00001','001', 80);
INSERT INTO tbl_score01 VALUES(SEQ_SCORE.NEXTVAL, '00001','002', 80);
INSERT INTO tbl_score01 VALUES(SEQ_SCORE.NEXTVAL, '00001','003', 80);

INSERT INTO tbl_score01 VALUES(SEQ_SCORE.NEXTVAL, '00001','001', 70); -- id���� �ٸ����� �����߻� X
INSERT INTO tbl_score01 VALUES(57, '00001','001', 70); --���� id���� ��� �����߻�

SELECT * FROM tbl_score01;

dESC tbl_score01;

--������ �����Ǿ� �ִ� key �� �����ϴ� ���(�������� ���� Į���� ������ ������� ��)
ALTER TABLE tbl_score DROP CONSTRAINT un_num_sb_code;

--�̹� ������ ���̺� ���� ������ �߰��ϴ� ���
ALTER TABLE tbl_score ADD CONSTRAINT un_num_sb_code UNIQUE(st_num,sc_sb_code);

--�ε��� ����
CREATE INDEX  idx_score_num ON tbl_score(st_num);

--�ε����� ���� �˻��� ��(SELECT) �ַ� ����ϴ� Į���� ��� �˻��� �ӵ��� ���̱� ���ؼ� ������ �� Į�� ������
--�ϳ��� Ŭ������ ����� �δ� ���̴�.
SELECT * FROM tbl_score WHERE st_num = '00001';
--�̷��� ����� �����ϸ� DB�� ���� idx_score_num���� �ش� Į���� ��ȸ�ϰ� �ű⿡�� ����� ������ ��������
--tbl_score���� �����͸� �����´�.

--�ε����� ����ϸ� �˻��� ���� �ſ� ���� �����͸� ã�� �� �ִ�.
--�����Ͱ� �������� ���������� ȿ���� �� Ŀ����.
--������ st_num���� ������ ���� �Ͼ�ų� �ʱ⿡ �������� �����͸� �߰��� ���� ������ �ӵ��� ��������.

--�ǹ������� �ʱ⿡ ���� ���� �����͸� �߰� �� ���� �ε����� ������ �ʰ� ����ϴٰ� ������ �߰��� ����(���)
--������ �ε����� ����� ����Ѵ�.

--�����Ϳ� ����, �߰����� ����� �߻��ϸ� �ε���(����)�� �ջ�Ǵ� ��쵵 �߻��Ѵ�.
--�׷� ���� �ε����� �����ϰ�, �ٽ� ����� �־�� �Ѵ�.
DROP INDEX idx_score_num;