--여기는 user1으로 접속한 화면입니다.
--user1은 현재 dba권한을 갖고 있다.
CREATE TABLE tbl_std (
    st_num CHAR(6) PRIMARY KEY,
    st_name CHAR(20) NOT NULL,
    st_tel nVARCHAR2(20),
    st_addr nVARCHAR2(125),
    int_age NUMBER(3),
    int_grade NUMBER(2)
);

DROP TABLE tbl_std;

--홍길동, 이몽룡, 성춘향, 임꺽정, 장길산 이 5명의 이름을 기준으로 나머지 항목을 자유롭게 설정하여 데이터를 추가하시오
INSERT INTO tbl_std VALUES ('0','홍길동','010-5789-4125','광주광역시 서구',26,3);
INSERT INTO tbl_std VALUES ('1','이몽룡','010-2687-9754','광주광역시 남구',22,2);
INSERT INTO tbl_std VALUES ('2','성춘향','010-1547-6325','광주광역시 북구',28,4);
INSERT INTO tbl_std VALUES ('3','임꺽정','010-3569-4259','광주광역시 동구',21,1);
INSERT INTO tbl_std VALUES ('4','장길산','010-6574-9632','광주광역시 서구',19,1);

SELECT * FROM tbl_std;

UPDATE tbl_addr SET st_addr='전라북도 남원시' WHERE st_name='이몽룡';

