--mybts 화면
DESC tbl_memo;

CREATE SEQUENCE SEQ_MEMO START WITH 1 INCREMENT BY 1;

SELECT SEQ_MEMO.NEXTVAL FROM DUAL;

SELECT * FROM tbl_memo;

DELETE FROM tbl_memo WHERE id = 4;

INSERT INTO tbl_memo VALUES(1,'gildong','2019-03-11','메모','메모작성');

commit;

DELETE FROM tbl_memo WHERE id = 24;

DROP TABLE tbl_files;

CREATE TABLe tbl_files(
    id                  NUMBER              PRIMARY KEY,
    parent_id           NUMBER              NOT NULL,
    file_name           nVARCHAR2(125),
    save_file_name      nVARCHAR2(125)
);

CREATE SEQUENCE SEQ_FILE START WITH 1 INCREMENT BY 1;

ALTER TABLE tbl_files ADD CONSTRAINT memo_files FOREIGN KEY (parent_id) REFERENCES tbl_memo(id) ON DELETE CASCADE;

SELECT * FROM tbl_files;

UPDATE tbl_files SET file_name = '코알라.jpg' WHERE id='5';

