--����� user2 ����ȭ���Դϴ�

CREATE TABLE tbl_test1(
    str_num CHAR(7) PRIMARY KEY,
    intKor NUMBER(3),
    intEng NUMBER(3),
    intMath NUMBER(3)
);

--ǥ�� ����
CREATE TABLE tbl_test2(
    str_num CHAR(7),
    intKor NUMBER(3),
    intEng NUMBER(3),
    intMath NUMBER(3),
    PRIMARY KEY(str_num)
);

DROP TABLE tbl_users ;

CREATE TABLE tbl_users(
    str_num CHAR(3) PRIMARY KEY,
    str_name nVARCHAR2(20),
    str_tel nVARCHAR2(15)
);

INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('001','ȫ�浿','010-6587-1597');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('002','�̸���','010-5796-7797');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('003','������','010-7795-5236');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('004','�̼���','010-9963-2458');
INSERT INTO tbl_users(str_num,str_name,str_tel) VALUES ('005','�̹��','010-5882-6974');

SELECT str_num,str_name,str_tel FROM tbl_users;

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('001',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('002',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );
                                                            
INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('003',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );                                                            

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('004',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );

INSERT INTO tbl_test1(str_num,intKor,intEng,intMath) VALUES ('005',
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0),
                                                            ROUND(DBMS_RANDOM.VALUE(50,100),0)
                                                            );
                                                            
SELECT str_num,intKor,intEng,intMath,
        (intKor+intEng+intMath) AS ����,
        (intKor+intEng+intMath)/3 AS ��� FROM tbl_test1;        

SELECT str_num,intKor,intEng,intMath FROM tbl_test1 ORDER BY str_num ;        
SELECT str_num,intKor,intEng,intMath FROM tbl_test1 ORDER BY str_num DESC;

--�л��� ������ �����ϴ� TABLE�� �����ϴµ� ���� �Ϲ����� ������� TABLE�� ����� �ʿ��� Į���� ��� �����ϴ� 
--TABLE�� ������ �� �ִ�.

--�й�, �̸�, ����, ����, ����, ����, ���
--�й�, �̸�, ��ȭ��ȣ, �ּ�, ����, ����, ����, ����, ��� 

--������ DB���� ���������� �Ѱ��� TABLE�� �ʿ��� Į���� ��� �����ϴ� ���� �ſ� �ٶ��� ���� �ʴ�.
--DB���������� �ʿ��� �����鳢�� TABLE�� ������ �����ؼ� DATA�� �����Ѵ�.

--�л������� tbl_users ���̺� �ְ�, ���������� tbl_test1 ���̺� �ְ��ϴ� ���� ����.

--������, �̷��� ���̺��� �и��ϸ� ���������� ���鼭 �л������� ���� ��ȸ�ϰ� ���� �� ������� �߻��Ѵ�.

--�׷��� ǥ��SQL���� �ΰ��� TABLE�� �����ؼ� ��ġ 1���� TABLEó�� �����͸� �� �� �ִ� ����� �����Ѵ�.

--���� Į����(���� PK)�� �ִ°�� �� ���� �̿��ؼ� ���Ͽ� ���� �ִ� ��ɾ�(�ΰ��� ���̺��� ��� ��ȸ)
SELECT * FROM tbl_test1, tbl_users WHERE tbl_test1.str_num = tbl_users.str_num;

SELECT str_num,intKor,intEng,intMath,
        (intKor+intEng+intMath) AS ����,
        (intKor+intEng+intMath)/3 AS ��� 
FROM tbl_test1, tbl_users 
WHERE tbl_test1.str_num = tbl_users.str_num;

--�ΰ��� ���̺��� ��� ���ϴ� Į���� �̾Ƽ� ��ȸ�ϱ�
SELECT tbl_test1.str_num AS ����,tbl_users.str_name AS �̸�,tbl_users.str_tel AS ��ȭ��ȣ,
    tbl_test1.intKor AS ����,tbl_test1.intEng AS ����,tbl_test1.intMath AS ����,
    (tbl_test1.intKor+tbl_test1.intEng+tbl_test1.intMath) AS ����,
        ROUND((tbl_test1.intKor+tbl_test1.intEng+tbl_test1.intMath)/3,2) AS ���
FROM tbl_test1, tbl_users WHERE tbl_test1.str_num = tbl_users.str_num;

--���̺� �̸��� �����ؼ� ��ɾ �ٿ��� ��ȸ
SELECT T.str_num AS ����,U.str_name AS �̸�,U.str_tel AS ��ȭ��ȣ,
    T.intKor AS ����,T.intEng AS ����,T.intMath AS ����,
    (T.intKor+T.intEng+T.intMath) AS ����,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS ���
FROM tbl_test1 T, tbl_users U WHERE T.str_num = U.str_num;

--����Ŭ 9 �̻󿡼� ����ϴ� ���� EQ JOIN(�����ɸ�;;)
SELECT T.str_num AS ����,U.str_name AS �̸�,U.str_tel AS ��ȭ��ȣ,
    T.intKor AS ����,T.intEng AS ����,T.intMath AS ����,
    (T.intKor+T.intEng+T.intMath) AS ����,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS ���
FROM tbl_test1 T NATURAL JOIN tbl_users U WHERE T.str_num = U.str_num;

--test1 TABLE�� ���� �ϳ��� �߰�
INSERT INTO tbl_test1 VALUES('006',90,90,100);

--test1���� �ְ� users���� ���� ��� ��� ��ȸ�� ��(LEFT JOIN  ���ʿ� �ִ� ������ ��� ��ȸ�϶�� ���)
SELECT T.str_num AS ����,U.str_name AS �̸�,U.str_tel AS ��ȭ��ȣ,
    T.intKor AS ����,T.intEng AS ����,T.intMath AS ����,
    (T.intKor+T.intEng+T.intMath) AS ����,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS ���
FROM tbl_test1 T LEFT JOIN tbl_users U ON T.str_num = U.str_num;

--���� ���� �ڵ� users TABLE�� ���� �����͸� + �ؼ� ��ȸ�϶�
SELECT T.str_num AS ����,U.str_name AS �̸�,U.str_tel AS ��ȭ��ȣ,
    T.intKor AS ����,T.intEng AS ����,T.intMath AS ����,
    (T.intKor+T.intEng+T.intMath) AS ����,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS ���
FROM tbl_test1 T, tbl_users U WHERE T.str_num = U.str_num(+);

CREATE VIEW myJOIN AS  -- ���� ����ϴ� �ڵ��� ��� myJOIN���� �����ؼ� ��� ��밡���ϰ� ����(�޼��尰�� ����)
SELECT T.str_num AS ����, U.str_num AS �й�, U.str_name AS �̸�,U.str_tel AS ��ȭ��ȣ,  --As�� �ٸ��� �������ָ� str_num�Ѵ���ȸ
    T.intKor AS ����,T.intEng AS ����,T.intMath AS ����, 
    (T.intKor+T.intEng+T.intMath) AS ����,
    ROUND((T.intKor+T.intEng+T.intMath)/3,2) AS ���
FROM tbl_test1 T, tbl_users U WHERE T.str_num = U.str_num;

SELECT * FROM myJOIN ;

DROP VIEW myJOIN;

--DCL ���(COMMIT, ROLLBACK, GRANT, REVOKE)
--tbl_users & tbl_test1�� ���� ����������� ������ �ȵǾ��ִ� ���·� ����Ŭ�� �ӽ����念������ ������ �Ǿ��ִ� ����
--����Ŭ�� �ӽ����念������ ����Ǿ��ִ� TABLE�� ���� ��������� �����ϴ� Ű���� �н�
COMMIT ;     --��� ���� ������ ������ ��������� �ݿ��϶�

DELETE FROM tbl_test1 WHERE str_num = '003';
SELECT * FROM tbl_test1;
ROLLBACK;   --COMMIT�ϱ� ���� ���������Ϸ� �ǵ���
