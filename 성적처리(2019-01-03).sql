--����� gradeUSER ȭ���Դϴ�.

--�л�����Ʈ
--00001:���̹�:010-8694-3742:�뱸 ���� ������

CREATE TABLE tbl_student (
    st_num      CHAR(5)         PRIMARY KEY,
    st_name     nVARCHAR2(30)   NOT NULL,
    st_tel      nVARCHAR2(20),
    st_addr     nVARCHAR2(50)
);

Select COUNT(*) from tbl_student;

Delete FRom tbl_student;

commit;



