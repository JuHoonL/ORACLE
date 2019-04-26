--mybts È­¸é

CREATE TABLE tbl_email (
    id                        NUMBER                          PRIMARY KEY,
    from_email                nVARCHAR2(30)                   NOT NULL,
    to_email                  nVARCHAR2(30)                   NOT NULL,
    s_date                    nVARCHAR2(10), 
    s_time                    nVARCHAR2(10),
    s_subject                 nVARCHAR2(125),
    s_content                 nVARCHAR2(2000),
    s_file1                   nVARCHAR2(125),
    s_file2                   nVARCHAR2(125) 
);

DROP TABLE tbl_email;

DESC tbl_email;

CREATE SEQUENCE SEQ_EMAIL START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_email_member (
    m_id                      NUMBER                      PRIMARY KEY,
    m_userid                VARCHAR2(10)                NOT NULL,
    m_password              nVARCHAR2(125)              NOT NULL,
    m_mailaddress           nVARCHAR2(30)               NOT NULL,
    m_username              nVARCHAR2(30),
    m_addr                  nVARCHAR2(125),
    m_tel                   nVARCHAR2(30)
);

DROP TABLE tbl_email_member;

CREATE SEQUENCE SEQ_E_MEMBER START WITH 2 INCREMENT BY 1;

DROP SEQUENCE SEQ_E_MEMBER;

SELECT * fROM tbl_email;

SELECT * fROM tbl_email_member;

commit;