--여기는 gradeUSER 화면입니다.

SELECT * FROM tbl_student;

SELECT * FROM tbl_student WHERE st_name = '배칠수';

--학생의 이름이 같은 데이터가 있는지(=중복값) 확인
--이름 칼럼으로 GROUP BY 를 실행해서 결과를 확인
SELECT st_name, COUNT(st_name) FROM tbl_student GROUP BY st_name;

SELECT st_num, st_name, st_tel, st_addr FROM tbl_student WHERE st_name = '윤정희';

SELECT * FROM tbl_student WHERE st_name = '찰스';

SELECT * FROM tbl_student;

--SELECT를 수행할 때(특별히 문자열일 경우) 값의 전체를 알지 못하고 일부만을 알고 있을 때, 부분 문자열 검색을 사용
--부분 문자열 검색은 DB의 SQL명령문 중에서 가장 성능(실행능령)이 떨어지는 명령문으로 특별한 경우가 아니면 가급적 사용 X

-- LIKE '값%'는 해당값이 맨앞에 있는 부분 문자열 검색
SELECT * FROM tbl_student WHERE st_name LIKE '김%'; 

SELECT * FROM tbl_student WHERE st_addr LIKE '서울%'; 

-- LIKE '%값%'는 해당값이 어디있던지 해당 데이터에 부분 문자열이 있는 포함되어있는 데이터 검색
SELECT * FROM tbl_student WHERE st_name LIKE '%정%'; 

SELECT * FROM tbl_student WHERE st_name LIKE '%정%' OR st_name LIKE '%윤%' OR st_name LIKE '%철%';


CREATE TABLE tbl_score(
    sc_code     NUMBER(5)  PRIMARY KEY,
	sc_kor      NUMBER(3),
	sc_eng      NUMBER(3),
	sc_math     NUMBER(3)
);

ALTER TABLE tbl_score MODIFY sc_code CHAR(5);

ALTER TABLE tbl_score RENAME COLUMN sc_code to sc_num;

DESC tbl_score;

