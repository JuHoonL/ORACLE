--여기는 user1으로 접속한 화면입니다.
--이름(o_name), 전화번호(o_tel), 주소(o_addr), 회사(o_comp), 부서(o_dept), 칼럼을 갖는 tbl_office TABLE을 생성하시오
--단, id는 PK로 선언하고 이름은 NOT NULL로 선언하시오

CREATE TABLE tbl_office (
    id CHAR(4) PRIMARY KEY,
    o_name CHAR(10) NOT NULL,
    o_tel CHAR(13),
    o_addr nVARCHAR2(255),
    o_comp nVARCHAR2(20),
    o_dept nVARCHAR2(20)
    );
    
SELECT * FROM tbl_office;

DROP TABLE tbl_office;