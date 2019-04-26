--------------------------------------------------------
--  ������ ������ - �����-4��-25-2019   
--------------------------------------------------------
DROP TABLE "USER1"."TBL_ADDR" cascade constraints;
DROP TABLE "USER1"."TBL_OFFICE" cascade constraints;
DROP TABLE "USER1"."TBL_SCORE" cascade constraints;
DROP TABLE "USER1"."TBL_STD" cascade constraints;
DROP TABLE "USER1"."TBL_STUDENT" cascade constraints;
--------------------------------------------------------
--  DDL for Table TBL_ADDR
--------------------------------------------------------

  CREATE TABLE "USER1"."TBL_ADDR" 
   (	"ID" NUMBER, 
	"ST_NAME" CHAR(50 BYTE), 
	"ST_AGE" NUMBER(3,0), 
	"ST_ADDR" VARCHAR2(125 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_OFFICE
--------------------------------------------------------

  CREATE TABLE "USER1"."TBL_OFFICE" 
   (	"ID" CHAR(4 BYTE), 
	"O_NAME" CHAR(10 BYTE), 
	"O_TEL" CHAR(13 BYTE), 
	"O_ADDR" NVARCHAR2(255), 
	"O_COMP" NVARCHAR2(20), 
	"O_DEPT" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_SCORE
--------------------------------------------------------

  CREATE TABLE "USER1"."TBL_SCORE" 
   (	"ST_NUM" CHAR(7 BYTE), 
	"ST_KOR" NUMBER(3,0), 
	"ST_ENG" NUMBER(3,0), 
	"ST_MTH" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_STD
--------------------------------------------------------

  CREATE TABLE "USER1"."TBL_STD" 
   (	"ST_NUM" CHAR(6 BYTE), 
	"ST_NAME" CHAR(20 BYTE), 
	"ST_TEL" NVARCHAR2(20), 
	"ST_ADDR" NVARCHAR2(125), 
	"INT_AGE" NUMBER(3,0), 
	"INT_GRADE" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_STUDENT
--------------------------------------------------------

  CREATE TABLE "USER1"."TBL_STUDENT" 
   (	"ST_NUM" CHAR(7 BYTE), 
	"ST_NAME" NVARCHAR2(20), 
	"ST_TEL" NVARCHAR2(15), 
	"ST_AGE" NUMBER(3,0), 
	"ST_ADDR" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into USER1.TBL_ADDR
SET DEFINE OFF;
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (0,'ȫ�浿                                         ',12,'�����');
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (1,'ȫ�浿                                         ',12,'�λ��');
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (2,'����ȯ                                         ',25,'���ֽ�');
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (3,'������                                         ',27,'���ֽ�');
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (4,'������                                         ',26,'���ֽ�');
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (5,'�����                                         ',24,'���ֽ�');
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (6,'������                                         ',25,'���ֽ�');
Insert into USER1.TBL_ADDR (ID,ST_NAME,ST_AGE,ST_ADDR) values (7,'������                                         ',33,'������');
REM INSERTING into USER1.TBL_OFFICE
SET DEFINE OFF;
REM INSERTING into USER1.TBL_SCORE
SET DEFINE OFF;
Insert into USER1.TBL_SCORE (ST_NUM,ST_KOR,ST_ENG,ST_MTH) values ('001    ',79,59,93);
Insert into USER1.TBL_SCORE (ST_NUM,ST_KOR,ST_ENG,ST_MTH) values ('002    ',61,90,70);
Insert into USER1.TBL_SCORE (ST_NUM,ST_KOR,ST_ENG,ST_MTH) values ('003    ',59,93,80);
Insert into USER1.TBL_SCORE (ST_NUM,ST_KOR,ST_ENG,ST_MTH) values ('004    ',80,99,69);
Insert into USER1.TBL_SCORE (ST_NUM,ST_KOR,ST_ENG,ST_MTH) values ('005    ',68,72,79);
Insert into USER1.TBL_SCORE (ST_NUM,ST_KOR,ST_ENG,ST_MTH) values ('006    ',97,99,98);
Insert into USER1.TBL_SCORE (ST_NUM,ST_KOR,ST_ENG,ST_MTH) values ('007    ',78,68,63);
REM INSERTING into USER1.TBL_STD
SET DEFINE OFF;
Insert into USER1.TBL_STD (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,INT_AGE,INT_GRADE) values ('0     ','ȫ�浿           ','010-5789-4125','���ֱ����� ����',26,2);
Insert into USER1.TBL_STD (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,INT_AGE,INT_GRADE) values ('1     ','�̸���           ','010-2687-9754','���ֱ����� ����',22,2);
Insert into USER1.TBL_STD (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,INT_AGE,INT_GRADE) values ('2     ','������           ','010-1547-6325','���ֱ����� �ϱ�',28,4);
Insert into USER1.TBL_STD (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,INT_AGE,INT_GRADE) values ('3     ','�Ӳ���           ','010-3569-4259','���ֱ����� ����',21,1);
Insert into USER1.TBL_STD (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,INT_AGE,INT_GRADE) values ('4     ','����           ','010-6574-9632','���ֱ����� ����',19,1);
REM INSERTING into USER1.TBL_STUDENT
SET DEFINE OFF;
Insert into USER1.TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_AGE,ST_ADDR) values ('001    ','�̸���','010-1245-7342',19,'������');
Insert into USER1.TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_AGE,ST_ADDR) values ('002    ','������','010-6879-1579',16,'�ͻ��');
Insert into USER1.TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_AGE,ST_ADDR) values ('003    ','ȫ�浿','010-2487-5687',12,'�����');
--------------------------------------------------------
--  DDL for Index SYS_C007001
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER1"."SYS_C007001" ON "USER1"."TBL_ADDR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007008
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER1"."SYS_C007008" ON "USER1"."TBL_OFFICE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007004
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER1"."SYS_C007004" ON "USER1"."TBL_SCORE" ("ST_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007012
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER1"."SYS_C007012" ON "USER1"."TBL_STD" ("ST_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007003
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER1"."SYS_C007003" ON "USER1"."TBL_STUDENT" ("ST_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TBL_ADDR
--------------------------------------------------------

  ALTER TABLE "USER1"."TBL_ADDR" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "USER1"."TBL_ADDR" MODIFY ("ST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_OFFICE
--------------------------------------------------------

  ALTER TABLE "USER1"."TBL_OFFICE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "USER1"."TBL_OFFICE" MODIFY ("O_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_SCORE
--------------------------------------------------------

  ALTER TABLE "USER1"."TBL_SCORE" ADD PRIMARY KEY ("ST_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_STD
--------------------------------------------------------

  ALTER TABLE "USER1"."TBL_STD" ADD PRIMARY KEY ("ST_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "USER1"."TBL_STD" MODIFY ("ST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_STUDENT
--------------------------------------------------------

  ALTER TABLE "USER1"."TBL_STUDENT" ADD PRIMARY KEY ("ST_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "USER1"."TBL_STUDENT" MODIFY ("ST_NAME" NOT NULL ENABLE);
