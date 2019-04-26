--mybts 화면

--Dynamic menu 시스템을 작성하기위해
--menu table을 생성

CREATE TABLE tbl_menu (
    MENU_ID      CHAR(10)           PRIMARY KEY,
    MENU_P_ID    CHAR(10)           DEFAULT NULL, --값을 추가하지 않으면 강제로 NULL설정
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