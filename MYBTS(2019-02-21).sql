--여기는 mybts 화면입니다.

CREATE TABLE tbl_dept(
    d_code	VARCHAR2(5)     PRIMARY KEY,
    d_name	nVARCHAR2(50)	NOT NULL,	
    d_ceo	nVARCHAR2(50)		
);

select * from tbl_dept;

select count(*) from tbl_dept;