--여기는 myMem 화면입니다.

CREATE TABLE tbl_iolist(
    io_id	    NUMBER		    PRIMARY KEY,
    io_date	    CHAR(10)	    NOT NULL,
    io_cname	nVARCHAR2(50)	NOT NULL,	
    io_dname	nVARCHAR2(30)	NOT NULL,	
    io_ceo	    nVARCHAR2(10),		
    io_inout	nVARCHAR2(6),		
    io_quan	    NUMBER,		
    io_price	NUMBER,		
    io_total	NUMBER		
);


ALTER TABLE tbl_iolist MODIFY io_inout nVARCHAR2(5);
SELECT * FROM tbl_iolist;

SELECT COUNT(*) FROM tbl_iolist WHERE io_inout = '매출';

SELECT io_inout AS 구분, COUNT(*) AS 개수, SUM(io_total) AS 합계 FROM tbl_iolist GROUP BY io_inout ORDER BY io_inout;

SELECT io_date AS 날짜, io_inout AS 구분, COUNT(*) AS 개수, SUM(io_total) AS 합계 FROM tbl_iolist GROUP BY io_inout, io_date ORDER BY io_date;

--문자열 함수 몇가지
SELECT 'KOREA' FROM DUAL;       --DUAL 이라는 테이블이 기본 테이블로 만들어져있음


SELECT UPPER('korea') FROM DUAL;        --UPPER 문자열을 대문자로 변환
SELECT LOWER('KOREA') FROM DUAL;        --LOWER 문자열을 소문자로 변환

SELECT INITCAP('republic of korea') FROM DUAL;      --INITCAP 공백을 기준으로 맨 앞자를 대문자로 변환(오라클에서만 가능)

SELECT LENGTH('republic of korea') FROM DUAL;       --LENGTH 단어의 개수를 알려줌
SELECT LENGTH(n'대한민국') FROM DUAL;    --한글의 경우 유니코드형으로 변경하기위해 n 사용(간혹 한글개수를 2개로 쪼개표시하기 때문)

SELECT LENGTHB('대한민국') FROM DUAL;    --데이터의 저장용량(byte)을 알려줌

SELECT INSTR('Republic of Korea', 'of') FROM DUAL;      --INSTR of가 앞으로 문자열중에 몇번에 위치에 있는지 알려줌

SELECT SUBSTR('Republic of Korea',4,3) FROM DUAL;       --SUBSTR은 4번째 글자부터 3글자를 표시(오라클은 첫글자가 1번째로 시작)

SELECT LEFT('Republic',3) FROM DUAL;            --LEFT 는 왼쪽부터 3번째 위치의 글자를 알려줌(오라클X, 표준SQL에서 됌)

SELECT MID('Republic',3,2) FROM DUAL;           --MID는 3번째 부터 2글자 표시(오라클은 첫글자가 1번째로 시작)

SELECT LPAD('KOREA',20,'*') FROM DUAL;          --LPAD KOREA의 글자수를 20개로 만들고 나머지를 *으로 채워라('**********KOREA')
SELECT LPAD(1,5,'0') FROM DUAL;         --숫자1을 문자열로 바꾸고 5개의 문자열로 만들고 남은 공간을 0으로 채워라('00001')

SELECT RPAD(1,5,'0') FROM DUAL;         --LPAD와 반대로 맨앞에 1을 써주고 나머지 0으로 채워라('10000')
SELECT LPAD(1,5,'0'), RPAD(1,5,'0') FROM DUAL;  --LPAD와 RPAD ('00001' / '10000')

INSERT INTO test(t_num) VALUES(LPAD(1,3,'0'));    -- t_num에 001을 넣어라

--공백제거 TRIM L 왼쪽 R 오른쪽
SELECT LTRIM(' KOREA 대한민국 ') FROM DUAL;
SELECT RTRIM(' KOREA 대한민국 ') FROM DUAL;

SELECT TRIM( 'a' FROM 'aaabbbkorennnaaa') FROM DUAL;    -- FROM 뒤의 문자열에서 앞을 'a'문자열을 모두 삭제하라

--일자별로 거래구분에 따른 개수와 합계를 확인하고자 할때
SELECT io_date, io_inout, COUNT(io_total), SUm(io_total) FROM tbl_iolist GROUP BY io_date, io_inout ORDER BY io_date;

--일자별로 거래구분에 따른 개수와 합계를 확인하되, 2018-03-01~31까지만
SELECT io_date, io_inout, COUNT(io_total), SUm(io_total) FROM tbl_iolist WHERE io_date BETWEEN '2018-03-01' AND '2018-03-31' 
GROUP BY io_date, io_inout ORDER BY io_date; 

--월별로 또는 년도별로 합계를 계산해서 보고 싶을 때가 있다.
CREATE VIEW 월별통계
AS
SELECT SUBSTR(io_date,1,7) AS 월별, io_inout AS 구분, COUNT(io_total) AS 개수, SUm(io_total) AS 통계 FROM tbl_iolist 
GROUP BY SUBSTR(io_date,1,7), io_inout ORDER BY SUBSTR(io_date,1,7);

DROP VIEW 월별통계;

SELECT * FROM 월별통계 WHERE 월별 BETWEEN '2018-03' AND '2018-06';

SELECT io_inout, COUNT(io_total), SUM(io_total), io_dname FROM tbl_iolist GROUP BY io_dname, io_inout ORDER BY io_dname;

SELECT io_cname, SUBSTR(io_date,1,7), io_inout, COUNT(io_total), SUM(io_total) FROM tbl_iolist GROUP BY SUBSTR(io_date,1,7), io_cname, io_inout ORDER BY io_cname;

SELECT * FROM tbl_iolist WHERE io_cname = ' 링 키 바';

SELECT io_cname, SUBSTR(io_date,1,7), io_inout, COUNT(io_total), SUM(io_total) FROM tbl_iolist WHERE io_cname = ' 링 키 바' GROUP BY SUBSTR(io_date,1,7), io_cname, io_inout;