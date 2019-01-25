--여기는 myBTS 화면입니다.

DROp TABLE tbl_score;

--FOREIGN KEY  설정
--만약 tbl_score 테이블에 데이터를 입력하는데 tbl_student테이블에 st_num와 일치하지 않는 값을 입력하면
--오류가 발생해서 잘못 입력되는 데이터가 없도록 설정 하는 것

--참조 무결성보장
CREATE TABLE tbl_score (
    id          NUMBER      PRIMARY KEY,
    st_num      VARCHAR2(5)     NOT NULL,
    sc_sb_code  VARCHAR2(3)     NOT NULL,
    sc_score    NUMBER,
    CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num)
);

--초기에 대량의 데이터를 입력하려고 하는데 FK가 설정되어 있으면 tbl_student 데이터가 모두 완성되기 전까지
--tbl_score 데이터를 추가 할 수 없게 된다. 따라서 초기에는 일단 FK를 제거 또는 만들지 않고
--데이터를 입력 하고 데이터가 거의 완성되면 FK를 설정하는 것이 좋다.

ALTER TABLE tbl_score DROP CONSTRAINT FK_st_num ;

ALTER TABLE tbl_score ADD CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num);

--만약 데이터를 모두 입력한 후 FK를 선언(추가)하는데 오류가 발생하면 tbl_score에 잘못된 st_num가 존재한다는 것이다.
--이럴 때는 JOIN을 통해서 데이터를 확인 해야 한다.
SELECT SC.st_num, ST.st_num, ST.st_name 
FROM tbl_score SC LEFT JOIN tbl_student ST ON SC.st_num = ST.st_num WHERE ST.st_num='';

SELECT * FROM tbl_student;

ALTER SEQUENCE SEQ_SCORE INCREMENT BY 1;

delete FROM tbl_score ;

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'00001','001',100);

--점수 데이터를 추가하려고 하는데 tbl_student에는 없는 001 학번을 추가하려고 하니 오류가 발생한다.
INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'0001','001',100);

INSERT INTO tbl_score VALUES(SEQ_SCORE.NEXTVAL,'00002','001',90);

SELECT * fROM tbl_score;

SELECT SC.st_num, ST.st_name, SC.sc_sb_code, SC.sc_score 
FROM tbl_score SC LEFT JOIN tbl_student ST ON SC.st_num = ST.st_num ;

--학번 00003은 아직 tbl_score에 입력된 데이터가 없어서 tbl_student에서 삭제가 가능하지만
--학번 00002는 이미 tbl_score에 입력된 데이터가 있기 때문에 tbl_student에서 삭제가 불가능하다.
--결국 이 두 테이블은 st_num를 기준으로 JOIN등을 실행했을 때 참조 관계가 명확해져서 완전 JOIN을 실행해도 
--문제가 없게 된다.
dELETE FROM tbl_student WHERE st_num = '00003';
dELETE FROM tbl_student WHERE st_num = '00002';

ALTER TABLE tbl_score DROP CONSTRAINT FK_st_num;

--ON DELETE CASCADE는 tbl_student에서 해당 데이터를 삭제하면 tbl_score의 해당 데이터도 같이 삭제가 되어지게 한다.
ALTER TABLE tbl_score ADD CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num) ON DELETE CASCADE;

SELECT * FROM tbl_score;

dELETE FROM tbl_student WHERE st_num = '00002';

--tbl_student의 데이터를 삭제하는데 tbl_score에 st_num가 일치하는 데이터가 있으면 st_num를 NULL로 바꾸어라
--tbl_score의 st_num가 not null로 기본 설정되어있으므로 해당 내용 코드는 반영이 안됨
ALTER TABLE tbl_score ADD CONSTRAINT FK_st_num FOREIGN KEY(st_num) REFERENCES tbl_student(st_num) ON DELETE SET NULL;
