--mybts ȭ��

--Dynamic menu �ý����� �ۼ��ϱ�����
--menu table�� ����

CREATE TABLE tbl_menu (
    MENU_ID      CHAR(10)           PRIMARY KEY,
    MENU_P_ID    CHAR(10)           DEFAULT NULL, --���� �߰����� ������ ������ NULL����
    MENU_TITLE   nVARCHAR2(255),
    MENU_HREF    nVARCHAR2(255)
);

DROP TABLE tbl_menu;

DELETE fROM tbl_menu;

commit;

SELECT * fROM tbl_menu where menu_p_id is null;

SELECT * fROM tbl_menu where menu_p_id is not null;

SELECT S.menu_id, S.menu_p_id, M.menu_id, M.menu_title from tbl_menu S 
LEFT JOIN tbl_menu M ON S.menu_p_id = M.menu_id where S.menu_p_id is not null ;