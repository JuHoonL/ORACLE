--����� bbsUser ȭ���Դϴ�.

SELECT * fROm tbl_bbs_main;

DESC tbl_bbs_main;

INSERT INTO tbl_bbs_main VALUES(SEQ_BBS_MAIN.nextVAL, '2019-01-02', 'ȫ�浿', '���س� ����', '���� �� ���� ��������');

INSERT INTO tbl_bbs_main VALUES(SEQ_BBS_MAIN.NEXTVAL, '2019-01-02', '�庸��', '���س� ����', '���� �� ���� ��������');

COMMIT;

ROLLBACK;



