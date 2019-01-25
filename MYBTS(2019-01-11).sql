--����� mybts ȭ���Դϴ�.

--mySQL 
SHOW TABLES ;

--Orcle
SELECT * FROM dBA_TABLES WHERE OWNER = 'MYBTS' ;

--���̺��� ������ ����ʹ�.
--��� CREATE �Ǿ����� Ȯ��
DESC tbl_student;
DESc tbl_score;


SELECT * FROM tbl_score ORDER BY st_num;
--�������� Ȯ��
SELECT * FROM USER_CONSTRAINTS ;

SELECT * FROM USER_SEQUENCES ;

SELECT SEQ_SCORE.NEXTVAL FROM DUAL;

--ALTER SEQUENCE SEQ_SCORE INCREMENT BY -2;
ALTER SEQUENCE SEQ_SCORE INCREMENT BY 1;

INSERT INTO tbl_score(id,st_num,sc_sb_code,sc_score) VALUES(SEQ_SCORE.NEXTVAL,'00007','002',80);
INSERT INTO tbl_score(id,st_num,sc_sb_code,sc_score) VALUES(SEQ_SCORE.NEXTVAL,'00007','003',86);
INSERT INTO tbl_score(id,st_num,sc_sb_code,sc_score) VALUES(SEQ_SCORE.NEXTVAL,'00007','004',80);
INSERT INTO tbl_score(id,st_num,sc_sb_code,sc_score) VALUES(SEQ_SCORE.NEXTVAL,'00007','005',86);
INSERT INTO tbl_score(id,st_num) VALUES(SEQ_SCORE.NEXTVAL,'00008');


--���� view�� �����Ͽ� java�� �����Ͽ� ����� ��� �� AS Į������ �̸��� vo�� ��������� �����ؾ� �ϴµ�
--�ѱ۷� �ۼ��� �ϸ�, ��������� �ѱ۷� �ۼ��ؾ� �Ѵ�.
--�ǹ������� �ѱ� ����� �����ϴ� ����� ������ �������� �ۼ��Ѵ�.
CREATE VIEW view_score_sum
AS
SELECT st_num, SUM(DECODE(sc_sb_code, '001',sc_score,0)) AS ss_kor,
        SUM(DECODE(sc_sb_code, '002',sc_score,0)) AS ss_eng,
        SUM(DECODE(sc_sb_code, '003',sc_score,0)) AS ss_math,
        SUM(DECODE(sc_sb_code, '004',sc_score,0)) AS ss_sci,
        SUM(DECODE(sc_sb_code, '005',sc_score,0)) AS ss_music
FROM tbl_score GROUP BY st_num ORDER BY st_num;

SELECT * FROM view_score_sum;

DESC tbl_score;

SELECT * fROM tbl_student;

ALTER TABLE tbl_student MODIFY st_num VARCHAR2(5);
ALTER TABLE tbl_score MODIFY st_num VARCHAR2(5);
ALTER TABLE tbl_score MODIFY sc_sb_code VARCHAR2(5);

