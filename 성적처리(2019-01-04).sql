--����� gradeUSER ȭ���Դϴ�.

SELECT * FROM tbl_student;

SELECT * FROM tbl_student WHERE st_name = '��ĥ��';

--�л��� �̸��� ���� �����Ͱ� �ִ���(=�ߺ���) Ȯ��
--�̸� Į������ GROUP BY �� �����ؼ� ����� Ȯ��
SELECT st_name, COUNT(st_name) FROM tbl_student GROUP BY st_name;

SELECT st_num, st_name, st_tel, st_addr FROM tbl_student WHERE st_name = '������';

SELECT * FROM tbl_student WHERE st_name = '����';

SELECT * FROM tbl_student;

--SELECT�� ������ ��(Ư���� ���ڿ��� ���) ���� ��ü�� ���� ���ϰ� �Ϻθ��� �˰� ���� ��, �κ� ���ڿ� �˻��� ���
--�κ� ���ڿ� �˻��� DB�� SQL��ɹ� �߿��� ���� ����(����ɷ�)�� �������� ��ɹ����� Ư���� ��찡 �ƴϸ� ������ ��� X

-- LIKE '��%'�� �ش簪�� �Ǿտ� �ִ� �κ� ���ڿ� �˻�
SELECT * FROM tbl_student WHERE st_name LIKE '��%'; 

SELECT * FROM tbl_student WHERE st_addr LIKE '����%'; 

-- LIKE '%��%'�� �ش簪�� ����ִ��� �ش� �����Ϳ� �κ� ���ڿ��� �ִ� ���ԵǾ��ִ� ������ �˻�
SELECT * FROM tbl_student WHERE st_name LIKE '%��%'; 

SELECT * FROM tbl_student WHERE st_name LIKE '%��%' OR st_name LIKE '%��%' OR st_name LIKE '%ö%';


CREATE TABLE tbl_score(
    sc_code     NUMBER(5)  PRIMARY KEY,
	sc_kor      NUMBER(3),
	sc_eng      NUMBER(3),
	sc_math     NUMBER(3)
);

ALTER TABLE tbl_score MODIFY sc_code CHAR(5);

ALTER TABLE tbl_score RENAME COLUMN sc_code to sc_num;

DESC tbl_score;

