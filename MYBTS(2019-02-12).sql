--����� mybts ȭ���Դϴ�

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
--ȸ���������� id Į���� TABLE ���Ἲ�� �����ϱ� ���� ���̰�, ������ ȸ�������� Ȱ���ϱ� ���ؼ���
--�ַ� ����ϴ� Į���� m_useridĮ���̴�
--ȸ������ TABLE������ m_useridĮ���� �ߺ��� �Ǿ�� �ȵȴ�.
--���� ȸ������ TABLE�� m_useridĮ���� UNIQUE�� ������ ���ش�.

ALTER TABLE tbl_member ADD UNIQUE(m_userid);            -- UNIQUE�� �̸����� ����� ��
ALTER TABLE tbl_member ADD CONSTRAINT U_userid UNIQUE(m_userid);    --UNIQUE�� �̸��� �����ؼ� ����� ��

CREATE TABLE tbl_hobby (
    id              NUMBER          PRIMARY KEY,
    m_userid        nVARCHAR2(30)   NOT NULL,
    m_hobby         nVARCHAR2(20),
    CONSTRAINT F_userid FOREIGN KEY(m_userid) REFERENCES tbl_member(m_userid)
);

--FK�� main talbe(tbl_member)�� � Į���� ������ ���Ѽ� ���� main table�� �����͸� �����ϸ� sub table(tbl_hobby)��
--�����Ͱ� �ǹ̾��� ���� �ִ� ���� ���� �ϱ� ���� �����̴�.
ALTER TABLE tbl_hobby ADD CONSTRAINT F_userid FOREIGN KEY(m_userid) REFERENCES tbl_member(m_userid) ON DELETE CASCADE;

INSERT INTO tbl_member(id, m_userid, m_password, m_name) VALUES(0,'aaa','1234','ȫ�浿');

INSERT INTO tbl_hobby(id, m_userid, m_hobby) VALUES(0,'aaa','BOOK');
INSERT INTO tbl_hobby(id, m_userid, m_hobby) VALUES(1,'aaa','MUSIC');
INSERT INTO tbl_hobby(id, m_userid, m_hobby) VALUES(2,'aaa','MOVIE');

select * from tbl_member;
select * from tbl_hobby;

DELETE FROM tbl_member WHERE m_userid='aaa';
--tbl_member���� aaa����ڸ� �����ϸ� tbl_hobby�� m_userid���� aaa�� ���鵵 ���� ������
--tbl_member table�� aaa��� ����ڰ� ������ tbl_hobby�� aaa������� ��̸� �߰� �� �� ����.

CREATE SEQUENCE MEMBER_SEQUENCE START WITH 1 INCREMENT BY 1;
