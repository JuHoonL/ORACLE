--------------------------------------------------------
--  ������ ������ - �����-4��-25-2019   
--------------------------------------------------------
DROP TABLE "BBSUSER"."TBL_BBS_MAIN" cascade constraints;
--------------------------------------------------------
--  DDL for Table TBL_BBS_MAIN
--------------------------------------------------------

  CREATE TABLE "BBSUSER"."TBL_BBS_MAIN" 
   (	"B_ID" NUMBER, 
	"B_DATE" CHAR(10 BYTE), 
	"B_AUTH" NVARCHAR2(20), 
	"B_SUBJECT" NVARCHAR2(50), 
	"B_TEXT" NVARCHAR2(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BBSTS" ;
REM INSERTING into BBSUSER.TBL_BBS_MAIN
SET DEFINE OFF;
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (42,'2019-01-03','�̼���','������','���� �ǰ��ϴ�... ��´�');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (41,'2019-01-03','�̹��','������','���� �ǰ��ϴ� ...��´�');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (43,'2019-01-03','ȫ����','�м���Ʈ','��ȭ�� �м����� �߿�ϱ�');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (1,'2018-12-28','ȫ�浿','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (2,'2018-12-28','������','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (3,'2018-12-28','�庸��','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (4,'2018-12-28','�̼���','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (5,'2018-12-28','�̸���','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (6,'2018-12-28','������','�Խ��� ����','������ �ڹٸ� �̿��ؼ� �Խ����� �����.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (21,'2019-01-02','ȫ�浿','���س� ����','���� �� ���� ��������');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (22,'2019-01-02','�庸��','���س� ����','���� �� ���� ��������');
--------------------------------------------------------
--  DDL for Index SYS_C007116
--------------------------------------------------------

  CREATE UNIQUE INDEX "BBSUSER"."SYS_C007116" ON "BBSUSER"."TBL_BBS_MAIN" ("B_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BBSTS" ;
--------------------------------------------------------
--  Constraints for Table TBL_BBS_MAIN
--------------------------------------------------------

  ALTER TABLE "BBSUSER"."TBL_BBS_MAIN" ADD PRIMARY KEY ("B_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BBSTS"  ENABLE;
  ALTER TABLE "BBSUSER"."TBL_BBS_MAIN" MODIFY ("B_TEXT" NOT NULL ENABLE);
  ALTER TABLE "BBSUSER"."TBL_BBS_MAIN" MODIFY ("B_SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "BBSUSER"."TBL_BBS_MAIN" MODIFY ("B_AUTH" NOT NULL ENABLE);
  ALTER TABLE "BBSUSER"."TBL_BBS_MAIN" MODIFY ("B_DATE" NOT NULL ENABLE);
