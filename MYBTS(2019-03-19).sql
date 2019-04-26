--mybts 화면
DESC tbl_member;

ALTER TABLE tbl_member MODIFY M_ADDR nVARCHAR2(125) NULL;

SELECT * FROM tbl_member;

CREATE TABLE tbl_board (
    id                     NUMBER                  PRIMARY KEY,
    b_userid                 nVARCHAR2(50),
    b_date                 VARCHAR2(10),
    b_time                 VARCHAR2(10),
    b_subject              nVARCHAR2(50),
    b_content              nVARCHAR2(1000),
    b_hit                  NUMBER       --조회수
);

ALTER TABLE tbl_board RENAME COLUMN b_auth TO b_userid;

ALTER TABLE tbl_board ADD b_image nVARCHAR2(125);

Drop TABLE tbl_board;

DESC tbl_board;

SELECT ROUND(DBMS_RANDOM.VALUE(0,9999999999),0) FROM DUAL;

Delete FROM tbl_member WHERE m_password = '1234';

Delete FROM tbl_board WHERE b_userid IS NULL;

commit;

SELECT * FROM tbl_board;

SELECT ROWNUM R, B.* FROM tbl_board B WHERE id >=681;

SELECT * FROM (SELECT ROWNUM R, B.*  FROM tbl_board B WHERE B.b_date > '0000-00-00' ORDER BY B.b_date DESC, B.b_time DESC) M WHERE R BETWEEN 11 AND 20;

SELECT COUNT(*) FROM tbl_board;

UPDATE tbl_board SET b_userid = 'chunhyang@naver.com' WHERE id >=681 and id<=685;

UPDATE tbl_bbs SET b_hit = 0+1 WHERE id = 197631962;

--b_date, b_time에 index를 설정한 상테에서 사용하는 SQL
SELECT * FROM (SELECT ROWNUM R, B.*  FROM tbl_board B WHERE B.b_date > '0000-00-00'
ORDER BY B.b_date DESC, B.b_time DESC) M WHERE R BETWEEN 1 AND 10;

SELECT M.* FROM
(SELECT ROW_NUMBER() OVER (ORDER BY B_DATE DESC, B_TIME DESC) R, B_DATE, B_TIME, B_SUBJECT, B_CONTENT FROM tbl_board) M
WHERE M.R BETWEEN 11 AND 20;