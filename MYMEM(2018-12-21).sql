--여기는 Mymem 화면입니다

--tbl_iolist에서 상품정보테이블을 분리해서 제2정규화 과정을 수행
--
--tbl_iolist 의 개수를 확인
SELECT COUNT(*) FROM tbl_iolist;
SELECT * FROM tbl_iolist;

--전체데이터가 아닌 어떤 조건에 맞는 데이터만 제한해서 확인하고자 할 때는 WHERE 절에서 칼럼 = 조건형식의 SQL을 이용한다.

--어떤 조건을 설정하기가 마땅하지 않을 때 그냥 몇개의 개수만 제한해서(예 10개, 100개) 조회하고자 할 때 오라클 전용 SQL 키워드 중
--칼럼명으로 ROWNUM라는 칼럼이 있다. 이 칼럼은 저장된 데이터의 ROW 순번을 가상으로 표시하는 오라클 DUMY 칼럼

--순서대로 순번을 넣어줌
SELECT ROWNUM, io_date, io_cname, io_dcode FROM tbl_iolist;

--ROWNUM 칼럼을 이용하면 데이터리스트 중에서 몇개만 제한적으로 조회를 할 수 있다.
SELECT ROWNUM, * FROM tbl_iolist WHERE ROWNUM <= 10;  --표준SQL에서는 ROWNUM, * 가 정상작동 되나, 오라클에서는 오류남
SELECT ROWNUM, io_date, io_cname FROM tbl_iolist WHERE ROWNUM <= 10; -- 10번까지만 보여주는 코드

--10~20번까지의 데이터만 조회
SELECT ROWNUM, io_date, io_cname FROM tbl_iolist WHERE ROWNUM BETWEEN 10 AND 20;
SELECT * FROM tbl_iolist;

--MY SQL문법
SELECT * FROM tbl_iolist LIMIT 10;

SELECT * FROM tbl_iolist WHERE ROWNUM < 10;

--상품정보를 상품테이블로 분리하기 위해서 상품이름 리스트를 만든다.
SELECT io_cname FROM tbl_iolist GROUP BY io_cname;

SELECT io_cname, io_inout, io_price FROM tbl_iolist WHERE ROWNUM < 10;

--현재 조회된 데이터에서 io_inout이 '매입'이면 io_price는 '매입단가' 일 것이고 '매출'이면 '매출단가'일 것으로 생각이 된다.
--그래서 io_inout 에 따라 단가를 다르게 표시해 보자

SELECT io_cname, io_inout, DECODE(io_inout, '매입', io_price) 매입단가,
DECODE(io_inout, '매출', io_price) 매출단가 FROM tbl_iolist WHERE ROWNUM < 10;


--표시하고자하는 칼럼이 원래 칼럼 2 + decode로 만든 칼럼 2 일 때 그룹바이를 이용해서 묶을 때 원래 칼럼만 표시하면 오류남(decode칼럼까지 넣어줘야함)
SELECT io_cname, io_inout, DECODE(io_inout, '매입', io_price) 매입단가,
DECODE(io_inout, '매출', io_price) 매출단가 FROM tbl_iolist GROUP BY io_cname, io_inout;

--해결방법1. 그룹바이 뒤에 전부 나열
SELECT io_cname, io_inout, DECODE(io_inout, '매입', io_price) 매입단가,
DECODE(io_inout, '매출', io_price) 매출단가 FROM tbl_iolist GROUP BY io_cname, io_inout, 
DECODE(io_inout, '매입', io_price), DECODE(io_inout, '매출', io_price);

--해결방법2. AVG를 사용해서 dcode부분들을 묶어줌
SELECT io_cname, AVG(DECODE(io_inout, '매입', io_price)) 매입단가,
AVG(DECODE(io_inout, '매출', io_price)) 매출단가 FROM tbl_iolist GROUP BY io_cname ORDER BY io_cname;


CREATE TABLE tbl_product (
    p_code	    CHAR(9)		    PRIMARY KEY,
    p_name	    nVARCHAR2(50)	NOT NULL,	
    p_iprice	NUMBER,		
    p_oprice	NUMBER		
);

DROP TABLE tbl_product;

SELECT * FROM tbl_product;
SELECT COUNT(*) FROM tbl_product;

--이제 상품정보 테이블을 생성하고 데이터를 만들었으니
--매입매출정보에서 상품코드 칼럼을 생성하고 상품코드 칼럼 데이터를 update하고 상품명 칼럼 삭제 
ALTER TABLE tbl_iolist ADD io_pcode CHAR(9);
ALTER TABLE tbl_iolist DROP COLUMN io_pcode;
DESC tbl_iolist;

--서브쿼리를 이용해서 iolist와 productt 두 테이블간의 관계를 한번 살펴보자
SELECT io_cname, (SELECT p_name FROM tbl_product P WHERE P.p_name = I.io_cname), 
(SELECT p_code FROM tbl_product P WHERE P.p_name = I.io_cname) FROM tbl_iolist I;

--productt 테이블에서 상품코드를 조회해서 iolist 테이블의 io_pcode칼럼에 Update하자.
UPDATE tbl_iolist I SET I.io_pcode = (SELECT P.p_code FROM tbl_product P WHERE I.io_cname = P.p_name);
SELECT io_cname FROM tbl_iolist;
SELECT p_name FROM tbl_product;
SELECT io_pcode FROM tbl_iolist;


--Join을 이용해서 검증
SELECT * FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code ORDER BY I.io_pcode;

ALTER TABLE tbl_iolist DROP COLUMN io_cname;

SELECT * FROM tbl_iolist WHERE ROWNUM < 10;

--tbl_iolist는 제2정규화 과정이 완료되었으므로 매입매출명세를 보면서 상품명과 거래처명을 확인하고싶다.
--1. 매입매출명세와 상품명 같이보기
SELECT I.io_date, I.io_pcode, P.p_name, I.io_inout, I.io_price, P.p_iprice, P.p_oprice, I.io_quan, (I.io_price * I.io_quan) AS 합계 
FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code;

--2. 매입매출명세와 거래처정보를 같이 보고 싶다.
SELECT I.io_date, I.io_dcode, D.d_name, D.d_ceo, I.io_pcode, I.io_inout, I.io_price, I.io_quan, (I.io_price * I.io_quan) As 합계 
FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

DESC tbl_dept;

--3. 매입매출명세를 보면서 상품정보, 거래처정보를 같이 보기
SELECT I.io_date, I.io_pcode, P.p_name, I.io_inout, I.io_dcode, D.d_name, D.d_ceo, I.io_price, P.p_iprice, P.p_oprice, 
I.io_quan, (I.io_price * I.io_quan) As 합계 FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code 
LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

--자주 사용할 것 같은데 쿼리가 너무 복잡할 때 SQL을 view로 생성
CREATE VIEW io_dept_product_view AS
SELECT I.io_date, I.io_pcode, P.p_name, I.io_inout, I.io_dcode, D.d_name, D.d_ceo, I.io_price, P.p_iprice, P.p_oprice, 
I.io_quan, (I.io_price * I.io_quan) As 합계 FROM tbl_iolist I LEFT JOIN tbl_product P ON I.io_pcode = P.p_code 
LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code;

SELECT * FROM io_dept_product_view;

SELECT io_inout, COUNT(*), SUM(io_total) FROM tbl_iolist WHERE io_date BETWEEN '2018-03-01' AND '2018-03-31' AND io_inout = '매입' GROUP BY io_inout;
--데이터가 방대해 질수록 날짜를 제한하고 그안에서 검색하는게 빠름 ( 범위 제한해놓고 조건을 달아서 찾는게 효율적!!)