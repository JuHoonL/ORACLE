--여기는 mybts 화면입니다

--  private long id;
--	private String m_userid;
--	private String m_password;
--	private String m_re_password;
--	private String m_name;
--	private String m_tel;
--	private String m_city;
--	private String m_addr;
--	
--	private String[] m_hobby;

CREATE TABLE tbl_member (
    id              NUMBER          PRIMARY KEY,
    m_userid        nVARCHAR2(30)   NOT NULL,
    m_password      nVARCHAR2(125)  NOT NULL,
    m_name          nVARCHAR2(125)  NOT NULL,
    m_tel           nVARCHAR2(20),
    m_city          nVARCHAR2(20),
    m_addr          nVARCHAR2(125),
    CONSTRAINT U_userid UNIQUE(m_userid)
);
--회원정보에서 id 칼럼은 TABLE 무결성을 보장하기 위한 값이고, 실제로 회원정보를 활용하기 위해서는
--주로 사용하는 칼럼은 m_userid칼럼이다
--회원정보 TABLE에서는 m_userid칼럼은 중복이 되어서는 안된다.
--따라서 회원정보 TABLE의 m_userid칼럼을 UNIQUE로 설정을 해준다.

ALTER TABLE tbl_member ADD UNIQUE(m_userid);            -- UNIQUE의 이름없이 만드는 것
ALTER TABLE tbl_member ADD CONSTRAINT U_userid UNIQUE(m_userid);    --UNIQUE의 이름을 지정해서 만드는 것

CREATE TABLE tbl_hobby (
    id              NUMBER          PRIMARY KEY,
    m_userid        nVARCHAR2(30)   NOT NULL,
    m_hobby         nVARCHAR2(20),
    CONSTRAINT F_userid FOREIGN KEY(m_userid) REFERENCES tbl_member(m_userid)
);

--FK는 main talbe(tbl_member)의 어떤 칼럼과 연동을 시켜서 만약 main table의 데이터를 삭제하면 sub table(tbl_hobby)의
--데이터가 의미없이 남아 있는 것을 방지 하기 위한 설정이다.
ALTER TABLE tbl_hobby ADD CONSTRAINT F_userid FOREIGN KEY(m_userid) REFERENCES tbl_member(m_userid) ON DELETE CASCADE;

INSERT INTO tbl_member(id, m_userid, m_password, m_name) VALUES(0,'aaa','1234','홍길동');

INSERT INTO tbl_hobby(id, m_userid, m_hobby) VALUES(0,'aaa','BOOK');
INSERT INTO tbl_hobby(id, m_userid, m_hobby) VALUES(1,'aaa','MUSIC');
INSERT INTO tbl_hobby(id, m_userid, m_hobby) VALUES(2,'aaa','MOVIE');

select * from tbl_member;
select * from tbl_hobby;

DELETE FROM tbl_member WHERE m_userid='aaa';
--tbl_member에서 aaa사용자를 삭제하면 tbl_hobby의 m_userid값이 aaa인 값들도 같이 삭제됌
--tbl_member table에 aaa라는 사용자가 없으면 tbl_hobby에 aaa사용자의 취미를 추가 할 수 없다.

CREATE SEQUENCE MEMBER_SEQUENCE START WITH 1 INCREMENT BY 1;
