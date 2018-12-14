--여기는 myuser 화면입니다.
--매입매출샘플(엑셀)파일에서 DataBase로 데이터를 옮기고 DB규칙에 맞도록 적용하는 연습을 실행


--왼쪽 myuser에서 TABLE폴더를 확장해서 tbl_iolist에 오른쪽 마우스 버튼을 눌러서 데이터 임포트 선택
--=> 넣어줄 파일을 불러오기 해준 후 구분에 원하는 파일시트 선택 => 다음 다음 다음 => 구분 선택 => 완료

CREATE TABLE tbl_iolist(
    id	        NUMBER          PRIMARY KEY,
    io_date	    CHAR(10)	    NOT NULL,	
    io_cname	nVARCHAR2(50)	NOT NULL,	
    io_dname	nVARCHAR2(30)	NOT NULL,	
    io_dceo 	nVARCHAR2(10),		
    io_inout	nVARCHAR2(5),		
    io_quan	    NUMBER,		
    io_price	NUMBER,		
    io_total	NUMBER		
);

DROP TABLE tbl_iolist;

SELECT * FROM tbl_iolist;
SELECT COUNT(*) FROM tbl_iolist;

--18-02-01 ~ 18-02-28 매출리스트
SELECT * FROM tbl_iolist WHERE io_inout = '매출' AND io_date >= '2018-02-01' AND io_date <= '2018-02-28';
--18-02-01 ~ 18-02-28 매입리스트
SELECT * FROM tbl_iolist WHERE io_inout = '매입' AND io_date >= '2018-02-01' AND io_date <= '2018-02-28';

SELECT COUNT(*) AS 리스트갯수, SUM(io_TOTAL) AS 총합계 FROM tbl_iolist;

--통계함수를 이용해서 개수와 합계를 구하는데 매입합계, 매출합계를 따로 계산하고 싶다.
--1. 매입과 매출을 구부하는 칼럼 : io_inout
SELECT io_inout,COUNT(io_total),SUM(io_total) FROM tbl_iolist GROUP BY io_inout;

--통계함수를 이용해서 개수와 합계를 계산
--조건 : 날짜별로 조건을 부여해서 개수와 합계 계산
--1. 날짜를 구분하는 칼럼 : io_date
SELECT io_date, COUNT(io_total),SUM(io_total) FROM tbl_iolist GROUP BY io_date ORDER BY io_date;

--조건 : 날짜별로 묶고 다시 매입 매출로 구분하여 개수와 합계를 계산하라
--1. 날짜를 구분하는 칼럼 : io_date
--2. 매입과 매출을 구분하는 칼럼 : io_inout
SELECT io_date,io_inout,COUNT(*),SUM(io_total) FROM tbl_iolist GROUP BY io_date, io_inout ORDER BY io_date;

SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist GROUP BY io_inout, io_date ORDER BY io_inout;

SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist WHERE io_date >= '2018-03-01' AND io_date <= '2018-03-31' 
GROUP BY io_inout, io_date ORDER BY io_date;

SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist WHERE io_date  BETWEEN '2018-03-01' AND '2018-03-31' 
GROUP BY io_inout, io_date ORDER BY io_date;

--합계금액이 100만원 이상인 항목만 보여라
SELECT * FROM tbl_iolist WHERE io_TOTAL >= 1000000;

--매입 매출 날짜별로 구분하여 개수와 합계를 조회하는 중 100만원 이상인 항목만 보이고 싶을떄
SELECT io_inout,io_date,COUNT(*) FROM tbl_iolist GROUP BY io_inout, io_date HAVING SUM(io_total) >= 100000 ORDER BY io_inout;

--2018-03-01~31일까지 중에서 조회(HAVING절은 모든 통계를 계산 한 후에 조건을 제한하기 때문에 맨 뒤에 써줄수록 좋다.)
SELECT io_inout,io_date,COUNT(*),SUM(io_total) FROM tbl_iolist WHERE io_date  BETWEEN '2018-03-01' AND '2018-03-31' 
GROUP BY io_inout, io_date HAVING SUM(io_total) >= 100000 ORDER BY io_date;
