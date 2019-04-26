--mybts screen
DESC tbl_memo;

DELETE FROM tbl_memo;

DROP SEQUENCE SEQ_MEMO;

CREATE SEQUENCE SEQ_MEMO START WITH 1 INCREMENT BY 1;

DESC tbl_member;

Select * FROM tbl_member;

DELETE FROM tbl_member;

commit;