--여기는 mybts 화면입니다.
--메모장 작성을 위한 테이블을 생성

CREATE TABLE tbl_memo (
    id          NUMBER          PRIMARY KEY,
    m_auth      nVARCHAR2(30)   NOT NULL,
    m_date      CHAR(10),
    m_subject   nVARCHAR2(50),
    m_text      nVARCHAR2(255)
);

DROP TABLE tbl_memo;

CREATE SEQUENCE SEQ_MEMO START WITH 1 INCREMENT BY 1;

ALTER SEQUENCE SEQ_MEMO INCREMENT BY 1;

SELECT * FROM tbl_memo ORDER BY id;



UPDATE tbl_memo SET id=6 where id=21; 

delete From tbl_memo where id = 12;

SELECT SEQ_MEMO.nextval FROM dual;
commit;




