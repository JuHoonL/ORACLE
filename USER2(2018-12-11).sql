--����� user2

CREATE TABLE tbl_users(
    str_userid CHAR(12) PRIMARY KEY,
    str_name nVARCHAR2(50) NOT NULL,
    str_tel CHAR(15),
    str_addr nVARCHAR2(125)
);

INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('001','ȫ�浿','010-8745-9625','���󳲵� �强��');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('002','�̸���','010-5874-4125','����ϵ� ������');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('003','������','010-4795-1248','����ϵ� ������');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('004','�庸��','010-2587-4796','���󳲵� �س���');
INSERT INTO tbl_users(str_userid,str_name,str_tel,str_addr) VALUES ('005','�̼���','010-7469-2479','����� ������');

ALTER TABLE tbl_users MODIFY str_userid CHAR(6);
ALTER TABLE tbl_users MODIFY str_name nVARCHAR2(5);
--CHAR�� ���̴°� �ȵǰ� �ø��� �͸� ��. �׷��� nVARCHAR2�� ������ũ�⺸�� ���� ������ ���̴°� ����
--CHAR�� �����ʹ� ���̴� �����Ϳ� �޸� ���� ũ�⸸ŭ ��������� �̹� ä���� �־ ũ�⸦ ���̱Ⱑ �ȵȴ�.
--nVARCHAR2 �� �����ʹ� ���̴� ������ �� ���� ���̰� �� ������ ��ŭ ũ�⸦ ���� �� �ִ�.

INSERT INTO tbl_users(str_userid,str_name) VALUES ('006','�����Ȳ');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('007','��������');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('008','���߱�');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('009','�̼���');
INSERT INTO tbl_users(str_userid,str_name) VALUES ('010','�̹��');

SELECT * FROM tbl_users;

SELECT str_userid,str_name,str_tel,str_addr FROM tbl_users;

SELECT str_name,str_tel FROM tbl_users;

UPDATE tbl_users SET str_tel = '010-7895-3647' WHERE str_userid = '006';
UPDATE tbl_users SET str_addr = '��󳲵� ���ؽ�' WHERE str_userid = '006';

UPDATE tbl_users SET str_tel = '010-8647-9541' WHERE str_userid = '007';
UPDATE tbl_users SET str_addr = '�λ걤���� �ؿ�뱸' WHERE str_userid = '007';

UPDATE tbl_users SET str_tel = '010-7452-9637' WHERE str_userid = '008';
UPDATE tbl_users SET str_addr = '�԰�ϵ�' WHERE str_userid = '008';

UPDATE tbl_users SET str_tel = '010-8521-7561' WHERE str_userid = '009';
UPDATE tbl_users SET str_addr = '����� ���۱�' WHERE str_userid = '009';

UPDATE tbl_users SET str_tel = '010-9523-7462' WHERE str_userid = '010';
UPDATE tbl_users SET str_addr = '����� ���۱�' WHERE str_userid = '010';

SELECT str_userid,str_name,str_tel,str_addr FROM tbl_users WHERE str_name = 'ȫ�浿';

SELECT * FROM tbl_users WHERE str_addr = '����� ���۱�' AND str_name = '�̹��';

SELECT * FROM tbl_users WHERE str_userid > '002' AND str_userid <= '006';

--���� ���� BETWEEN�̶�� ǥ�� ��ɾ�
SELECT * FROM tbl_users WHERE str_userid BETWEEN '003' AND '006';

--���� tbl_users�� ����� ������ ������ ���?(SQL�� ����Լ�)
--COUNT, SUM, AVG, MIN, MAX ���� �ִ�.(Į���� ���δ� �Լ���� ���ǉ�)
SELECT COUNT (*) FROM tbl_users;
SELECT MIN (str_userid) FROM tbl_users;
SELECT MAX (str_userid) FROM tbl_users;
SELECT COUNT (*) AS ����, MIN(str_userid) ������, MAX(str_userid) AS  ū�� FROM tbl_users;

