--여기는 user2의 화면 입니다.
CREATE TABLE tbl_employee(
    strEmpno CHAR(3) PRIMARY KEY,
    strName nVARCHAR2(20) NOT NULL,
    strjob nVARCHAR2(20),
    intSal NUMBER(3),
    strEdptNO nVARCHAR2(20)
);

ALTER TABLE tbl_employee MODIFY intSal NUMBER(10) ;

SELECT * FROM tbl_employee;

INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('001','홍길동','인사업무',2500000,'총무부');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('002','이몽룡','기술영업',2500000,'영업부');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('003','성춘향','급여관리',2500000,'총무부');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('004','장길산','생산관리',2500000,'생산부');
INSERT INTO tbl_employee(strEmpno,strName,strjob,intSal,strEdptNO) VALUES ('005','임꺽정','품질관리',2500000,'생산부');

