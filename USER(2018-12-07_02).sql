--����� user1���� ������ ȭ���Դϴ�.
--�̸�(o_name), ��ȭ��ȣ(o_tel), �ּ�(o_addr), ȸ��(o_comp), �μ�(o_dept), Į���� ���� tbl_office TABLE�� �����Ͻÿ�
--��, id�� PK�� �����ϰ� �̸��� NOT NULL�� �����Ͻÿ�

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