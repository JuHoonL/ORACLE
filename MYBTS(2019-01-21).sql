--����� mybts ȭ���Դϴ�.

CREATE TABLE tbl_addr (
    ad_num      VARCHAR(5)      PRIMARY KEY,
    ad_name     nVARCHAR2(30)   NOT NULL,
    ad_tel      nVARCHAR2(15),
    ad_addr1    nVARCHAR2(20),
    ad_addr2    nVARCHAR2(50)
);

INSERT INTO tbl_addr(ad_num,ad_name,ad_tel) VALUES('19001', 'ȫ�浿', '010-5486-9874');
INSERT INTO tbl_addr(ad_num,ad_name,ad_tel) VALUES('19002', '�̸���', '010-5687-4587');
INSERT INTO tbl_addr(ad_num,ad_name,ad_tel) VALUES('19003', '������', '010-6985-7851');
INSERT INTO tbl_addr(ad_num,ad_name,ad_tel) VALUES('19004', '�����', '010-4597-3695');

COMMIT;