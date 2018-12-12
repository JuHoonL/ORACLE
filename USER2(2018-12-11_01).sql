--여기는 user2 화면입니다.
CREATE TABLE tbl_grade (
    str_num CHAR(3) PRIMARY KEY NOT NULL,
    intKor NUMBER(3),
    intEng NUMBER(3),
    intMath NUMBER(3)
);

INSERT INTO tbl_grade VALUES ('001',90,85,87);
INSERT INTO tbl_grade VALUES ('002',76,84,96);
INSERT INTO tbl_grade VALUES ('003',92,99,83);
INSERT INTO tbl_grade VALUES ('004',77,64,75);
INSERT INTO tbl_grade VALUES ('005',100,100,100);

SELECT str_num,intKor,intEng,intMath FROM tbl_grade;

--입력된 데이터의 학번순서가 뒤섞여 입력이 되어 있을 경우 이 데이터를 학번순으로 보고싶을 때 : ORDER BY 학번객체
SELECT * FROM tbl_grade ORDER BY str_num;

SELECT * FROM tbl_users ORDER BY str_name DESC;         --내림차순 정렬(역순) : DESC(DESCENDING)

--SUM, AVG 함수 사용
SELECT SUM(intKor), SUM(intEng), SUM(intMath) FROM tbl_grade;
--통계함수는 칼럼별로 묶어서 계산을 실행함
SELECT str_num, intKor, intEng, intMath, (intKor + intEng + intMath) AS 총점 FROM tbl_grade;

SELECT str_num, intKor, intEng, intMath, (intKor + intEng + intMath) AS 총점,
                                        (intKor + intEng + intMath)/3 AS 평균 FROM tbl_grade;
                               
DELETE FROM tbl_grade;

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES ('001',ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0));
                                                                    
INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES ('002',ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0));                                                                    

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES ('003',ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0));

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES ('004',ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0));

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES ('005',ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0));

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES ('006',ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                     ROUND(DBMS_RANDOM.VALUE(50,100),0));


                                                                    
INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES (ROUND(DBMS_RANDOM.VALUE(0,300),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0));
                                                                    
INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES (ROUND(DBMS_RANDOM.VALUE(0,300),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0));                                                                    

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES (ROUND(DBMS_RANDOM.VALUE(0,300),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0));

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES (ROUND(DBMS_RANDOM.VALUE(0,300),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0));

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES (ROUND(DBMS_RANDOM.VALUE(0,300),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0));

INSERT INTO tbl_grade(str_num, intKor, intEng, intMath) VALUES (ROUND(DBMS_RANDOM.VALUE(0,300),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                                ROUND(DBMS_RANDOM.VALUE(50,100),0));                                                                     
                                                                     
SELECT * FROM tbl_grade;

SELECT * FROm tbl_grade ORDER BY str_num;

--학번을 기준으로 순서대로 나열하라
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS 총점, 
        ROUND((intkor + intEng + intMath)/3,2) AS 평균 FROM tbl_grade ORDER BY str_num;

--총점을 기준으로 역순으로 나열하라
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS 총점, 
        ROUND((intkor + intEng + intMath)/3,2) AS 평균 FROM tbl_grade ORDER BY 총점 DESC;

--총점을 기준으로 역순으로 나열한 후 순위를 매겨라        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS 총점, 
        ROUND((intkor + intEng + intMath)/3,2) AS 평균,
        RANK() OVER(ORDER BY (intKor + intEng + intMath) DESC) AS 순위 
        FROM tbl_grade;     

--총점을 기준으로 순위를 매긴 후 학번순으로 나열하라        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS 총점, 
        ROUND((intkor + intEng + intMath)/3,2) AS 평균,
        RANK() OVER(ORDER BY (intKor + intEng + intMath) DESC) AS 순위 
        FROM tbl_grade ORDER BY str_num;    
        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS 총점, 
        ROUND((intkor + intEng + intMath)/3,2) AS 평균 FROM tbl_grade ORDER BY 평균 ;
        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS 총점, 
        ROUND((intkor + intEng + intMath)/3,2) AS 평균 FROM tbl_grade WHERE ROUND((intkor + intEng + intMath)/3,2) >= 70 
        ORDER BY 평균 DESC;
        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS 총점, 
        ROUND((intkor + intEng + intMath)/3,2) AS 평균 FROM tbl_grade WHERE (intkor + intEng + intMath) <= 40 ;       
