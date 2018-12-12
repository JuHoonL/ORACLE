--여기는 user2 접속화면입니다

CREATE TABLE tbl_test1(
    str_num CHAR(7) PRIMARY KEY,
    intKor NUMBER(3),
    intEng NUMBER(3),
    intMath NUMBER(3)
);

--표준 설정
CREATE TABLE tbl_test2(
    str_num CHAR(7),
    intKor NUMBER(3),
    intEng NUMBER(3),
    intMath NUMBER(3),
    PRIMARY KEY(str_num)
);

DROP TABLE tbl_users ;

CREATE TABLE tbl_users(
    str_num CHAR(3) PRIMARY KEY,
    str_name nVARCHAR2(20),
    str_tel nVARCHAR2(15)
);

INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('001','홍길동','010-6587-1597');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('002','이몽룡','010-5796-7797');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('003','성춘향','010-7795-5236');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('004','이성계','010-9963-2458');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('005','이방원','010-5882-6974');

SELECT str_num,str_name,str_tel FROM tbl_users;

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('001',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('002',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );
                                                            
INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('003',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );                                                            

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('004',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('005',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );
                                                            
SELECT str_num,intKor,intEng,intMath,
        (intKor+intEng+intMath) AS 총점,
        (intKor+intEng+intMath)/3 AS 평균 FROM tbl_test1;        

SELECT str_num,intKor,intEng,intMath FROM tbl_test1 ORDER BY str_num ;        
SELECT str_num,intKor,intEng,intMath FROM tbl_test1 ORDER BY str_num DESC;

--학생의 점수를 관리하는 TABLE을 설계하는데 가장 일반적인 방법으로 TABLE을 만들면 필요한 칼럼을 모두 포함하는 
--TABLE을 생성할 수 있다.

--학번, 이름, 국어, 영어, 수학, 총점, 평균
--학번, 이름, 전화번호, 주소, 국어, 영어, 수학, 총점, 평균 

--하지만 DB적인 관점에서는 한개의 TABLE에 필요한 칼럼을 모두 나열하는 것은 매우 바람직 하지 않다.
--DB관점에서는 필요한 정보들끼리 TABLE을 별도로 생성해서 DATA를 관리한다.

--학생정보는 tbl_users 테이블에 있고, 점수정보는 tbl_test1 테이블에 있게하는 것이 좋다.

--하지만, 이렇게 테이블을 분리하면 점수정보를 보면서 학생정보를 같이 조회하고 싶을 때 어려움이 발생한다.

--그래서 표준SQL에는 두개의 TABLE을 연결해서 마치 1개의 TABLE처럼 데이터를 볼 수 있는 기능을 제공한다.

--같은 칼럼값(보통 PK)이 있는경우 그 값을 이용해서 합하여 볼수 있는 명령어(두개의 테이블을 묶어서 조회)
SELECT * FROM tbl_test1, tbl_users WHERE tbl_test1.str_num = tbl_users.str_num;

SELECT str_num,intKor,intEng,intMath,
        (intKor+intEng+intMath) AS 총점,
        (intKor+intEng+intMath)/3 AS 평균 
FROM tbl_test1, tbl_users 
WHERE tbl_test1.str_num = tbl_users.str_num;

--두개의 테이블을 묶어서 원하는 칼럼만 뽑아서 조회하기
SELECT tbl_test1.str_num AS 순번,tbl_users.str_name AS 이름,tbl_users.str_tel AS 전화번호,
    tbl_test1.intKor AS 국어,tbl_test1.intEng AS 영어,tbl_test1.intMath AS 수학,
    (tbl_test1.intKor+tbl_test1.intEng+tbl_test1.intMath) AS 총점,
        ROUND((tbl_test1.intKor+tbl_test1.intEng+tbl_test1.intMath)/3,2) AS 평균
FROM tbl_test1, tbl_users WHERE tbl_test1.str_num = tbl_users.str_num;

--테이블 이름을 선언해서 명령어를 줄여서 조회
SELECT T.str_num AS 순번,U.str_name AS 이름,U.str_tel AS 전화번호,
    T.intKor AS 국어,T.intEng AS 영어,T.intMath AS 수학,
    (T.intKor+T.intEng+T.intMath) AS 총점,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS 평균
FROM tbl_test1 T, tbl_users U WHERE T.str_num = U.str_num;

--오라클 9 이상에서 사용하는 전용 EQ JOIN(오류걸림;;)
SELECT T.str_num AS 순번,U.str_name AS 이름,U.str_tel AS 전화번호,
    T.intKor AS 국어,T.intEng AS 영어,T.intMath AS 수학,
    (T.intKor+T.intEng+T.intMath) AS 총점,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS 평균
FROM tbl_test1 T NATURAL JOIN tbl_users U WHERE T.str_num = U.str_num;

--test1 TABLE에 점수 하나만 추가
INSERT INTO tbl_test1 VALUES('006',90,90,100);

--test1에만 있고 users에는 없는 경우 묶어서 조회할 때(LEFT JOIN  왼쪽에 있는 내용은 모두 조회하라는 명령)
SELECT T.str_num AS 순번,U.str_name AS 이름,U.str_tel AS 전화번호,
    T.intKor AS 국어,T.intEng AS 영어,T.intMath AS 수학,
    (T.intKor+T.intEng+T.intMath) AS 총점,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS 평균
FROM tbl_test1 T LEFT JOIN tbl_users U ON T.str_num = U.str_num;

--위가 같은 코드 users TABLE에 없는 데이터를 + 해서 조회하라
SELECT T.str_num AS 순번,U.str_name AS 이름,U.str_tel AS 전화번호,
    T.intKor AS 국어,T.intEng AS 영어,T.intMath AS 수학,
    (T.intKor+T.intEng+T.intMath) AS 총점,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS 평균
FROM tbl_test1 T, tbl_users U WHERE T.str_num = U.str_num(+);

CREATE VIEW myJOIN AS  -- 자주 사용하는 코드의 경우 myJOIN으로 선언해서 계속 사용가능하게 저장(메서드같은 느낌)
SELECT T.str_num AS 순번, U.str_num AS 학번, U.str_name AS 이름,U.str_tel AS 전화번호,  --As를 다르게 설정해주면 str_num둘다조회
    T.intKor AS 국어,T.intEng AS 영어,T.intMath AS 수학, 
    (T.intKor+T.intEng+T.intMath) AS 총점,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS 평균
FROM tbl_test1 T, tbl_users U WHERE T.str_num = U.str_num;

SELECT * FROM myJOIN ;

DROP VIEW myJOIN;

--DCL 명령(COMMIT, ROLLBACK, GRANT, REVOKE)
--tbl_users & tbl_test1은 물리 저장공간에는 저장이 안되어있는 상태로 오라클의 임시저장영역에만 저장이 되어있는 상태
--오라클의 임시저장영역에만 저장되어있는 TABLE을 물리 저장공간에 저장하는 키워드 학습
COMMIT ;     --모든 저장 내용을 물리적 저장공간에 반영하라

DELETE FROM tbl_test1 WHERE str_num = '003';
SELECT * FROM tbl_test1;
ROLLBACK;   --COMMIT하기 전의 데이터파일로 되돌림
