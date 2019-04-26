--mybts ȭ��
SELECT * FROM tbl_board ORDER BY b_date DESC, b_time DESC;

SELECT ROWNUM, b_userid, b_date,b_time,b_subject FROM tbl_board WHERE ROWNUM BETWEEN 1 AND 10 ORDER BY b_date DESC, b_time DESC;

--sub query�� ����
SELECT ROWNUM, M.b_userid, M.b_date,M.b_time,m.b_subject 
FROM( SELECT * FROM tbl_board ORDER BY b_date DESC, b_time DESC) M
WHERE ROWNUM BETWEEN 1 AND 10;

--INDEX����
CREATE INDEX idx_board ON tbl_board(b_date,b_time);  --����Į�� �ε���
CREATE INDEX idx_board_subject ON tbl_board(b_subject);  --����Į�� �ε���
--TABLE�� Į���� �߿��� ����ϰ� SELECT ����, ORDER BY ���ǿ� ���Ǵ� Į���� INDEX��� ������ ����
--�⺻ TABLE�� ������ �˻�Į���� ���� ������ REC �ּҸ� ���� ������ �ý��� ���̺��̴�.
--INDEX�� �׻� �˻�Į���� �������� ������ �Ǿ� �ִ�. �׷��� INDEX�� �Ǿ��ִ� Į���� �������� �˻��� �ϸ�
--�׷��� ���� Į���� �˻��� ������ ��û�� �ӵ� ����� �����ش�.

--��, INSERT, UPDATE, DELETE�� �̷�� �� ������ ���� TABLE�� INDEX�� ���ÿ� �����ؾ� �ϰ� INDEX�� ���� �۾�����
--���� �ؾ� �ϱ� ������ ����� �ӵ� ���ϰ� �߻��Ѵ�.

--PKŰ�� �ڵ����� �⺻ INDEX�� ������ �ȴ�.(PK�� �⺻������ NOT NULL,UNIQUE,INDEX�Ӽ��� ���� ����)
CREATE TABLE tbl_bbs_file(
    id              NUMBER              PRIMARY KEY,
    parent_id       NUMBER              NOT NULL,
    file_name       nVARCHAR2(125),
    save_file_name  nVARCHAR2(125)
);

ALTER TABLE tbl_bbs_file ADD CONSTRAINT fk_bbs_file FOREIGN KEY (parent_id) REFERENCES tbl_board(id) ON DELETE CASCADE;

DROP INDEX idx_board;

CREATE INDEX idx_board_date ON tbl_board(b_date DESC);
CREATE INDEX idx_board_time ON tbl_board(b_time DESC);

DROP INDEX idx_board_date;
DROP INDEX idx_board_time;

CREATE INDEX idx_board ON tbl_board(b_date DESC,b_time DESC);

--pagenation�� ����� ���� ����
--����Ŭ������ ��� �ʿ��� ������ŭ SELECT�ϴ� ����� ���� ������ ROWNUM��� ������ Į���� ���� �ʿ���
--������ŭ�� SELECT�� �ϴµ� ROWNUM�� ORDER BY �ɼ��� ���ԵǸ� ������ ������ �Ǿ� ���ϴ� ����� ������ �� ����.
--�׷��� SUB QUERY �� ����ؼ� Ʈ������ �����Ѵ�.
SELECT ROWNUM,BM.* FROM
(SELECT * FROM tbl_board ORDER BY b_date DESC, b_time DESC) BM
WHERE ROWNUM BETWEEN 1 AND 10;

SELECT * FROM tbl_board WHERE b_date > '0000-00-00' AND b_time > '00:00:00';

SELECT * FROM(SELECT ROWNUM R, B.*  FROM tbl_board B WHERE b_date > '0000-00-00')
WHERE R BETWEEN 100 AND 200;

SELECT * FROM(SELECT ROWNUM, *  FROM tbl_board WHERE b_date > '0000-00-00')
WHERE ROWNUM BETWEEN 100 AND 200;