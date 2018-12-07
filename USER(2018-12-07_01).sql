--여기는 USER1으로 접속한 화면

--DDL CREATE TABLE과 
--DML INSERT SELECT UPDATE DELETE를 전반적으로 봤다.
--옵션들을 추가해서 다른 많은 명령들을 학습

CREATE TABLE tbl_student(
    st_num CHAR(7) PRIMARY KEY,
    st_name nVARCHAR2(20) NOT NULL,
    st_tel nVARCHAR2(15),
    st_age NUMBER(3)
    );
    
SELECT * FROM tbl_student;
INSERT INTO tbl_student VALUES('001','이몽룡','010-1245-7342',19);
UPDATE tbl_student SET st_addr = '남원시' WHERE st_num = '001';

--이미 생성하고 데이터가 추가된 tbl_student에 주소 칼럼이 누락된것을 발견했다. 그래서 tbl_student TABLE에 주소 칼럼을 추가 하려고 한다.
--DDL 명령 체계 : CREATE(생성), DROP(삭제), ALTER(변경) => USER, TABLE, INDEX 생성 삭제 변경 가능
ALTER TABLE tbl_student ADD st_addr nVARCHAR2(125); 
SELECT * FROM tbl_student;

INSERT INTO tbl_student VALUES('002','성춘향','010-6879-1579',16,'익산시');
--현재 테이블 구조상 입력할 때 학번, 이름, 전화번호, 나이, 주소 순을 추가를 해야한다.
--그런데 입력할 원고에는 학번, 이름, 나이, 주소, 전화번호 순으로 작성되어 있어서 자꾸 입력 실수를 하게 되므로 INSERT문의 옵션을 사용해서
--이 순서를 바꾸고자 한다. 미리 지정해주고 작성을하면 순서와 무관하게 해당순서로 추가가능
INSERT INTO tbl_student(st_num,st_name,st_age,st_addr,st_tel) VALUES('003','홍길동',12,'서울시','010-2487-5687');

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

SELECT st_kor, st_eng, st_mth,st_kor + st_eng + st_mth AS 총점 FROM tbl_score;

SELECT st_kor AS 국어점수, st_eng AS 영어점수, st_mth AS 수학점수,(st_kor+st_eng+st_mth) AS 총점, (st_kor+st_eng+st_mth)/3 AS 평균
FROM tbl_score;  -- 한 행의 총점과 평균을 생성해서 표시

SELECT SUM(st_kor) AS 국어총점,
    SUM(st_eng) AS 영어총점,
    SUM(st_mth) AS 수학총점
    FROM tbl_score;     -- 열의 총점(각 칼럼의 묶음 총점계산)
    
SELECT SUM(st_kor)/8 AS 국어평균,
    SUM(st_eng)/8 AS 영어평균,
    SUM(st_mth)/8 AS 수학평균
    FROM tbl_score;     -- 열의 평균(각 칼럼의 묶음 총점의 평균계산)

--SQL에서는 문자(열)을 범위설정하여 검색값을 사용할 수있다. 이 때 검색범위로 설정할 칼럼에 저장 문자열은 문자열길이가 모두 동일해야한다.
--또한, 그러한 칼럼은 CHAR형으로 선언하는 것이 좋다.
SELECT * FROM tbl_score WHERE st_num > '003' AND st_num <= '005';

SELECT st_kor AS 국어점수, 
    st_eng AS 영어점수, 
    st_mth AS 수학점수,
    (st_kor+st_eng+st_mth) AS 총점, 
    ROUND((st_kor+st_eng+st_mth)/3,2) AS 평균        --ROUND 함수는 ROUND(값,소수자릿수)형식이며 소수자릿수뒤에서 반올림하여 표현
FROM tbl_score;                                      --예) ROUND(3.245798547,2) => 3.25

--oracle 전용 함수 
SELECT ROUND(DBMS_RANDOM.VALUE(1,45),0) FROM DUAL ; -- 1부터 45까지의 정수의 난수 발생

--DUAL TABLE은 간단한 계산식을 계산해 보거나 내장 함수등을 테스트 해보고자 할 때 사용하느 DUMMY TABLE
--ORACLE 문법 구조상 SELECT 다음에 FROM이 없으면 오류가 발생하므로 임시로 사용할 수 있는 DUMMY TABLE을 만들어 둔것
SELECT * FROM DUAL;

SELECT 30 * 40 FROM tbl_score;

SELECT DBMS_RANDOM.VALUE(50,100) AS 난수 FROM DUAL;
SELECT ROUND(DBMS_RANDOM.VALUE(50,100),0) AS 난수 FROM DUAL;

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