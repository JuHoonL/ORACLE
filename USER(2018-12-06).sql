--여기는 user1 입니다.
SELECT 30*40 FROM DUAL;
SELECT '대한민국만세' FROM DUAL;

--현재는 DB 저장소가 없는 상태이므로 DB에서 어떤 일을 수행하기 전에 가장먼저 저장소를 생성해야한다.
--저장소중에서 표준 DB의 대표 저장소를 TABLE을 생성하겠다.
CREATE TABLE tbl_addr (
    name CHAR(50),      -- 50글자범위에 문자를 저장(VARCHAR2 형보다 검색시 속도가 빨라서 좋음)
    age NUMBER(10,1),   -- 정수부 10글자, 소수부 1글자라는 표현
    addr CHAR(50)
);
DROP TABLE tbl_addr;

CREATE TABLE tbl_addr (
    name VARCHAR2(50),     -- 50글자범위에 문자를 저장하되, 만약 글자수가 50글자가 안되면 남은 공간을 압축해서 저장
    age NUMBER,            -- 정수 38자리
    addr VARCHAR2(125)
);

--TABLE을 설계할 때 검색하는 KEY로 사용될 가능성이 많은 항목(column)은 공간 낭비를 감안하고라도 CHAR형으로 선언하는 것이 효율적이다.
--숫자가 저장되는 부분은 NUMBER라는 키워드 만으로 설정이 가능하지만 가급적 최대자릿수를 고려하여 값을 지정해주는 것이 좋다.
CREATE TABLE tbl_addr (
    st_name CHAR(10) NOT NULL,  -- NOT NULL : 해당 칼럼에 데이터가 없으면 그 줄의 데이터는 추가하지마라는 명령어(제약조건1)
    st_age NUMBER(3),
    st_addr VARCHAR2(255)
);

--데이터 추가 테스트
--CRUD중의 C(create) : 이미 생성된 TABLE에 데이터를 1줄 추가하는 것
INSERT INTO tbl_addr VALUES ('홍길동',12,'서울시 영등포구');

--추가된 데이터 확인 테스트
--CRUD중의 R(read) : TABLE에 저장된 데이터를 확인하는 절차
SELECT st_name,st_age,st_addr FROM tbl_addr;

INSERT INTO tbl_addr VALUES ('이몽룡',16,'전라북도 남원시');

SELECT st_name,st_age,st_addr FROM tbl_addr;

SELECT st_name FROM tbl_addr;

SELECT st_age FROM tbl_addr;

SELECT st_addr FROM tbl_addr;

SELECT st_addr,st_name FROM tbl_addr;

SELECT * FROM tbl_addr;            -- * : 모든것  / ? : 한개

UPDATE tbl_addr SET st_name = '성춘향';

SELECT st_name FROM tbl_addr;

DELETE FROM tbl_addr;

CREATE TABLE tbl_addr(
    id NUMBER PRIMARY KEY,   
    st_name CHAR(50) NOT NULL,
    st_age NUMBER(3),
    st_addr VARCHAR2(255)
);

INSERT INTO tbl_addr VALUES(0,'홍길동',12,'서울시');
INSERT INTO tbl_addr VALUES(1,'이몽룡',12,'남원시');
INSERT INTO tbl_addr VALUES(2,'성춘향',12,'익산시');
INSERT INTO tbl_addr VALUES(3,'월매님',12,'익산시');
INSERT INTO tbl_addr VALUES(4,'장보고',12,'남해시');
INSERT INTO tbl_addr VALUES(5,'율곡이이',12,'부산시');
INSERT INTO tbl_addr VALUES(6,'퇴계이황',12,'부산시');
INSERT INTO tbl_addr VALUES(7,'이방원',12,'서울시');
INSERT INTO tbl_addr VALUES(8,'이성계',12,'서울시');
INSERT INTO tbl_addr VALUES(9,'이순신',12,'해남군');

