--여기는 MyMEM 화면입니다.

DROP TABLE tbl_iolist;
DROP TABLE tbl_dept;

--엑셀의 매입매출 정보를 오라클로 import하고 매입매출 DB로 부터 제2정규화를 실행해서 거래처 정보를 분리하는 작업

CREATE TABLE tbl_iolist(
    io_id	    NUMBER	           	PRIMARY KEY	,
    io_date 	CHAR(10)        	NOT NULL,
    io_cname	nVARCHAR2(50)	NOT NULL,
    io_dname	nVARCHAR2(50)	NOT NULL,
    io_dceo	    nVARCHAR2(50),
    io_inout	nVARCHAR2(5) 	NOT NULL,
    io_quan	    NUMBER,
    io_price   	NUMBER,
    io_total    NUMBER			
);

SELECT * FROM tbl_iolist;

SELECT COUNT(*) FROM tbl_iolist;

SELECT io_inout, COUNT(*) FROM tbl_iolist GROUP BY io_inout; 

--매입 매출 정보에서 거래처 정보를 다른 TABLE로 분리해서 제2정규화 과정을 수행
--1. 매입 매출 정보에서 거래처 정보를 추출하는 작업
--가. 거래처명과 대표명을 그룹으로 묶어 리스트를 추출
SELECT io_dname, io_dceo FROM tbl_iolist GROUP BY io_dname, io_dceo ORDER BY io_dname;


--나. 엑셀에서 정리된 거래처정보를 import하기 위해서 TABLE을 생성
CREATE TABLE tbl_dept(
    d_code	CHAR(6)		    PRIMARY KEY,
    d_name	nVARCHAR2(50)	NOT NULL,
    d_ceo	nVARCHAR2(50)			
);

SELECT * FROM tbl_dept;
SELECT COUNT(*) FROM tbl_dept;


--2. tbl_iolist에 tbl_dept와 연결할 칼럼을 추가하고 tbl_dept로 부터 연결작업을 수행
--가. 칼럼추가
ALTER TABLE tbl_iolist ADD io_dcode CHAR(6);
DESC tbl_iolist;

--SUB QUERY : DML 내부에 다른 SELECT문이 있는 SQL을 말한다.
SELECT io_dname, io_dceo, io_dcode FROM tbl_iolist;

--위의 SQL에 SUB QUERY를 추가해서 DEPT 테이블로 부터 io_dcode를 조회해 보자
SELECT io_dname, io_dceo,
(SELECT d_code FROM tbl_dept D WHERE D.d_name = tbl_iolist.io_dname AND D.d_ceo = tbl_iolist.io_dceo) AS CODE FROM tbl_iolist;


--SUB QUERY 를 사용해서 tbl_dept로 부터 tbl_iolist에 거래처 코드를 update하는 코드
UPDATE tbl_iolist I
SET io_dcode = (SELECT d_code FROM tbl_dept D WHERE D.d_name = I.io_dname AND D.d_ceo = I.io_dceo) ;


SELECT io_dname, io_dceo, io_dcode FROM tbl_iolist;

--tbl_iolist의 io_dname과 io_dceo 칼럼을 삭제
ALTER TABLE tbl_iolist DROP COLUMN io_dname;
ALTER TABLE tbl_iolist DROP COLUMN io_dceo;
DESC tbl_iolist;

--iolist와 dept 테이블을 join해서 조회하는 작업
SELECT I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I, tbl_dept D WHERE I.io_dcode = D.d_code;
--이 join은 EQ Join이라고 하며, tbl_iolist테이블에는 있고 tbl_dept테이블에 없는 io_dcode는 절대 존재하지 않는다는 보장이 있을 때 가능
SELECT I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;
--하지만 실제 상황에서는 tbl_dept에는 없고 tbl_iolist에는 있는 io_dcode가 있을수 있다. 그래서 LEFT join을 사용하는 것이 좋다.

--테스트를 위해서 임의의 데이터를 io_dcode로 변경예정
SELECT * FROM tbl_iolist WHERE io_dcode = 'D00100';

UPDATE tbl_iolist SET io_dcode = 'D00500' WHERE io_id = 306;

--EQ JOIN
SELECT I.io_id, I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I, tbl_dept D 
WHERE I.io_dcode = D.d_code AND io_id BETWEEN 300 AND 310 ORDER BY I.io_id;

--LEFT JOIN
SELECT I.io_id, I.io_date, I.io_cname, I.io_dcode, D.d_name, D.d_ceo FROM tbl_iolist I LEFT JOIN tbl_dept D 
ON I.io_dcode = D.d_code WHERE io_id BETWEEN 300 AND 310 ORDER BY I.io_id;

--Join하지 않은 상태로 매입 매출 구분 없이 합계금액을 계산 (11개 2372774)
SELECT COUNT(*), SUM(io_total) FROM tbl_iolist WHERE io_id BETWEEN 300 AND 310;

--EQ Join을 하고 합계 금액 계산 , 한개의 데이터가 없이 합계해서 나옴 (10개 2321774)
SELECT  COUNT(*), SUM(io_total) FROM tbl_iolist I, tbl_dept D 
WHERE I.io_dcode = D.d_code AND io_id BETWEEN 300 AND 310;

--LEFT join을 하고 계산(빠지는 데이터가 없음, 11개 237274)
SELECT  COUNT(*), SUM(io_total) FROM tbl_iolist I LEFT JOIN tbl_dept D 
ON I.io_dcode = D.d_code WHERE io_id BETWEEN 300 AND 310;

--LEFT Join은 왼쪽 테이블의 데이터는 모두 보여주고 이 테이블의 키와 일치하는 데이터가 오른쪽 테이블에 있으면 보여주고 없으면 NULL로 표시
--오른쪽 테이블의 데이터와 일치하는 데이터가 없어서 왼쪽 테이블의 데이터의 일부가 누락되는 것을 방지

--iolist로 부터 거래처정보를 분리
--1. 거래처 정보를 GROUPING 하여 묶은 리스트 조회후 엑셀로 복사
SELECT * FROM tbl_iolist;

--중복값을 없애로 리스트를 조회 (DISTINCT)
SELECT DISTINCT io_cname FROM tbl_iolist order by io_cname;
SELECT io_cname FROM tbl_iolist GROUP BY io_cname order by io_cname;

--2. 코드값 부여

--3. 테이블 생성(tbl_product)
CREATE TABLE tbl_product(
    p_code	CHAR(6)		    PRIMARY KEY	,
    p_name	nVARCHAR2(50)	NOT NULL		
);

DROP TABLE tbl_product;

--4. import
SELECT * FROM tbl_product;


--5. iolist에 pcode 칼럼 생성
ALTER TABLE tbl_iolist ADD io_pcode CHAR(6);
DESC tbl_iolist;

--6. 거래처 정보 테이블에서 iolist의 dcode 칼럼에 UPDATE
UPDATE tbl_iolist I SET I.io_pcode = (SELECT P.p_code FROM tbl_product P WHERE I.io_cname = P.p_name);