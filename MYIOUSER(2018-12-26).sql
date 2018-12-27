--여기는 myIOUser 화면입니다.

CREATE TABLE tbl_iolist(
    io_ID	    NUMBER		    PRIMARY KEY,
    io_date	    CHAR(10)	    NOT NULL,	
    io_pname	nVARCHAR2(80)	NOT NULL,	
    io_dname	nVARCHAR2(80)	NOT NULL,	
    io_ceo	    nVARCHAR2(20)	NOT NULL,	
    io_inout	CHAR(5),		
    io_quan	    NUMBER,		
    io_price	NUMBER,		
    io_total	NUMBER		
);

SELECT COUNT(*) FROM tbl_iolist;

ALTER TABLE tbl_iolist MODIFY io_ceo nVARCHAR2(20) NULL;

ALTER TABLE tbl_iolist MODIFY io_inout CHAR(6) NOT NULL;

DESC tbl_iolist;

SELECT io_dname, io_ceo FROM tbl_iolist GROUP BY io_dname, io_ceo; 


CREATE TABLE tbl_dept(
    d_ID	    NUMBER		    PRIMARY KEY,
    d_dname	    nVARCHAR2(50)	NOT NULL,	
    d_ceo	    nVARCHAR2(50)	NOT NULL	
);

ALTER TABLE tbl_dept MODIFY d_ID CHAR(6);

DESC tbl_dept;

SELECT COUNT(*) FROM tbl_dept;

SELECT I.io_pname, I.io_dname, I.io_ceo, D.d_id, D.d_dname, D.d_ceo FROM tbl_iolist I, tbl_dept D WHERE I.io_dname = D.d_dname AND I.io_ceo = D.d_ceo; 

SELECT I.io_pname, I.io_dname, I.io_ceo, D.d_id, D.d_dname, D.d_ceo FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dname = D.d_dname AND I.io_ceo = D.d_ceo; 

--dept에는 데이터가 없을 경우에 dname, ceo에 NULL 값이 있을 수 있는데 이를 확인하는 명령문
SELECT I.io_pname, I.io_dname, I.io_ceo, D.d_id, D.d_dname, D.d_ceo FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dname = D.d_dname AND I.io_ceo = D.d_ceo
WHERE D.d_name IS NULL OR D.d_ceo IS NULL; 

--NOT NULL인 값들을 거래처코드로 정렬해서 중복코드없이 조회
SELECT I.io_dcode, D.d_dname, D.d_ceo FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_id WHERE io_dcode IS NOT NULL GROUP BY I.io_dcode, D.d_dname, D.d_ceo ORDER BY I.io_dcode;

ALTER TABLE tbl_iolist ADD io_dcode CHAR(6);

DESC tbl_iolist;

UPDATE tbl_iolist I SET I.io_dcode = (SELECT D.d_ID FROM tbl_dept D WHERE I.io_dname = D.d_dname AND I.io_ceo = D.d_ceo); 

SELECT * FROM tbl_iolist ORDER BY io_dcode;

ALTER TABLE tbl_iolist DROP COLUMN io_dname;

ALTER TABLE tbl_iolist DROP COLUMN io_ceo;

ALTER TABLE tbl_dept RENAME COLUMN d_id To d_code;

SELECT I.io_id, I.io_date, I.io_pname, I.io_inout, D.d_code, D.d_dname, D.d_ceo, I.io_price, I.io_total FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code ORDER BY I.io_dcode;

SELECT I.io_id, I.io_date, I.io_pname, I.io_inout, D.d_code, D.d_dname, D.d_ceo, I.io_price, I.io_total FROM tbl_iolist I LEFT JOIN tbl_dept D ON I.io_dcode = D.d_code 
WHERE I.io_date BETWEEN '2018-03-01' AND '2018-03-31' ORDER BY I.io_date;


