--여기는 bbsUSER 화면입니다.

--게시판 프로젝트1에서 사용할 메인 테이블을 생성
CREATE TABLE tbl_bbs_main(
    b_id        NUMBER          PRIMARY KEY,
    b_date      CHAR(10)        NOT NULL,
    b_auth      nVARCHAR2(20)   NOT NULL,
    b_subject   nVARCHAR2(50)   NOT NULL,
    b_text      nVARCHAR2(255)  NOT NULL
);

--tbl_bbs_main에서 사용할 시퀀스 생성
CREATE SEQUENCE SEQ_BBS_MAIN START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','홍길동','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','이몽룡','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','성춘향','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','장보고','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','이순신','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');

SELECT * FROM tbl_bbs_main;