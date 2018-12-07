--여기는 user1으로 접속한 화면입니다.
--tbl_addr을 일단 삭제
DROP TABLE tbl_addr;

--tbl_addr을 생성
CREATE TABLE tbl_addr(
    id NUMBER PRIMARY KEY,          --기본키, PK
    st_name CHAR(50) NOT NULL,
    st_age NUMBER(3),
    st_addr VARCHAR2(125)
    );

INSERT INTO tbl_addr VALUES(0,'홍길동',12,'서울시');
INSERT INTO tbl_addr VALUES(1,'홍길동',12,'서울시');
INSERT INTO tbl_addr VALUES(2,'이종환',25,'광주시');
INSERT INTO tbl_addr VALUES(3,'이주현',27,'광주시');
INSERT INTO tbl_addr VALUES(4,'안정하',26,'광주시');
INSERT INTO tbl_addr VALUES(5,'고재범',24,'광주시');
INSERT INTO tbl_addr VALUES(6,'조동혁',25,'광주시');
INSERT INTO tbl_addr VALUES(7,'이주훈',33,'광주시');
INSERT INTO tbl_addr VALUES(8,'이주훈',33,'광주시');

--data를 추가하면서 0번 항목과 7번항복을 잘못 확인하여 같은 데이터인것으로 인식하고 INSERT처리를 해 버렸다.

SELECT * FROM tbl_addr;
SELECT * FROM tbl_addr WHERE st_name = '홍길동';       --조건검색(st_name에 홍길동인 경우만 보여라)

--7행의 홍길동의 주소를 부산으로 수정
UPDATE tbl_addr SET st_addr = '부산시' WHERE id = 1;   --1행의 위치에 있는 st_addr을 '부산시'로 변경
DELETE FROM tbl_addr WHERE id = 8;
UPDATE tbl_addr SET st_addr = '정읍시' WHERE id = 7;
UPDATE tbl_addr SET st_addr = '나주시' WHERE id = 5;

--DATEBASE에 TABLE을 생성할 때 사용하고자 하는 칼럼중에 UNIQUE한 항목이 있다면 그 칼럼을 PIMARY KEY(PK)로 설정하는 것이 좋고
--그렇지 않으면 모든 TABLE에는 ID라는 칼럼을 임의 추가해서 해당 칼럼을 PK로 선언해 주는 것이 좋다.

CREATE TABLE tbl_PostNUM(
    postNUM CHAR(5) PRIMARY KEY,                --개체무결성 보장용
    streetN NVARCHAR2(125) NOT NULL UNIQUE,      --데이터를 비워두거나 같은값이 입력되어 있으면 다시 입력되지 않도록 하는 옵션
    addr NVARCHAR2(125)
    );
