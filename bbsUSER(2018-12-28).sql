--����� bbsUSER ȭ���Դϴ�.

--�Խ��� ������Ʈ1���� ����� ���� ���̺��� ����
CREATE TABLE tbl_bbs_main(
    b_id        NUMBER          PRIMARY KEY,
    b_date      CHAR(10)        NOT NULL,
    b_auth      nVARCHAR2(20)   NOT NULL,
    b_subject   nVARCHAR2(50)   NOT NULL,
    b_text      nVARCHAR2(255)  NOT NULL
);

--tbl_bbs_main���� ����� ������ ����
CREATE SEQUENCE SEQ_BBS_MAIN START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','ȫ�浿','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','�̸���','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','������','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','�庸��','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');

INSERT INTO tbl_bbs_main 
VALUES(SEQ_BBS_MAIN.nextVAL,'2018-12-28','�̼���','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');

SELECT * FROM tbl_bbs_main;