--여기는 myMEM 화면입니다.

CREATE TABLE tbl_primary(
    p_id        NUMBER          PRIMARY KEY,
    p_name      nVARCHAR2(50)   NOT NULL,
    p_tel       nVARCHAR2(20)
);

--보통 테이블의 PK는 각 데이터(레코드)를 식벽하는 어떤 요소로서 사용이 된다.
--그래서 정보(학생정보, 상품정보, 거래처정보, 부서정보)를 저장하는 테이블에서는 임의로 코드를 생성해서
--데이터를 추가(INSERT)할 때 사용한다. 하지만 임의의 데이터가 다량으로 추가 되는 
--work table(상품매입매출, 학생성적처리 등) 일 경우 코드개념을 추가하기가 매우 어렵다.
--그래서 이런 테이블에는 임의로 id 칼럼을 하나 추가하고 일정한 순서의 값(숫자가 증가되는 형태)을 만들어
--저장을 한다. MySQL같은 DB 에서는 AUTO INCREMENT라는 옵션이 있어서 PK칼럼에 해당 옵션을 지정해주면 INSERT를
--실행할 때 자동으로 1씩 증가된 값을 생성하고 칼럼에 할당 해주도록 할 수 있다.

--그런데, 오라클(11g 이하)에서는 AUTO INCREMENT 옵션이 없다.
--편법으로 오라클에 있는 SEQUENCE라는 객체를 활용해서 AUTO INCREMENT  효과를 얻을 수 있다.

--새로운 SEQUENCE 객체를 생성
--NOMAXVALUE : 제한없이(10의 27승까지) , MAXVALUE 1000 : 1000까지만(지정값:10의 27승까지)  
--NOMINVALUE : -1까지 내려감 , MINVALUE 0 : 최저 0까지만(지정값:10의 -27승까지)
CREATE SEQUENCE PK_SEQ START WITH 1 INCREMENT BY 1 NOMAXVALUE NOMINVALUE ;

DROP SEQUENCE PK_SEQ;

--DUAL : 오라클용 테스트용 DUMY TABLE
SELECT 30 * 40 FROM DUAL;

--위에서 생성한 PK_SEQ 시퀀스를 테스트 해 보자
--SELECT 뒤에는 테이블 칼럼들, 함수들, 수식들만 올수있음(뒤에 오는 것들은 변수이자 자바에서의 메서드처럼(리턴값) 행동함)
--NEXTVAL : 다음값 
SELECT PK_SEQ.NEXTVAL FROM DUAL;

INSERT INTO tbl_primary VALUES(0,'홍길동','0001');

INSERT INTO tbl_primary VALUEs(PK_SEQ.NEXTVAL,'이몽룡','0005');

DELETE FROM tbl_primary; 

SELECT * fROM tbl_primary;

--INSERT를 실행한 후 현재 ID 값을 SEQ를 통해서 확인하는 방법
--INSERT가 실행되지 않은 상테에서 조회를 하면 오류가 난다.
SELECT PK_SEQ.CURRVAL FROM DUAL;

--INSERT가 실행되지 않아 오류가 발생하고 현재 ID값을 얻을 수 없을 때 오라클의 SYSTEM DB(시스템 데이터 사전)로 부터 값을
--조회할 수 있다.
SELECT * FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'PK_SEQ';

--랜덤함수를 사용해서 PK를 만드는 방법
SELECT DBMS_RANDOM.VALUE FROM DUAL;
SELECT ROUND(DBMS_RANDOM.VALUE(100000, 9999999),0) FROM DUAL;

INSERT INTO tbl_primary VALUES(ROUND(DBMS_RANDOM.VALUE(040000, 049999),0),'성춘향','0002');


--GUID(Global Unique Identifier) : 16진수의 32자리 랜덤값(중복없음), 암호키로 주로사용
--UUID(Universally Unique Identifier)
SELECT SYS_GUID() FROM DUAL;

--SYS_GUID를 사용할 때는 PK를 선언할 때 CHAR(32) 이상의 값으로 설정한다.
--SYS_GUID를 사용해서 PK를 선언할 때 CHAR(32)에서 오류가 발생하는 경우가 있다. 그럴 때는 CLOB나 BLOB로 선언
INSERT INTO tbl_primary VALUES(SYS_GUID(),'임꺽정','0000');

--NOCACHE CYCLE : 1부터10까지 생성후 오류가 나지않고 1부터 다시 시작함 단,무거워지기때문에 여러 테이블에 적용시 잘생각해야함
CREATE SEQUENCE SEQ_TEST START WITH 1 INCREMENT BY 1 MAXVALUE 10 NOCACHE CYCLE;

SELECT SEQ_TEST.NEXTVAL FROM DUAL;
DROP SEQUENCE SEQ_TEST;

--시퀀스 변경은 가능하나 START WITH는 변경 안됌(변경하려면 다시 시퀀스를 만들어줘야함)
ALTER SEQUENCE SEQ_TEST INCREMENT BY 2 MAXVALUE 20 NOCYCLE; 
ALTER SEQUENCE SEQ_TEST INCREMENT BY 2 MAXVALUE 20 NOCACHE CYCLE;

--시퀀스의 값을 역순으로 생성하고 싶을 때가 있다.(MAXVALUE를 START되는 수보다 큰값으로 지정해줘야함)
CREATE SEQUENCE ASC_SEQ START WITH 99999 INCREMENT BY -1 MAXVALUE 100000 ;

SELECT ASC_SEQ.NEXTVAL FROM DUAL;

cREATE TABLE tbl_mytable(
    p_id    NUMBER           PRIMARY KEY,
    p_name  nVARCHAR2(50)    NOT NULL,
    p_tel   nVARCHAR2(50)    NOT NULL,
    p_kor   NUMBER(3),
    p_eng   NUMBER(3)
);

SELECT * FROM tbl_mytable;

CREATE SEQUENCE MY_SEQ START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '홍길동', '010-2487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '이몽룡', '010-3487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '성춘향', '010-4487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '이성계', '010-5487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '이방원', '010-6487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '장보고', '010-7487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '임꺽정', '010-8487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '이순신', '010-9487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '전몽준', '010-1487-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

INSERT INTO tbl_mytable 
VALUES(MY_SEQ.NEXTVAL, '안중근', '010-1087-9856', ROUND(DBMS_RANDOM.value(50,100),0), ROUND(DBMS_RANDOM.value(50,100),0));

SELECT p_id, p_name, (p_kor + p_eng) AS 합계 FROM tbl_mytable;