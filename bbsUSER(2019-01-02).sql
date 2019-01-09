--여기는 bbsUser 화면입니다.

SELECT * fROm tbl_bbs_main;

DESC tbl_bbs_main;

INSERT INTO tbl_bbs_main VALUES(SEQ_BBS_MAIN.nextVAL, '2019-01-02', '홍길동', '기해년 새해', '새해 복 많이 받으세요');

INSERT INTO tbl_bbs_main VALUES(SEQ_BBS_MAIN.NEXTVAL, '2019-01-02', '장보고', '기해년 새해', '새해 복 많이 받으세요');

COMMIT;

ROLLBACK;



