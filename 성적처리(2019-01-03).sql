--여기는 gradeUSER 화면입니다.

--학생리스트
--00001:에이미:010-8694-3742:대구 서구 이현동

CREATE TABLE tbl_student (
    st_num      CHAR(5)         PRIMARY KEY,
    st_name     nVARCHAR2(30)   NOT NULL,
    st_tel      nVARCHAR2(20),
    st_addr     nVARCHAR2(50)
);

Select COUNT(*) from tbl_student;

Delete FRom tbl_student;

commit;



