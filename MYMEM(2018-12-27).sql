--여기는 mymem 화면입니다.

CREATE TABLE tbl_score(
    g_id    	NUMBER		    PRIMARY KEY,
    g_stname	nVARCHAR2(50)	NOT NULL,	
    g_subject	nVARCHAR2(10)	NOT NULL,	
    g_score 	NUMBER		
);

DROP TABLE tbl_score;

SELECT COUNT(*) FROM tbl_score;

SELECT g_id, g_stname, g_subject, g_score FROM tbl_score;

SELECT g_subject, SUM(g_score) AS 과목총점, ROUND(SUM(g_score)/100,2) AS 과목평균 FROM tbl_score GROUP BY g_subject;

SELECT g_stname, SUM(g_score) AS 총점, ROUND(SUM(g_score)/6,2) AS 평균 FROM tbl_score GROUP BY g_stname ORDER BY g_stname;

--SQL에서 SELECT는 FOR 명령과 거의 유사하다. 
--함수() = method()이고 , 키워드 = 명령어 이다.
--SQL에서 함수()는 거의 모두가 매개변수를 반드시 필요로 한다.
SELECT g_stname AS 이름, 
(SELECT g_score FROM tbl_score WHERE g_subject = '국어') AS 국어 
FROM tbl_score GROUP BY g_stname;


--오라클 전용함수 실제로 칼럼명으로 나누어지지 않은 내용을 나눠서 표현하는 법
--DECODE(g_subject, '국어', 100, 0) => g_subject에서 '국어'이면 100으로 표현 아니면 0으로 표현해라
SELECT g_stname, 
SUM(DECODE(g_subject, '국어', g_score, 0)) AS 국어,
SUM(DECODE(g_subject, '수학', g_score, 0)) AS 수학,
SUM(DECODE(g_subject, '과학', g_score, 0)) AS 과학,
SUM(DECODE(g_subject, '영어', g_score, 0)) AS 영어,
SUM(DECODE(g_subject, '국사', g_score, 0)) AS 국사,
SUM(DECODE(g_subject, '미술', g_score, 0)) AS 미술 
FROM tbl_score GROUP BY g_stname ;


CREATE VIEW 성적일람표
AS
SELECT g_stname, 
SUM(DECODE(g_subject, '국어', g_score, 0)) AS 국어,
SUM(DECODE(g_subject, '수학', g_score, 0)) AS 수학,
SUM(DECODE(g_subject, '과학', g_score, 0)) AS 과학,
SUM(DECODE(g_subject, '영어', g_score, 0)) AS 영어,
SUM(DECODE(g_subject, '국사', g_score, 0)) AS 국사,
SUM(DECODE(g_subject, '미술', g_score, 0)) AS 미술 
FROM tbl_score GROUP BY g_stname ;

SELECT * FROM 성적일람표;

SELECT * FROM tbl_iolist WHERE ROWNUM < 10;

SELECT * FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

--거래처별로 거래금액이 얼마인가 알고 싶다.
SELECT I.io_dcode, D.d_name, D.d_ceo, SUM(I.io_price * I.io_quan) AS 거래금액
FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code GROUP BY I.io_dcode, D.d_name, D.d_ceo;

--조건문 DECODE를 이용한 매입 매출 금액 산출방법
SELECT I.io_dcode, D.d_name, D.d_ceo, SUM(DECODE(I.io_inout,'매입',I.io_price * I.io_quan,0)) AS 매입금액,
SUM(DECODE(I.io_inout,'매출',I.io_price * I.io_quan,0)) AS 매출금액
FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code GROUP BY I.io_dcode, D.d_name, D.d_ceo;

SELECT g_stname FROM tbl_score GROUP BY g_stname ORDER BY g_stname;

CREATE TABLE tbl_student(
    st_num	    CHAR(5)		    PRIMARY KEY,
    st_name	    nVARCHAR2(50)	NOT NULL	
);

DROP TABLE tbl_student;

SELECT COUNT(*) FROM tbl_student;

SELECT S.g_stname, (SELECT st_name FROM tbl_student T WHERE S.g_stname = T.st_name) FROM tbl_score S GROUP BY S.g_stname;

SELECT S.g_stname, T.st_name FROM tbl_score S LEFT JOIN tbl_student T ON S.g_stname = T.st_name GROUP BY S.g_stname, T.st_name;

ALTER TABLE tbl_score ADD g_stnum CHAR(5);

DESC tbl_score;

UPDATE tbl_score S SET S.g_stnum = (SELECT T.st_num FROM tbl_student T WHERE S.g_stname = T.st_name);

SELECT * FROM tbl_score WHERE g_stnum IS NULL;

ALTER TABLE tbl_score DROP COLUMN g_stname;

SELECT S.g_id, T.st_name, S.g_stnum, S.g_subject, S.g_score FROM tbl_score S LEFT JOIN tbl_student T ON S.g_stnum = T.st_num ORDER BY S.g_stnum; 

CREATE TABLE tbl_subject(
    sb_num	    CHAR(5)		    PRIMARY KEY,
    sb_name	    nVARCHAR2(50)	NOT NULL	
);

INSERT INTO tbl_subject VALUES('B0001', '국어');
INSERT INTO tbl_subject VALUES('B0002', '영어');
INSERT INTO tbl_subject VALUES('B0003', '수학');
INSERT INTO tbl_subject VALUES('B0004', '과학');
INSERT INTO tbl_subject VALUES('B0005', '국사');
INSERT INTO tbl_subject VALUES('B0006', '미술');

ALTER TABLE tbl_score ADD g_bcode CHAR(5);

UPDATE tbl_score S SET S.g_bcode = (SELECT SB.sb_num FROM tbl_subject SB WHERE S.g_subject = SB.sb_name);

SELECT S.g_bcode, SB.sb_num, S.g_subject, SB.sb_name FROM tbl_score S LEFT JOIN tbl_subject SB ON S.g_subject = SB.sb_name WHERE SB.sb_name IS NULL;

