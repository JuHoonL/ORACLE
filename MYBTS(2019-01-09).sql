--¿©±â´Â mybts È­¸éÀÔ´Ï´Ù.

CREATE TABLE tbl_student(
    st_num      CHAR(5)          PRIMARY KEY,
    st_name     nVARCHAR2(20)    NOT NULL,
    st_grade    CHAR(2),
    st_tel      nVARCHAR2(20)
);


INSERT INTO tbl_student(st_num,st_name,st_grade,st_tel) VALUES('00001','È«±æµ¿','1','010-5789-5413');

INSERT INTO tbl_student(st_num,st_grade,st_name,st_tel) VALUES('00002','3','ÀÌ¸ù·æ','010-5789-5413');

SELECT * FROM tbl_student;

INSERT INTO tbl_student(st_num,st_name,st_grade,st_tel) VALUES('00003','010-5789-5413','2','¼ºÃáÇâ');

UPDATE tbl_student SET st_name = '¼ºÃáÇâ', st_tel = '010-5789-5413' WHERE st_num = '00003';

INSERT INTO tbl_student(st_num,st_name,st_grade,st_tel) VALUES('00004','È«±æµ¿','1','010-5789-5413');

SELECT st_name, COUNT(*) FROM tbl_student GROUP BY st_name;

SELECT * fROM tbl_student WHERE st_name = 'È«±æµ¿';

DELETE FROM tbl_student WHERE st_num = '00004';

commit;


CREATE TABLE tbl_score (
    id          NUMBER      PRIMARY KEY,
    st_num      CHAR(5)     NOT NULL,
    sc_sb_code  CHAR(3)     NOT NULL,
    sc_score    NUMBER
);

CREATE SEQUENCE SEQ_SCORE START WITH 1 INCREMENT BY 1 ;

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'00001','001',90);

SELECT * FROM tbl_score;

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'00001','001',90);

DELETE FROM tbl_score WHERE id = 2 ;

SELECT SEQ_SCORE.NEXTVAL FROM tbl_score;

ALTER SEQUENCE SEQ_SCORE INCREMENT BY 1;

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'00007','001',90);

commit;