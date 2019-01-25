--여기는 gradeUser 화면입니다.
DESC tbl_student;
SELECT * FROM tbl_student;
DESC tbl_score01;

-- ID   학번  과목  점수
CREATE TABLE tbl_score01 (
    sc_id       NUMBER          PRIMARY KEY,
    sc_st_num   VARCHAR2(5)     NOT NULL,
    sc_subject  VARCHAR2(3)     NOT NULL,
    sc_score    NUMBER(3)
);

SELECT COUNT(*) FROM tbl_score01;

SELECT * FROM tbl_score01;

--과목테이블 생성
--ID   과목번호     과목명    담당교수
CREATE TABLE tbl_subject (
    su_num      VARCHAR2(3)     PRIMARY KEY,
    su_name     nVARCHAR2(20)   NOT NULL,
    su_pro      nVARCHAR2(30)
);

SELECT * FROM tbl_subject;

--모든 칼럼에 데이터가 있을 경우 사용하는 방법
--VALUES에는 데이터 리스트를 테이블 생성할때 순서로 작성
INSERT INTO tbl_subject VALUES('001','국어','홍길동');

INSERT INTO tbl_subject(su_num,su_name) VALUES('002','영어');

--테이블을 생성할 당시의 칼럼 순서를 모르거나 정확히 칼럼과 일치하도록
--데이터를 작성하는 방법
INSERT INTO tbl_subject(su_name,su_num) VALUES('수학','003');

UPDATE tbl_subject SET su_pro = '성춘향' WHERE su_num = '003';

INSERT INTO tbl_subject(su_num,su_name) VALUES('004','물리');

INSERT INTO tbl_subject(su_num,su_name) VALUES('005','음악');

INSERT INTO tbl_subject(su_num,su_name) VALUES('006','음악');

UPDATE tbl_subject SET su_name = '무용' WHERE su_num = '006';

INSERT INTO tbl_subject(su_num,su_name) VALUES('900','국토지리');

DELETE FROM tbl_subject WHERE su_num = '900';

--성적테이블의 데이터를 확인하는데 과목칼럼의 데이터들이 과목명이 아니고,
--과목 번호로 되어있다. 어떤과목인지 알기가 매우어렵다.
--성적테이블과 과목테이블을 join을 실행해서 조회를 하려고한다.

SELECT SC.sc_st_num, SC.sc_subject, SU.su_name, SC.sc_score 
FROM tbl_score01 SC LEFT JOIN tbl_subject SU ON SC.sc_subject = SU.su_num;

--성적조회를 하는데 학생명이 없어서 누구의 점수인지 확인하기가 어렵다.
--학생테이블과 join 실행해서 조회를 하려고 한다.
SELECT SC.sc_st_num, ST.st_name, SC.sc_score 
FROM tbl_student ST LEFT JOIN tbl_score01 SC ON ST.st_num = SC.sc_st_num ORDER BY ST.st_num;

ALTER TABLE tbl_student MODIFY st_num CHAR(5);
ALTER TABLE tbl_score01 MODIFY sc_st_num CHAR(5);

--CHAR형과 VARCHAR2형의 경우 공백의 크기가 달라서 데이터조회가 안되므로 TRIM으로 공백을 제거해줘야함
SELECT SC.sc_st_num, ST.st_name, SC.sc_score 
FROM tbl_student ST LEFT JOIN tbl_score01 SC ON TRIM(ST.st_num) = TRIM(SC.sc_st_num) ORDER BY ST.st_num;

ALTER TABLE tbl_score01 MODIFY sc_st_num VARCHAR2(5);

--학생테이블과 과목테이블, 점수테이블을 동시에 join 실행 view만들기
CREATE VIEW view_score
AS
SELECT SC.sc_st_num AS 학번, ST.st_name AS 학생이름, SC.sc_subject AS 과목번호,
SU.su_name AS 과목이름, SC.sc_score AS 과목점수
FROM tbl_score01 SC 
LEFT JOIN tbl_student ST ON TRIM(ST.st_num) = TRIM(SC.sc_st_num) 
LEFT JOIN tbl_subject SU ON SC.sc_subject = SU.su_num ORDER BY ST.st_num;

SELECT * FROM view_score;

--학생데이터 학번 : 00001
--성적데이터 학번 : 001
--ON TRIM( '00' || SC.sc_st_num ) = TRIM( ST.st_num) => ||는 문자열 합셩시 사용
--ON LPAD(SC.sc_st_num,5,'0') = ST.st_num => 5자리를 만드는데 왼쪽공백에 0을 채워넣어라

SELECT LPAD(sc_st_num,5,'0') FROM tbl_score01;

--view를 이용한 SELECT 연습
SELECT 학번, 학생이름, SUM(과목점수) FROM view_score GROUP BY 학번, 학생이름;

cREATE VIEW 성적일람표
AS
SELECT 학번, 학생이름, SUM(DECODE(과목번호,'001',과목점수)) AS 국어점수,
    SUM(DECODE(과목번호,'002',과목점수)) AS 영어점수,
    SUM(DECODE(과목번호,'003',과목점수)) AS 수학점수,
    SUM(DECODE(과목번호,'004',과목점수)) AS 물리점수,
    SUM(DECODE(과목번호,'005',과목점수)) AS 음악점수,
    SUM(과목점수) AS 총점, AVG(과목점수) AS 평균,
    RANK() OVER(ORDER BY AVG(과목점수) DESC) AS 순위
FROM view_score GROUP BY 학번, 학생이름 ORDER BY 순위;

SELECT * FROM 성적일람표;

INSERT INTO tbl_subject(su_num,su_name,su_pro) VALUES('009','지구과학','이몽룡');

UPDATE tbl_subject SET su_pro = '임꺽정' WHERE su_num = '009';

UPDATE tbl_subject SET su_num = '010' WHERE su_num = '009';

SELECT * FROM tbl_subject;

