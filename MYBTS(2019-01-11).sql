--여기는 mybts 화면입니다.

--mySQL 
SHOW TABLES ;

--Orcle
SELECT * FROM dBA_TABLES WHERE OWNER = 'MYBTS' ;

--테이블의 구조를 보고싶다.
--어떻게 CREATE 되었는지 확인
DESC tbl_student;
DESc tbl_score;


SELECT * FROM tbl_score ORDER BY st_num;
--시퀀스를 확인
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


--만약 view를 생성하여 java와 연동하여 사용할 경우 각 AS 칼럼들의 이름을 vo의 멤버변수를 선언해야 하는데
--한글로 작성을 하면, 멤버변수를 한글로 작성해야 한다.
--실무에서는 한글 사용을 지양하는 관계로 가급적 영문으로 작성한다.
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

