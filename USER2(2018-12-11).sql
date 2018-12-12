--여기는 user2

CREATE TABLE tbl_users(
    str_userid CHAR(12) PRIMARY KEY,
    str_name nVARCHAR2(50) NOT NULL,
    str_tel CHAR(15),
    str_addr nVARCHAR2(125)
);

INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('001','홍길동','010-8745-9625','전라남도 장성군');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('002','이몽룡','010-5874-4125','전라북도 남원시');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('003','성춘향','010-4795-1248','전라북도 남원시');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('004','장보고','010-2587-4796','전라남도 해남군');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('005','이순신','010-7469-2479','서울시 강남구');

ALTER TABLE tbl_users MODIFY str_userid CHAR(6);
ALTER TABLE tbl_users MODIFY str_name nVARCHAR2(5);
--CHAR는 줄이는건 안되고 늘리는 것만 됌. 그러나 nVARCHAR2는 데이터크기보다 작지 않으면 줄이는것 가능
--CHAR형 데이터는 보이는 데이터와 달리 실제 크기만큼 공백등으로 이미 채워져 있어서 크기를 줄이기가 안된다.
--nVARCHAR2 형 데이터는 보이는 데이터 중 가장 길이가 긴 데이터 만큼 크기를 줄일 수 있다.

INSERT INTO tbl_users(str_userid,str_name) VALUES ('006','퇴계이황');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('007','율곡이이');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('008','안중근');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('009','이성계');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('010','이방원');

SELECT * FROM tbl_users;

SELECT str_userid,str_name,str_tel,str_addr FROM tbl_users;

SELECT str_name,str_tel FROM tbl_users;

UPDATE tbl_users SET str_tel = '010-7895-3647' WHERE str_userid = '006';
UPDATE tbl_users SET str_addr = '경상남도 진해시' WHERE str_userid = '006';

UPDATE tbl_users SET str_tel = '010-8647-9541' WHERE str_userid = '007';
UPDATE tbl_users SET str_addr = '부산광역시 해운대구' WHERE str_userid = '007';

UPDATE tbl_users SET str_tel = '010-7452-9637' WHERE str_userid = '008';
UPDATE tbl_users SET str_addr = '함경북도' WHERE str_userid = '008';

UPDATE tbl_users SET str_tel = '010-8521-7561' WHERE str_userid = '009';
UPDATE tbl_users SET str_addr = '서울시 동작구' WHERE str_userid = '009';

UPDATE tbl_users SET str_tel = '010-9523-7462' WHERE str_userid = '010';
UPDATE tbl_users SET str_addr = '서울시 동작구' WHERE str_userid = '010';

SELECT str_userid,str_name,str_tel,str_addr FROM tbl_users WHERE str_name = '홍길동';

SELECT * FROM tbl_users WHERE str_addr = '서울시 동작구' AND str_name = '이방원';

SELECT * FROM tbl_users WHERE str_userid > '002' AND str_userid <= '006';

--위와 같은 BETWEEN이라는 표준 명령어
SELECT * FROM tbl_users WHERE str_userid BETWEEN '003' AND '006';

--현재 tbl_users에 저장된 데이터 개수가 몇개냐?(SQL의 통계함수)
--COUNT, SUM, AVG, MIN, MAX 등이 있다.(칼럼을 감싸는 함수라고 정의됌)
SELECT COUNT (*) FROM tbl_users;
SELECT MIN (str_userid) FROM tbl_users;
SELECT MAX (str_userid) FROM tbl_users;
SELECT COUNT (*) AS 개수, MIN(str_userid) 작은값, MAX(str_userid) AS  큰값 FROM tbl_users;

