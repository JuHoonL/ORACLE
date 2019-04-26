--mybts 화면

CREATE TABLE tbl_book(
    b_id                  NUMBER                  PRIMARY KEY,
    b_userid              VARCHAR2(20)            NOT NULL,
    b_isbn                VARCHAR2(20)            NOT NULL,
    b_title               nVARCHAR2(30)            NOT NULL,
    b_date                VARCHAR2(10)            NOT NULL,
    b_star                NUMBER(2,1),
    b_text                nVARCHAR2(100)
);

CREATE SEQUENCE SEQ_BOOK START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_book VALUES(SEQ_BOOK.NEXTVAL,'gildong','9788975607547','생각중독3','2019-03-14',4.5,'중독중독');

INSERT INTO tbl_book VALUES(SEQ_BOOK.NEXTVAL,'bogo','9788975607547','생각중독3','2019-03-14',4.5,'중독중독');

SELECT * FROM tbl_book;

commit;

CREATE TABLE tbl_b_user(
    m_id          NUMBER              PRIMARY KEY,
    m_userid      VARCHAR2(20)        NOT NULL,
    m_password    nVARCHAR2(125)       NOT NULL,
    m_username    nVARCHAR2(20),
    m_tel         nVARCHAR2(20),
    m_addr        nVARCHAR2(125)
);

DROP TABLE tbl_b_user;

SELEcT * fROM tbl_b_user;

UPDATE tbl_b_user SET m_username = '마스터' WHERE m_id = 22;

CREATE SEQUENCE SEQ_B_USER START WITH 1 INCREMENT BY 1;

DELETE FROM tbl_b_user WHERE m_userid = 'bogo';