--����� user2 ȭ���Դϴ�.
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

--�Էµ� �������� �й������� �ڼ��� �Է��� �Ǿ� ���� ��� �� �����͸� �й������� ������� �� : ORDER BY �й���ü
SELECT * FROM tbl_grade ORDER BY str_num;

SELECT * FROM tbl_users ORDER BY str_name DESC;         --�������� ����(����) : DESC(DESCENDING)

--SUM, AVG �Լ� ���
SELECT SUM(intKor), SUM(intEng), SUM(intMath) FROM tbl_grade;
--����Լ��� Į������ ��� ����� ������
SELECT str_num, intKor, intEng, intMath, (intKor + intEng + intMath) AS ���� FROM tbl_grade;

SELECT str_num, intKor, intEng, intMath, (intKor + intEng + intMath) AS ����,
                                        (intKor + intEng + intMath)/3 AS ��� FROM tbl_grade;
                               
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

--�й��� �������� ������� �����϶�
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS ����, 
        ROUND((intkor + intEng + intMath)/3,2) AS ��� FROM tbl_grade ORDER BY str_num;

--������ �������� �������� �����϶�
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS ����, 
        ROUND((intkor + intEng + intMath)/3,2) AS ��� FROM tbl_grade ORDER BY ���� DESC;

--������ �������� �������� ������ �� ������ �Űܶ�        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS ����, 
        ROUND((intkor + intEng + intMath)/3,2) AS ���,
        RANK() OVER(ORDER BY (intKor + intEng + intMath) DESC) AS ���� 
        FROM tbl_grade;     

--������ �������� ������ �ű� �� �й������� �����϶�        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS ����, 
        ROUND((intkor + intEng + intMath)/3,2) AS ���,
        RANK() OVER(ORDER BY (intKor + intEng + intMath) DESC) AS ���� 
        FROM tbl_grade ORDER BY str_num;    
        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS ����, 
        ROUND((intkor + intEng + intMath)/3,2) AS ��� FROM tbl_grade ORDER BY ��� ;
        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS ����, 
        ROUND((intkor + intEng + intMath)/3,2) AS ��� FROM tbl_grade WHERE ROUND((intkor + intEng + intMath)/3,2) >= 70 
        ORDER BY ��� DESC;
        
SELECT str_num, intkor, intEng, intMath, 
        (intkor + intEng + intMath) AS ����, 
        ROUND((intkor + intEng + intMath)/3,2) AS ��� FROM tbl_grade WHERE (intkor + intEng + intMath) <= 40 ;       
