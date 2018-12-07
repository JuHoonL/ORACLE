--����� USER1���� ������ ȭ��

--DDL CREATE TABLE�� 
--DML INSERT SELECT UPDATE DELETE�� ���������� �ô�.
--�ɼǵ��� �߰��ؼ� �ٸ� ���� ��ɵ��� �н�

CREATE TABLE tbl_student(
    st_num CHAR(7) PRIMARY KEY,
    st_name nVARCHAR2(20) NOT NULL,
    st_tel nVARCHAR2(15),
    st_age NUMBER(3)
    );
    
SELECT * FROM tbl_student;
INSERT INTO tbl_student VALUES('001','�̸���','010-1245-7342',19);
UPDATE tbl_student SET st_addr = '������' WHERE st_num = '001';

--�̹� �����ϰ� �����Ͱ� �߰��� tbl_student�� �ּ� Į���� �����Ȱ��� �߰��ߴ�. �׷��� tbl_student TABLE�� �ּ� Į���� �߰� �Ϸ��� �Ѵ�.
--DDL ��� ü�� : CREATE(����), DROP(����), ALTER(����) => USER, TABLE, INDEX ���� ���� ���� ����
ALTER TABLE tbl_student ADD st_addr nVARCHAR2(125); 
SELECT * FROM tbl_student;

INSERT INTO tbl_student VALUES('002','������','010-6879-1579',16,'�ͻ��');
--���� ���̺� ������ �Է��� �� �й�, �̸�, ��ȭ��ȣ, ����, �ּ� ���� �߰��� �ؾ��Ѵ�.
--�׷��� �Է��� ������ �й�, �̸�, ����, �ּ�, ��ȭ��ȣ ������ �ۼ��Ǿ� �־ �ڲ� �Է� �Ǽ��� �ϰ� �ǹǷ� INSERT���� �ɼ��� ����ؼ�
--�� ������ �ٲٰ��� �Ѵ�. �̸� �������ְ� �ۼ����ϸ� ������ �����ϰ� �ش������ �߰�����
INSERT INTO tbl_student(st_num,st_name,st_age,st_addr,st_tel) VALUES('003','ȫ�浿',12,'�����','010-2487-5687');

CREATE TABLE tbl_score(
    st_num CHAR(7) PRIMARY KEY,
    st_kor NUMBER(3),
    st_eng NUMBER(3),
    st_mth NUMBER(3)
    );
    
INSERT INTO tbl_score(st_num) VALUES('001');
INSERT INTO tbl_score(st_num) VALUES('002');
INSERT INTO tbl_score(st_num) VALUES('003');
INSERT INTO tbl_score(st_num) VALUES('004');
INSERT INTO tbl_score(st_num) VALUES('005');
INSERT INTO tbl_score(st_num) VALUES('006');
INSERT INTO tbl_score(st_num) VALUES('007');

SELECT * FROM tbl_score;

UPDATE tbl_score SET st_kor = 90, st_eng = 80, st_mth = 70 WHERE st_num = '001';
UPDATE tbl_score SET st_kor = 87, st_eng = 68, st_mth = 78 WHERE st_num = '002';
UPDATE tbl_score SET st_kor = 98, st_eng = 88, st_mth = 86 WHERE st_num = '003';
UPDATE tbl_score SET st_kor = 99, st_eng = 98, st_mth = 99 WHERE st_num = '004';
UPDATE tbl_score SET st_kor = 56, st_eng = 58, st_mth = 57 WHERE st_num = '005';
UPDATE tbl_score SET st_kor = 86, st_eng = 76, st_mth = 68 WHERE st_num = '006';
UPDATE tbl_score SET st_kor = 93, st_eng = 96, st_mth = 92 WHERE st_num = '007';
UPDATE tbl_score SET st_kor = 73, st_eng = 86, st_mth = 79 WHERE st_num = '008';

SELECT st_kor, st_eng, st_mth,st_kor + st_eng + st_mth AS ���� FROM tbl_score;

SELECT st_kor AS ��������, st_eng AS ��������, st_mth AS ��������,(st_kor+st_eng+st_mth) AS ����, (st_kor+st_eng+st_mth)/3 AS ���
FROM tbl_score;  -- �� ���� ������ ����� �����ؼ� ǥ��

SELECT SUM(st_kor) AS ��������,
    SUM(st_eng) AS ��������,
    SUM(st_mth) AS ��������
    FROM tbl_score;     -- ���� ����(�� Į���� ���� �������)
    
SELECT SUM(st_kor)/8 AS �������,
    SUM(st_eng)/8 AS �������,
    SUM(st_mth)/8 AS �������
    FROM tbl_score;     -- ���� ���(�� Į���� ���� ������ ��հ��)

--SQL������ ����(��)�� ���������Ͽ� �˻����� ����� ���ִ�. �� �� �˻������� ������ Į���� ���� ���ڿ��� ���ڿ����̰� ��� �����ؾ��Ѵ�.
--����, �׷��� Į���� CHAR������ �����ϴ� ���� ����.
SELECT * FROM tbl_score WHERE st_num > '003' AND st_num <= '005';

SELECT st_kor AS ��������, 
    st_eng AS ��������, 
    st_mth AS ��������,
    (st_kor+st_eng+st_mth) AS ����, 
    ROUND((st_kor+st_eng+st_mth)/3,2) AS ���        --ROUND �Լ��� ROUND(��,�Ҽ��ڸ���)�����̸� �Ҽ��ڸ����ڿ��� �ݿø��Ͽ� ǥ��
FROM tbl_score;                                      --��) ROUND(3.245798547,2) => 3.25

--oracle ���� �Լ� 
SELECT ROUND(DBMS_RANDOM.VALUE(1,45),0) FROM DUAL ; -- 1���� 45������ ������ ���� �߻�

--DUAL TABLE�� ������ ������ ����� ���ų� ���� �Լ����� �׽�Ʈ �غ����� �� �� ����ϴ� DUMMY TABLE
--ORACLE ���� ������ SELECT ������ FROM�� ������ ������ �߻��ϹǷ� �ӽ÷� ����� �� �ִ� DUMMY TABLE�� ����� �а�
SELECT * FROM DUAL;

SELECT 30 * 40 FROM tbl_score;

SELECT DBMS_RANDOM.VALUE(50,100) AS ���� FROM DUAL;
SELECT ROUND(DBMS_RANDOM.VALUE(50,100),0) AS ���� FROM DUAL;

UPDATE tbl_score SET st_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_mth = ROUND(DBMS_RANDOM.VALUE(50,100),0)
                WHERE st_num = '001';
                
UPDATE tbl_score SET st_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_mth = ROUND(DBMS_RANDOM.VALUE(50,100),0)
                WHERE st_num = '002';

UPDATE tbl_score SET st_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_mth = ROUND(DBMS_RANDOM.VALUE(50,100),0)
                WHERE st_num = '003';
                
UPDATE tbl_score SET st_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_mth = ROUND(DBMS_RANDOM.VALUE(50,100),0)
                WHERE st_num = '004';
                
UPDATE tbl_score SET st_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_mth = ROUND(DBMS_RANDOM.VALUE(50,100),0)
                WHERE st_num = '005';
                
UPDATE tbl_score SET st_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_mth = ROUND(DBMS_RANDOM.VALUE(50,100),0)
                WHERE st_num = '006';       
                
UPDATE tbl_score SET st_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
                    st_mth = ROUND(DBMS_RANDOM.VALUE(50,100),0)
                WHERE st_num = '007';                