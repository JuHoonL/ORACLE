--------------------------------------------------------
--  ������ ������ - �����-4��-25-2019   
--------------------------------------------------------
DROP TABLE "USER2"."TBL_EMPLOYEE" cascade constraints;
DROP TABLE "USER2"."TBL_GRADE" cascade constraints;
DROP TABLE "USER2"."TBL_TEST" cascade constraints;
DROP TABLE "USER2"."TBL_TEST1" cascade constraints;
DROP TABLE "USER2"."TBL_USERS" cascade constraints;
--------------------------------------------------------
--  DDL for Table TBL_EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "USER2"."TBL_EMPLOYEE" 
   (	"STREMPNO" CHAR(3 BYTE), 
	"STRNAME" NVARCHAR2(20), 
	"STRJOB" NVARCHAR2(20), 
	"INTSAL" NUMBER(10,0), 
	"STREDPTNO" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  DDL for Table TBL_GRADE
--------------------------------------------------------

  CREATE TABLE "USER2"."TBL_GRADE" 
   (	"STR_NUM" CHAR(3 BYTE), 
	"INTKOR" NUMBER(3,0), 
	"INTENG" NUMBER(3,0), 
	"INTMATH" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  DDL for Table TBL_TEST
--------------------------------------------------------

  CREATE TABLE "USER2"."TBL_TEST" 
   (	"ST_NAME" CHAR(20 BYTE), 
	"ST_ADDR" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  DDL for Table TBL_TEST1
--------------------------------------------------------

  CREATE TABLE "USER2"."TBL_TEST1" 
   (	"STR_NUM" CHAR(7 BYTE), 
	"INTKOR" NUMBER(3,0), 
	"INTENG" NUMBER(3,0), 
	"INTMATH" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  DDL for Table TBL_USERS
--------------------------------------------------------

  CREATE TABLE "USER2"."TBL_USERS" 
   (	"STR_NUM" CHAR(3 BYTE), 
	"STR_NAME" NVARCHAR2(20), 
	"STR_TEL" NVARCHAR2(15)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
REM INSERTING into USER2.TBL_EMPLOYEE
SET DEFINE OFF;
Insert into USER2.TBL_EMPLOYEE (STREMPNO,STRNAME,STRJOB,INTSAL,STREDPTNO) values ('001','ȫ�浿','�λ����',2500000,'�ѹ���');
Insert into USER2.TBL_EMPLOYEE (STREMPNO,STRNAME,STRJOB,INTSAL,STREDPTNO) values ('002','�̸���','�������',2500000,'������');
Insert into USER2.TBL_EMPLOYEE (STREMPNO,STRNAME,STRJOB,INTSAL,STREDPTNO) values ('003','������','�޿�����',2500000,'�ѹ���');
Insert into USER2.TBL_EMPLOYEE (STREMPNO,STRNAME,STRJOB,INTSAL,STREDPTNO) values ('004','����','�������',2500000,'�����');
Insert into USER2.TBL_EMPLOYEE (STREMPNO,STRNAME,STRJOB,INTSAL,STREDPTNO) values ('005','�Ӳ���','ǰ������',2500000,'�����');
REM INSERTING into USER2.TBL_GRADE
SET DEFINE OFF;
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('001',90,68,75);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('002',51,63,71);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('003',99,67,97);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('004',65,82,53);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('005',50,84,88);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('006',63,59,70);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('159',73,87,51);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('282',72,59,84);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('180',64,54,59);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('216',84,99,93);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('134',91,93,79);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('289',84,56,57);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('91 ',73,78,68);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('272',66,91,71);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('79 ',74,67,82);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('102',98,52,55);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('90 ',67,80,85);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('6  ',97,58,54);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('269',93,63,86);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('283',65,77,92);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('275',65,69,92);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('226',99,56,93);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('197',51,99,87);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('51 ',73,64,99);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('184',65,61,60);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('92 ',91,54,93);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('186',68,63,59);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('232',87,74,55);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('287',58,98,53);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('38 ',73,85,69);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('49 ',64,58,81);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('54 ',97,90,97);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('256',51,83,79);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('131',52,63,81);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('108',89,70,61);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('34 ',65,70,95);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('59 ',59,73,65);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('157',51,79,97);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('207',95,64,57);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('26 ',82,50,58);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('168',68,57,52);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('242',65,92,74);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('75 ',55,80,73);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('200',72,71,68);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('140',81,95,85);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('280',97,86,76);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('204',64,89,96);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('45 ',77,63,96);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('181',62,69,72);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('86 ',53,87,60);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('138',51,65,58);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('156',60,92,52);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('5  ',95,85,75);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('175',81,70,70);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('194',93,69,64);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('208',91,90,88);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('201',83,95,71);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('119',59,85,73);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('41 ',78,79,85);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('117',91,70,59);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('258',90,92,97);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('248',55,96,60);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('253',87,73,71);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('20 ',71,97,72);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('123',57,59,88);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('31 ',91,93,52);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('203',89,73,78);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('231',68,78,61);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('85 ',81,82,99);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('89 ',52,56,62);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('288',80,97,98);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('270',96,85,72);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('229',80,89,81);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('27 ',52,82,68);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('8  ',80,71,85);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('55 ',88,92,82);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('112',70,76,62);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('82 ',64,83,52);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('63 ',71,80,69);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('285',66,75,56);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('268',97,98,90);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('95 ',61,84,56);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('76 ',97,64,68);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('2  ',51,55,62);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('16 ',79,96,57);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('25 ',67,88,63);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('100',74,52,91);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('139',69,97,80);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('149',67,58,73);
Insert into USER2.TBL_GRADE (STR_NUM,INTKOR,INTENG,INTMATH) values ('105',94,88,69);
REM INSERTING into USER2.TBL_TEST
SET DEFINE OFF;
REM INSERTING into USER2.TBL_TEST1
SET DEFINE OFF;
Insert into USER2.TBL_TEST1 (STR_NUM,INTKOR,INTENG,INTMATH) values ('001    ',77,97,99);
Insert into USER2.TBL_TEST1 (STR_NUM,INTKOR,INTENG,INTMATH) values ('002    ',66,73,89);
Insert into USER2.TBL_TEST1 (STR_NUM,INTKOR,INTENG,INTMATH) values ('003    ',52,82,80);
Insert into USER2.TBL_TEST1 (STR_NUM,INTKOR,INTENG,INTMATH) values ('004    ',79,99,91);
Insert into USER2.TBL_TEST1 (STR_NUM,INTKOR,INTENG,INTMATH) values ('005    ',85,60,62);
Insert into USER2.TBL_TEST1 (STR_NUM,INTKOR,INTENG,INTMATH) values ('006    ',90,90,100);
REM INSERTING into USER2.TBL_USERS
SET DEFINE OFF;
Insert into USER2.TBL_USERS (STR_NUM,STR_NAME,STR_TEL) values ('001','ȫ�浿','010-6587-1597');
Insert into USER2.TBL_USERS (STR_NUM,STR_NAME,STR_TEL) values ('002','�̸���','010-5796-7797');
Insert into USER2.TBL_USERS (STR_NUM,STR_NAME,STR_TEL) values ('003','������','010-7795-5236');
Insert into USER2.TBL_USERS (STR_NUM,STR_NAME,STR_TEL) values ('004','�̼���','010-9963-2458');
Insert into USER2.TBL_USERS (STR_NUM,STR_NAME,STR_TEL) values ('005','�̹��','010-5882-6974');
--------------------------------------------------------
--  DDL for Index SYS_C007021
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER2"."SYS_C007021" ON "USER2"."TBL_EMPLOYEE" ("STREMPNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007015
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER2"."SYS_C007015" ON "USER2"."TBL_GRADE" ("STR_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007016
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER2"."SYS_C007016" ON "USER2"."TBL_TEST1" ("STR_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007017
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER2"."SYS_C007017" ON "USER2"."TBL_USERS" ("STR_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS" ;
--------------------------------------------------------
--  Constraints for Table TBL_EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "USER2"."TBL_EMPLOYEE" ADD PRIMARY KEY ("STREMPNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS"  ENABLE;
  ALTER TABLE "USER2"."TBL_EMPLOYEE" MODIFY ("STRNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_GRADE
--------------------------------------------------------

  ALTER TABLE "USER2"."TBL_GRADE" ADD PRIMARY KEY ("STR_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_TEST1
--------------------------------------------------------

  ALTER TABLE "USER2"."TBL_TEST1" ADD PRIMARY KEY ("STR_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_USERS
--------------------------------------------------------

  ALTER TABLE "USER2"."TBL_USERS" ADD PRIMARY KEY ("STR_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTS"  ENABLE;
