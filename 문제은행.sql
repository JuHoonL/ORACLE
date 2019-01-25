--여기는 userCBT 화면

CREATE TABLE tbl_cbt(
    cb_num      CHAR(5)         PRIMARY KEY,
    cb_que      nVARCHAR2(125)  NOT NULL,
    cb_ex1      nVARCHAR2(125)  NOT NULL,
    cb_ex2      nVARCHAR2(125)  NOT NULL,
    cb_ex3      nVARCHAR2(125)  NOT NULL,
    cb_ex4      nVARCHAR2(125)  NOT NULL,
    cb_asw      nVARCHAR2(125)
);

ALTER TABLE tbl_cbt DROP COLUMN cb_asw ;

ALTER TABLE tbl_cbt ADD cb_ans nVARCHAR2(125);

DESC tbl_cbt;

SELECT * FROM tbl_cbt;

Delete FROm tbl_cbt;

commit;