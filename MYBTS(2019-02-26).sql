--여기는 mybts 화면입니다


desc tbl_member;

DROP TABLE tbl_hobby;
DROP TABLE tbl_member;

CREATE TABLE tbl_member (
    M_USERID   NVARCHAR2(30)    PRIMARY KEY ,
    M_PASSWORD NVARCHAR2(125)   NOT NULL,
    M_NAME     NVARCHAR2(125)   NOT NULL, 
    M_TEL      NVARCHAR2(20)      ,
    M_CITY     NVARCHAR2(20) , 
    M_ADDR     NVARCHAR2(125)   NOT NULL ,
    M_PHOTO    NVARCHAR2(125),
    M_PHOTO_PATH NVARCHAR2(125)
);

select * from tbl_member;

UPDATE tbl_member SET m_addr = '전주' where m_userid = 'lll';

DELETE FROM tbl_member where m_userid = 'gildong@naver.com';

commit;