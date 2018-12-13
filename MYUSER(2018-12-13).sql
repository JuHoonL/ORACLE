--여기는 myuser의 화면입니다.

CREATE TABLE tbl_employee(
    strEmpno CHAR(3) PRIMARY KEY,
    strName nVARCHAR2(20) NOT NULL,
    strJob nVARCHAR2(20),
    intSal NUMBER(10),
    strDeptNo nVARCHAR2(20)
);

INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('001','홍길동','인사업무',2500000,'총무부');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('002','이몽룡','기술영업',2500000,'영업부');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('003','성춘향','급여관리',2500000,'총무부');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('004','장길산','생산관리',2500000,'생산부');
INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('005','임꺽정','품질관리',2500000,'생산부');

SELECT strEmpno,strName,strJob,intSal,strDeptNo FROM tbl_employee WHERE strdeptno = '총무부';

UPDATE tbl_employee SET strdeptno = '인사관리부' WHERE strdeptno = '총무부';

SELECT * FROM tbl_employee;

INSERT INTO tbl_employee(strEmpno,strName,strJob,intSal,strDeptNo) VALUES ('006','장록수','인사보조',2500000,'인사관리부');

UPDATE tbl_employee SEt intSal = '1500000' WHERE strName = '장록수';

UPDATE tbl_employee SEt strdeptno = '인사 관리부' WHERE strName = '장록수';

UPDATE tbl_employee SET strdeptno = '인사부' WHERE strdeptno = '인사관리부' OR strdeptno = '인사 관리부';

UPDATE tbl_employee SET strdeptno = '자재부' WHERE strName = '임꺽정';

CREATE TABLE tbl_dept(
    strDeptNo CHAR(3) PRIMARY KEY,
    strDeptName nVARCHAR2(20) NOT NULL,
    strDeptChief nVARCHAR2(20)
);

INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('01','총무부','홍길동');
INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('02','영업부','이몽룡');
INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('03','생산부','장길산');
INSERT INTO tbl_dept(strdeptno,strdeptname,strdeptchief) VALUES ('04','자재부','임꺽정');

--strDeptno를 strDeptName으로 변경
ALTER TABLE tbl_employee ReNAME COLUMN strDeptNo TO strDeptName;

--strDeptNo 칼럼을 추가
ALTER TABLE tbl_employee ADD strDeptNO CHAR(3);

--TABLE COLUMN의 변경정보 보는법
DESCRIBE tbl_employee;
DESC tbl_employee;
DESC tbl_dept;

--strDeptNO 업데이트 (tb_dept를 참조)
UPDATE tbl_employee SET strDeptNo = '01' WHERE strdeptname = '인사부' OR strdeptname = '인사 관리부';
UPDATE tbl_employee SET strDeptNo = '02' WHERE strdeptname = '영업부';
UPDATE tbl_employee SET strDeptNo = '03' WHERE strdeptname = '생산부';
UPDATE tbl_employee SET strDeptNo = '04' WHERE strdeptname = '자재부';

--steDeptName COLUMN을 삭제
ALTER TABLE tbl_employee DROP COLUMN strDeptName;

SELECT E.strEmpno AS 순번, E.strName AS 이름, E.strJob AS 업무담당, E.intSal AS 월급여, E.strDeptNo AS 부서코드, D.strdeptname AS 부서명
FROM tbl_employee E, tbl_dept D 
WHERE E.strDeptNo = D.strdeptno;

UPDATE tbl_dept SET strDeptName = '인사관리부' WHERE strdeptno = '01';

SELECT E.strEmpno AS 순번, E.strName AS 이름, E.strJob AS 업무담당, E.intSal AS 월급여, E.strDeptNo AS 부서코드, D.strdeptname AS 부서명
FROM tbl_employee E, tbl_dept D 
WHERE E.strDeptNo = D.strdeptno ORDER bY D.strdeptno;



