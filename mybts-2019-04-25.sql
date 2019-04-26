--------------------------------------------------------
--  ������ ������ - �����-4��-25-2019   
--------------------------------------------------------
DROP TABLE "MYBTS"."TBL_ADDR" cascade constraints;
DROP TABLE "MYBTS"."TBL_B_USER" cascade constraints;
DROP TABLE "MYBTS"."TBL_BBS_FILE" cascade constraints;
DROP TABLE "MYBTS"."TBL_BOARD" cascade constraints;
DROP TABLE "MYBTS"."TBL_BOOK" cascade constraints;
DROP TABLE "MYBTS"."TBL_BOOKS" cascade constraints;
DROP TABLE "MYBTS"."TBL_DEPT" cascade constraints;
DROP TABLE "MYBTS"."TBL_EMAIL" cascade constraints;
DROP TABLE "MYBTS"."TBL_EMAIL_MEMBER" cascade constraints;
DROP TABLE "MYBTS"."TBL_FILES" cascade constraints;
DROP TABLE "MYBTS"."TBL_HOBBY" cascade constraints;
DROP TABLE "MYBTS"."TBL_MEMBER" cascade constraints;
DROP TABLE "MYBTS"."TBL_MEMO" cascade constraints;
DROP TABLE "MYBTS"."TBL_MENU" cascade constraints;
DROP TABLE "MYBTS"."TBL_SCORE" cascade constraints;
DROP TABLE "MYBTS"."TBL_SCORE01" cascade constraints;
DROP TABLE "MYBTS"."TBL_STUDENT" cascade constraints;
DROP TABLE "MYBTS"."TBL_USER" cascade constraints;
--------------------------------------------------------
--  DDL for Table TBL_ADDR
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_ADDR" 
   (	"AD_NUM" VARCHAR2(5 BYTE), 
	"AD_NAME" NVARCHAR2(30), 
	"AD_TEL" NVARCHAR2(15), 
	"AD_ADDR1" NVARCHAR2(20), 
	"AD_ADDR2" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_B_USER
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_B_USER" 
   (	"M_ID" NUMBER, 
	"M_USERID" VARCHAR2(20 BYTE), 
	"M_PASSWORD" NVARCHAR2(125), 
	"M_USERNAME" NVARCHAR2(20), 
	"M_TEL" NVARCHAR2(20), 
	"M_ADDR" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_BBS_FILE
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_BBS_FILE" 
   (	"ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"FILE_NAME" NVARCHAR2(125), 
	"SAVE_FILE_NAME" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_BOARD
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_BOARD" 
   (	"ID" NUMBER, 
	"B_USERID" NVARCHAR2(50), 
	"B_DATE" VARCHAR2(10 BYTE), 
	"B_TIME" VARCHAR2(10 BYTE), 
	"B_SUBJECT" NVARCHAR2(50), 
	"B_CONTENT" NVARCHAR2(1000), 
	"B_HIT" NUMBER, 
	"B_IMAGE" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_BOOK
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_BOOK" 
   (	"B_ID" NUMBER, 
	"B_USERID" VARCHAR2(20 BYTE), 
	"B_ISBN" VARCHAR2(20 BYTE), 
	"B_TITLE" NVARCHAR2(30), 
	"B_DATE" VARCHAR2(10 BYTE), 
	"B_STAR" NUMBER(2,1), 
	"B_TEXT" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_BOOKS
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_BOOKS" 
   (	"ID" NUMBER, 
	"TB_NAME" NVARCHAR2(50), 
	"TB_COMP" NVARCHAR2(50), 
	"TB_AUTH" NVARCHAR2(50), 
	"TB_PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_DEPT
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_DEPT" 
   (	"D_CODE" VARCHAR2(5 BYTE), 
	"D_NAME" NVARCHAR2(50), 
	"D_CEO" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_EMAIL
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_EMAIL" 
   (	"ID" NUMBER, 
	"FROM_EMAIL" NVARCHAR2(30), 
	"TO_EMAIL" NVARCHAR2(30), 
	"S_DATE" NVARCHAR2(10), 
	"S_TIME" NVARCHAR2(10), 
	"S_SUBJECT" NVARCHAR2(125), 
	"S_CONTENT" NVARCHAR2(2000), 
	"S_FILE1" NVARCHAR2(125), 
	"S_FILE2" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_EMAIL_MEMBER
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_EMAIL_MEMBER" 
   (	"M_ID" NUMBER, 
	"M_USERID" VARCHAR2(10 BYTE), 
	"M_PASSWORD" NVARCHAR2(125), 
	"M_MAILADDRESS" NVARCHAR2(30), 
	"M_USERNAME" NVARCHAR2(30), 
	"M_ADDR" NVARCHAR2(125), 
	"M_TEL" NVARCHAR2(30)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_FILES
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_FILES" 
   (	"ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"FILE_NAME" NVARCHAR2(125), 
	"SAVE_FILE_NAME" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_HOBBY
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_HOBBY" 
   (	"ID" NUMBER, 
	"USERID" CHAR(5 BYTE), 
	"HOBBY" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_MEMBER
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_MEMBER" 
   (	"M_USERID" NVARCHAR2(30), 
	"M_PASSWORD" NVARCHAR2(125), 
	"M_NAME" NVARCHAR2(125), 
	"M_TEL" NVARCHAR2(20), 
	"M_CITY" NVARCHAR2(20), 
	"M_ADDR" NVARCHAR2(125), 
	"M_PHOTO" NVARCHAR2(125), 
	"M_PHOTO_PATH" NVARCHAR2(125)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_MEMO
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_MEMO" 
   (	"ID" NUMBER, 
	"M_AUTH" NVARCHAR2(30), 
	"M_DATE" CHAR(10 BYTE), 
	"M_SUBJECT" NVARCHAR2(50), 
	"M_TEXT" NVARCHAR2(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_MENU
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_MENU" 
   (	"MENU_ID" CHAR(10 BYTE), 
	"MENU_P_ID" CHAR(10 BYTE) DEFAULT NULL, 
	"MENU_TITLE" NVARCHAR2(255), 
	"MENU_HREF" NVARCHAR2(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_SCORE
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_SCORE" 
   (	"ID" NUMBER, 
	"ST_NUM" VARCHAR2(5 BYTE), 
	"SC_SS_CODE" VARCHAR2(3 BYTE), 
	"SC_SCORE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_SCORE01
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_SCORE01" 
   (	"ID" NUMBER, 
	"ST_NUM" VARCHAR2(5 BYTE), 
	"SC_SB_CODE" VARCHAR2(3 BYTE), 
	"SC_SCORE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_STUDENT
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_STUDENT" 
   (	"ST_NUM" VARCHAR2(5 BYTE), 
	"ST_NAME" NVARCHAR2(20), 
	"ST_GRADE" CHAR(2 BYTE), 
	"ST_TEL" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Table TBL_USER
--------------------------------------------------------

  CREATE TABLE "MYBTS"."TBL_USER" 
   (	"USERID" CHAR(5 BYTE), 
	"USERNAME" NVARCHAR2(20), 
	"TEL" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
REM INSERTING into MYBTS.TBL_ADDR
SET DEFINE OFF;
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19001','ȫ�浿','010-5486-9874',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19002','�̸���','010-5687-4587',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19003','������','010-6985-7851',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19004','�����','010-4597-3695',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19005','�Ӳ���','010-6574-5891','���ֱ�����','�ϱ� ���ﵿ');
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19006','�庸��','010-4984-2578','���󳲵�','�س���');
REM INSERTING into MYBTS.TBL_B_USER
SET DEFINE OFF;
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (41,'lljh','$2a$04$aBCt.V6l4HFSJAzHh/p0h.Le8KGIOSQd8WH8WVjMwql66GBrK0vc.','����','010-6775-6100','�浿');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (21,'mongryong','$2a$04$hhLn5dHQ0jy6Snl0REdhCOUmndVlAivdan/0MHcedCBCFN7woyc0.','�̸���','248-7894','����ϵ� ������');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (23,'gildong','$2a$04$feRwrEv8eaPEUTAIa9OjTOKjYi17hM70MArQIGD0FpAoCiRwK41uq','ȫ�浿','2547954','���󳲵� �强��');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (24,'bogo','$2a$04$v.ISvECmOLKM25m9DjRPP.LZqJHFKIcIe8OK1lsxWQfoyZI78O.5S','�庸��','2574563','û����');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (25,'jong','$2a$04$WcAV973KSuLlTQo3rmT0GeI/oY/4ALY719t3W5bWnb0Ewg.pUu6sC','��ȯ','248-7841','���ֱ�����');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (22,'juhoon12','$2a$04$4wokNyIEdeUTsgZSN.t4VeBEcMwq9p7bIgdQe8HkmCvg6htoFxj.m','������','01067756100','����ϵ� ������');
REM INSERTING into MYBTS.TBL_BBS_FILE
SET DEFINE OFF;
REM INSERTING into MYBTS.TBL_BOARD
SET DEFINE OFF;
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (193,'gildong@naver.com','2018-05-30','14:16:12','ù Ű���� ��','ù Ű���� ��� ���̾� 2 - ����⸦ ���� �Ƹ��ٿ� ���� ����� ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (194,'gildong@naver.com','2018-11-25','14:54:14','�Ҳɳ��̿� ��','�Ҳɳ��̿� �������� �������ִ�å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (195,'gildong@naver.com','2018-01-26','16:47:22','������ �׸�','[������ �׸�å 37]���� ���� �� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (196,'gildong@naver.com','2018-02-25','14:22:05','������ �׸�','[������ �׸�å 38]���� ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (197,'gildong@naver.com','2018-07-09','09:03:14','������ û��','[������ û�ҳ� ���� 2]�پ�, �پ�! �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (198,'gildong@naver.com','2018-06-20','13:02:26','��󵵼��� ','[��󵵼��� 2]���ο� Ǫ����� �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (199,'gildong@naver.com','2018-11-14','09:58:06','������ ���̵�','������ ���̵� - ������ �ٲٴ� ���� �̾߱� ��Ǫ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (200,'gildong@naver.com','2018-03-14','14:43:37','�޲ٴµ� 3','[�޲ٴµ� 3]���� ���� ����� �Դ� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (201,'gildong@naver.com','2018-11-14','16:07:24','�޲ٴµ� 6','[�޲ٴµ� 6]��纣�� ���� ����� ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (202,'gildong@naver.com','2018-04-19','09:18:05','�츮 ���� ','[�츮 ���� 100�� 17]��� ���� - ���� ���� ���� �����ڴ� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (203,'gildong@naver.com','2019-01-06','12:15:05','���� ����','���� ���� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (204,'gildong@naver.com','2018-07-23','10:21:37','�� �ڿ���','�� �ڿ��� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (205,'gildong@naver.com','2018-10-29','11:25:58','������, ��','[������, ������ 3]������ ���ִ� �η����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (206,'gildong@naver.com','2018-03-14','11:18:57','����� ���','[����� ��� ������Ʈ 3]�������� ��ģ�� �帲�Ǳ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (207,'gildong@naver.com','2018-03-23','12:10:39','VivaVi','[VivaVivo 15]�޸� ���� - �� �ҳ��� ����� ������ �Ǿ��� ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (208,'gildong@naver.com','2018-07-08','16:47:16','VivaVi','[VivaVivo 16]��� ���� �ߴ���, ����� ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (209,'gildong@naver.com','2018-06-19','15:49:20','����ȭ 2','[����ȭ 2]����� ���� ������ �� ���ε����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (210,'gildong@naver.com','2018-02-14','17:48:36','���ô� �ȶ���','���ô� �ȶ��� ���ε����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (211,'gildong@naver.com','2018-08-19','16:36:04','������ �ð� ','������ �ð� �Ƕ� - ������ ���� ���̵��� ������ ��(��) ���� �̾߱� ���������̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (212,'gildong@naver.com','2018-10-28','09:57:53','������ ����','[������ ���̴� �׸�å 7]��ö�� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (213,'gildong@naver.com','2017-12-24','09:58:49','��Ʋ������ ','[��Ʋ������ �׸�å 1]100���� ����� ��Ʋ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (214,'gildong@naver.com','2018-12-30','12:32:21','��&�� ��ȭ','[��&�� ��ȭå 10]ä���б��� ��¥ ģ���� �;ؾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (215,'gildong@naver.com','2017-12-08','09:06:39','���� Ǫ�� ','[���� Ǫ�� ����]���ڸ� �⸣�� ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (216,'gildong@naver.com','2018-04-07','16:12:42','���� Ǫ�� ','[���� Ǫ�� ����]�츮���� ���� ��ȭ�� ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (217,'gildong@naver.com','2018-05-24','09:31:53','�������̵� ','[�������̵� 119]Ȳ�� ���� ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (219,'gildong@naver.com','2018-02-09','15:03:05','�������̵�','[�������̵�]��Ȧ�屺 �ѻ� 1 ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (220,'gildong@naver.com','2018-02-09','16:21:41','�������̵�','[�������̵�]��Ȧ�屺 �ѻ� 2 ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (222,'gildong@naver.com','2018-01-10','13:46:30','���е���û��','[���е���û�ҳ� 12]���������� �� ���е���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (223,'gildong@naver.com','2017-12-06','15:17:00','���̺�','���̺� ���е���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (224,'gildong@naver.com','2018-10-04','11:23:39','û�ҳ���ۼ�','[û�ҳ���ۼ� 26]���� �� Ƽ�� �̷���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (226,'gildong@naver.com','2018-04-07','17:45:06','�̼��� ����','[�̼��� ���г� ������ 3]��û�� �δ� ���� �յ��� �̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (227,'gildong@naver.com','2017-12-21','12:07:13','���ټ� �λ�','���ټ� �λ� �ٴ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (229,'gildong@naver.com','2018-09-29','14:27:28','�����ٶ� 2','[�����ٶ� 28]����ü ���ΰ� ����? �ٶ��Ǿ��̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (230,'gildong@naver.com','2018-05-24','17:02:37','�����ٶ� 3','[�����ٶ� 30]��Ž�� ���帮 �ٶ��Ǿ��̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (231,'gildong@naver.com','2018-02-18','09:58:56','�ݿø� 29','[�ݿø� 29]���� ��� ���� ���� �Ǹ��� �ִ� �ٶ��Ǿ��̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (232,'gildong@naver.com','2018-05-04','11:53:21','�˸��� �׸�','[�˸��� �׸�å 27]�ູ�� �б� �ٶ��Ǿ��̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (234,'gildong@naver.com','2018-06-14','10:33:00','���̽��丮��','[���̽��丮�� 12]�������� ������! �����̷�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (235,'gildong@naver.com','2018-10-24','10:10:38','���̽��丮��','[���̽��丮�� 13]������ ���� Ư���� �� �����̷�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (237,'gildong@naver.com','2018-03-25','14:53:29','�޸��� 1','[�޸��� 1]�ǽ��� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (238,'gildong@naver.com','2018-09-14','16:44:29','���� ��ȭ ','[���� ��ȭ ���� 2]ġ�� Ž������ �޷����� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (239,'gildong@naver.com','2018-02-15','10:53:00','�Ƹ��ٿ� û','[�Ƹ��ٿ� û�ҳ� 5]�� ������ �ʰڴ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (241,'gildong@naver.com','2018-10-17','13:50:44','���� ���','[���� ��� 25]���� �̿� �� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (242,'gildong@naver.com','2018-05-10','16:46:00','��� �ִ� ','[��� �ִ� ���� 28]�Ǵ� ������ - ������ ��� �Ǿ ��Ӵϵ��� �̾߱�� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (243,'gildong@naver.com','2018-05-10','16:50:23','��� �ִ� ','[��� �ִ� ���� 29]�񷹲�  ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (245,'gildong@naver.com','2018-02-23','17:02:37','���湮���','[���湮��]�Ŷ����� ���� �Ŷ����� �뷡 - �̾߱�� �Բ� ������ �Ⱑ�� ����  �������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (246,'gildong@naver.com','2018-03-19','15:44:01','û�ҳ⹮�� ','[û�ҳ⹮�� ����â�� 22 ]�αٵα� ù��� ����â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (248,'gildong@naver.com','2018-07-29','09:41:49','������ ����','[������ ���м� 16]�׸��� ���̵� 6. �α� ������ �� ���̵� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (249,'gildong@naver.com','2018-10-24','16:09:12','������ ����','[������ ���м� 18]�׸��� ���̵� 7. ������ ã�� ���̵� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (250,'gildong@naver.com','2018-02-02','11:52:32','������ ����','[������ ���м�]���� ���ݸ� - ���� �� ���̵��� �ູ�� ���Ѿ� ������? ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (251,'gildong@naver.com','2018-09-08','13:11:38','������ ����','[������ ���м�]�� ���� ���� - �޼��� ���� �� �ƴϾ�, ���� Ư���� �������� ���� �� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (253,'gildong@naver.com','2018-08-10','12:19:49','�츮���� ��','[�츮���� �׸�å 10]��꿡 ���� ������ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (254,'gildong@naver.com','2018-06-29','15:18:23','�츮���� ��','[�츮���� �׸�å 9]������Ʊ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (256,'gildong@naver.com','2018-08-30','15:22:22','���� �ǰ� ','���� �ǰ� �;� �ϱذ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (257,'gildong@naver.com','2018-08-18','16:18:41','���丮 �ݷ�','[���丮 �ݷ��� 11]��¦��¦ �߾������� �Ϸε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (259,'gildong@naver.com','2018-06-07','15:03:36','�ٴٷ� �� ','[�ٴٷ� �� ������ 1]���� ��ĵ�� �ϸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (260,'gildong@naver.com','2018-03-15','12:59:53','�ϸ��� ��ġ','[�ϸ��� ��ġ ��ȭ 3]������ ȭ�� �ϸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (261,'gildong@naver.com','2018-11-29','13:46:48','���� Ư���� ','���� Ư���� ��� �Ϲ�ũ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (263,'gildong@naver.com','2018-03-29','16:54:29','�Ϻ�ٹ�ȭ ','[�Ϻ�ٹ�ȭ 2]�ƶ��� ����Ʈ �Ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (264,'gildong@naver.com','2018-07-29','12:30:42','�ڿ��� ģ����','�ڿ��� ģ���Ǵ� �þ��� - �ڿ��� ������ �ִ� �״�� ���� �����鼭 �÷� ǥ���ϴ� 16���� ��� �ϼ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (265,'gildong@naver.com','2018-03-19','14:19:25','������ ��ġ','[������ ��ġ �б� 4]������� ���� Ư���� ģ�� �Ͻ��丮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (266,'gildong@naver.com','2018-06-30','09:16:10','�츮 ���� ','[�츮 ���� �μ����� �ø��� 5]������ ���� �ұ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (267,'gildong@naver.com','2018-03-04','10:46:41','�� å�бⰡ','[�� å�бⰡ ����-2�ܰ�(�ʵ�1,2�г�) 47]ĸ�� ������ �������� �౹ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (268,'gildong@naver.com','2018-04-29','12:53:05','����ȼ� 6','[����ȼ� 61]�� ���� ���� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (269,'gildong@naver.com','2018-06-10','17:12:08','����ȼ� 6','[����ȼ� 63]��Ž���� �Ƶ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (270,'gildong@naver.com','2018-02-25','17:58:43','���� ����','[���� ���ۼ� 19]���� �� �ҳ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (271,'gildong@naver.com','2018-02-07','17:32:57','������ ��','[������ �׸���ȭ 219]������ ������ �ҿ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (272,'gildong@naver.com','2017-11-13','13:27:09','�ϰ��ϻ� 7','[�ϰ��ϻ� 75]�� �ְ� ���� ���� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (273,'gildong@naver.com','2018-01-28','09:18:43','�ϰ��ϻ� 7','[�ϰ��ϻ� 77]���ϴ� � �� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (274,'gildong@naver.com','2018-07-19','14:59:37','�ϰ��ϻ� 8','[�ϰ��ϻ� 80]�Ͳ��� ������, ����� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (275,'gildong@naver.com','2018-02-13','11:13:58','���ð��','���ð�� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (276,'gildong@naver.com','2018-05-30','11:41:14','����� 13','[����� 1318���� 77]�����ش� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (277,'gildong@naver.com','2018-09-02','15:11:17','����� 13','[����� 1318���� 79]���� ���� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (278,'gildong@naver.com','2018-12-29','17:58:50','����� 13','[����� 1318���� 81]���� ���� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (279,'gildong@naver.com','2018-05-11','15:00:54','�ʵ��л��� ','[�ʵ��л��� ���� �׸�å 26]�޲ٴ� ¡�˵� - ȭ�� �ڼ��� �̾߱� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (280,'gildong@naver.com','2018-11-08','10:59:50','�ʵ��л��� ','[�ʵ��л��� ���� �׸�å 27]���ī�� �ϱ� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (281,'gildong@naver.com','2018-09-29','15:37:15','��ȭ�׸�å ','[��ȭ�׸�å 5]�� ��Ҹ��� �鸮����  ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (282,'gildong@naver.com','2018-07-28','16:24:40','���ĸ� ����','[���ĸ� �������ǽ� 1]��Ʈ�� ��� ��Ʈ ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (283,'gildong@naver.com','2018-11-08','09:05:37','����� �� ��','����� �� �׶��þ� ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (284,'gildong@naver.com','2018-02-28','11:19:28','���ϼ��蹮��','[���ϼ��蹮�� 1]�Ƹ��� - ���� ��� �����ΰ��� �Ǿ���? ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (285,'gildong@naver.com','2018-05-04','14:28:58','�츲 3.4','[�츲 3.4�г� â�۵�ȭ 4]�� �ʹ� �߳���! �츲���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (286,'gildong@naver.com','2018-04-10','16:52:12','��ũ������ ','[��ũ������ �̽��͸� �����1]����� �̶� �Ｚ���ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (287,'gildong@naver.com','2018-05-10','10:11:45','��ũ������ ','[��ũ������ �̽��͸� �����2]���ŧ���� �ް� �Ｚ���ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (288,'gildong@naver.com','2018-12-23','17:11:52','������ �׸�','[������ �׸�å 4]ũ�������� ������ �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (289,'gildong@naver.com','2018-09-16','15:39:14','������� û','[������� û�ҳ⹮�� 1]������ �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (291,'gildong@naver.com','2018-11-28','15:29:32','���;�̹�','[���;�̹��� 31]���� ã�� ���̵� - �ʵ��л����� ���� ���� ���ݿ÷� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (292,'gildong@naver.com','2018-03-11','13:48:56','����׸���ȭ','[����׸���ȭ 8]ġ� ã�Ƽ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (294,'gildong@naver.com','2018-05-25','15:24:08','���г� �','[���г� ��̸� ���� �μ���ȭ 16 ����]���� �޸� ������ �Ҵ��ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (295,'gildong@naver.com','2018-10-24','11:12:29','������ ����','[������ ���� 1]�ξ��� ����Ʈ ��Ǭ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (296,'gildong@naver.com','2018-07-04','09:40:36','�ð� û�ҳ�','[�ð� û�ҳ� ���� 49]�ʸ� ���� 50���� �ð���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (298,'gildong@naver.com','2018-04-14','09:47:33','�ð��ִϾ� ','[�ð��ִϾ� ���� 2�ܰ� 70]���� ���� ��Ÿ ����� �ð��ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (299,'gildong@naver.com','2018-11-01','11:36:26','������ ���� ','������ ���� �ε�� �Ʒ��ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (301,'bangwon@naver.com','2018-04-08','11:07:34','�ͻ����� ��','[�ͻ����� �Ͻ� 47]���� ���� ������ ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (302,'bangwon@naver.com','2018-01-23','10:47:27','���̾غ� ��','[���̾غ� ���г��� 1]������ ��Ź�� ���̾غ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (303,'bangwon@naver.com','2018-05-10','17:11:29','���̾غ� â','[���̾غ� â�۵�ȭ 33]�츮 ���� ���� �� ���̾غ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (305,'bangwon@naver.com','2018-08-01','15:29:40','ī����� ','[ī����� 31]ù��� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (306,'bangwon@naver.com','2018-03-16','14:59:10','������ ���','������ ��� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (308,'bangwon@naver.com','2018-02-14','15:48:01','����̵�� ','[����̵�� ���г� ���� 1]��ȩ �� ���� - �Ųٷ� ���� �ð� ����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (309,'bangwon@naver.com','2018-07-19','15:44:53','�����޸� ��','[�����޸� �׸�å�� 10]�����̾� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (311,'bangwon@naver.com','2018-04-29','12:41:21','�츮 �� ����','�츮 �� ������ �߸԰� �߻�� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (312,'bangwon@naver.com','2017-12-09','09:43:24','�츮���� û','[�츮���� û�ҳ⹮�� 8]���������� ȣ���Ǳ��� ��¥ ����������� �츮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (314,'bangwon@naver.com','2018-04-11','15:49:23','û�ҳ��� ��','[û�ҳ��� ���� �Ҽ��ɸ�Ŭ�� �׸�1. �ھ���ü��]��� �ִ� ��? �츮�б�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (315,'bangwon@naver.com','2018-04-11','11:50:52','û�ҳ��� ��','[û�ҳ��� ���� �Ҽ��ɸ�Ŭ�� �׸�2. ���� ���]��, ������ �׳� �츮�б�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (316,'bangwon@naver.com','2018-08-02','12:46:48','û�ҳ��� ��','[û�ҳ��� ���� �Ҽ��ɸ�Ŭ�� �׸�3. ����� ����]��¼�� ���� �յ� �츮�б�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (318,'bangwon@naver.com','2018-05-31','13:45:20','���� å����','[���� å���� 33]�� �̸��� ������ ������ �� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (319,'bangwon@naver.com','2018-02-07','13:43:04','������ �����','������ ����� ���� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (321,'bangwon@naver.com','2018-05-13','11:06:47','�¹��� �ȳ� ','�¹��� �ȳ� - 60�� ���� �߰��� �ȳ� ����ũ�� ���� ���ο� �̾߱� �̵�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (322,'bangwon@naver.com','2018-11-14','17:44:12','���ͺ� 23','[���ͺ� 23]�������� ��� �ε��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (324,'bangwon@naver.com','2018-01-04','12:19:52','���������� ','[���������� û�ҳ⹮�� 10]������ �̸����� ����������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (325,'bangwon@naver.com','2018-02-16','14:50:55','���������� ','[���������� û�ҳ⹮�� 12]���̾�Ʈ �б� ����������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (326,'bangwon@naver.com','2018-04-19','10:34:20','���������� ','[���������� û�ҳ⹮�� 15]�ð��� �Ĵ� ���� ����������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (328,'bangwon@naver.com','2018-07-04','15:58:48','������ û��','[������ û�ҳ� 2]�ο�� ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (329,'bangwon@naver.com','2018-06-14','10:58:55','100km','100km ��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (330,'bangwon@naver.com','2018-05-19','15:43:24','������ �츮','[������ �츮 ���� �׸�å �ø��� 2]����ġ�� �念(Ȳ�����)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (331,'bangwon@naver.com','2018-08-25','14:36:17','�������� �� ','�������� �� �� ������ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (333,'bangwon@naver.com','2018-10-11','15:07:13','�ִϾ�迵��','[�ִϾ�迵�� û�ҳ� ���� 1]������ �ҳ� �ִϾ�迵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (334,'bangwon@naver.com','2018-08-29','17:23:58','���г��� ��','[���г��� ���� �ѻµ����� 23]���ұ�? ����? �ִϾ�迵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (335,'bangwon@naver.com','2018-01-13','17:01:12','����� ���� ','����� ���� - ��������, �̻� ���ı� �ִϾ�Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (337,'bangwon@naver.com','2018-11-29','09:18:43','������ �ڶ�','[������ �ڶ�� �׸�å 3]�������� ����ϴ� ���� ��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (338,'bangwon@naver.com','2018-04-08','13:17:35','�ų��� å��','[�ų��� å�б� 33]���� ���� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (1,'gildong@naver.com','2018-02-28','09:40:51','������, ����','������, �������� ��� ������ ���� �˵ռ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (2,'gildong@naver.com','2018-05-23','16:02:45','���� ������ ','���� ������ ���� ���� �Ҹ��� ���� �ø�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (3,'gildong@naver.com','2018-04-28','13:39:26','õ�� �̾߱��','õ�� �̾߱�� �ξ˵� �� �ٻ��ȹ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (4,'gildong@naver.com','2018-05-24','12:18:03','�� � ���','�� � ���� ������ - ��ȭ�� ������ �� ���� �ι��� �ܺ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (5,'gildong@naver.com','2018-11-03','13:53:58','������ ��å��','������ ��å�� - �� å���� ���డ�� �Բ� �Ȱ� �����, å�� �� �̾߱� �ݺ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (6,'gildong@naver.com','2018-07-24','10:23:01','���� ��� ��','���� ��� ���� ���� - ���డ �����ư� ����� �۽����� e���Ϸ� ���� ��, �ܼ��ϼ��� ���ع���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (7,'gildong@naver.com','2018-02-18','13:07:10','����ִ� ����','����ִ� ������ - å�� ���θ� Ž�� �ѱ��� ���� 23�� ���ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (8,'gildong@naver.com','2018-06-29','14:27:41','���þ����� ��','���þ����� ���� �ð����� �۴�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (9,'gildong@naver.com','2018-05-21','13:53:38','�� ��ȥ�� ��','�� ��ȥ�� �ڶ�� �� ���谡 �����Ѵ� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (10,'gildong@naver.com','2018-11-19','13:30:25','�� �θ� ��','�� �θ� ���� ���� �ʹ� �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (11,'gildong@naver.com','2018-08-24','10:08:59','�츮���� 10','�츮���� 100�� 100�� �ٻ�Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (12,'gildong@naver.com','2018-03-30','16:37:01','���� ���ѹα�','���� ���ѹα��� �ູ�� ����� ���丮â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (13,'gildong@naver.com','2017-12-30','14:47:05','�θ� ����','�θ� ���� ���̴� ä������ - ������ ���󿡼� ���̸� �ٸ��� Ű��� ���� ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (14,'gildong@naver.com','2018-02-28','10:00:04','�����帲 ��','[�����帲 �����б� �̾߱� 4]�������б� �����б� ������ �����帲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (15,'gildong@naver.com','2018-08-29','12:20:12','�����帲 ��','[�����帲 �����б� �̾߱� 5]�б� �ٲٱ� ���� 12�� �����帲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (16,'gildong@naver.com','2018-06-07','09:58:14','EBS�� ����','EBS�� ������ �ְ��� ���� ���е���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (17,'gildong@naver.com','2018-09-07','11:24:31','���縦 ���߰�','���縦 ���߰� �϶� �ε鷹',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (18,'gildong@naver.com','2018-05-09','16:09:51','�ٱ��ٶ� 6','[�ٱ��ٶ� 6]���� �Ƿ��� �׷���? �ٶ��Ǿ��̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (19,'gildong@naver.com','2018-08-24','16:06:56','��� �ִ� ','[��� �ִ� ���� 30]���� �ƺ��� �Բ� �� �ϱ� - �ּ��� ������ �� �кθ� ����ϱ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (20,'gildong@naver.com','2018-05-24','17:30:12','�츲�� ����','[�츲�� ���������� 3]���̵鿡�� ������ ����� �츲��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (21,'gildong@naver.com','2018-06-19','09:19:47','�츲�� ����','[�츲�� ���������� 4]���￩��, �ð� ������ �Ǵ� �츲��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (22,'gildong@naver.com','2018-03-08','14:53:43','��ȭ�� ����','[��ȭ�� ������Ʈ 1]�б����� ��� ����� ���°�? �츲��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (23,'gildong@naver.com','2018-03-22','16:13:39','��ȭ�� ����','[��ȭ�� ������Ʈ 2]�б����� ����! - ������.����.����� ����ü �츲��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (24,'gildong@naver.com','2018-09-29','11:05:06','���̵��� ����','���̵��� ���̰� ���̴� �ҳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (25,'gildong@naver.com','2018-10-04','14:00:36','����ģ�ٴ� ��','����ģ�ٴ� �� - ������ �츮�� ���� �־��� ��� ����鿡�� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (27,'gildong@naver.com','2019-01-26','11:43:53','�츮�� �Ͽ���','�츮�� �Ͽ��� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (28,'gildong@naver.com','2018-12-09','14:34:19','���� ���� -','���� ���� - �츮 �Ƶ� ���� ������ ������ ������Ʈ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (29,'gildong@naver.com','2018-12-23','10:40:18','������ ��� ','������ ��� �������� ���̵� - ���忡�� �� �������� �������Ʈ ��ȣ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (30,'gildong@naver.com','2018-08-08','14:24:14','�Ƹ��ٿ� ����','�Ƹ��ٿ� �������� - �ھ����߰��� ������ �������� Ű���ִ� �������� �̾߱� ����å����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (32,'gildong@naver.com','2018-08-29','12:58:57','���ѹα� �ʵ�','���ѹα� �ʵ��л� - �ູ�ϰ� ��� ���� ����� ���� ���̵� û����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (33,'gildong@naver.com','2018-06-24','15:40:45','����! ������','����! �����б� - ��� �̸� ���� ���ձ����� ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (35,'gildong@naver.com','2018-09-14','12:09:32','�����̶� ����','�����̶� �����ΰ� - ���.���.����.������ ������ ���� ���� �Ѿ� ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (36,'gildong@naver.com','2018-08-24','13:45:46','����� ����ü','����� ����ü - �տ��� ������ ���ϴ� ����� ���� ���� �س�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (37,'gildong@naver.com','2019-01-23','14:50:51','�ʴ� �ʰ� ��','�ʴ� �ʰ� �Ǵ� ���̴� - �츮 ������ ������ ��� ''�������� ���汳��'' ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (39,'gildong@naver.com','2018-07-19','16:46:37','�ʵ� ������ ','�ʵ� ������ ��� �� �ް�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (40,'gildong@naver.com','2018-10-21','16:05:59','����Ǫ��å ','[����Ǫ��å ������ 8]�㺴���� ��ſ� �۾��� ���� 3 : ������ å���� ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (41,'gildong@naver.com','2018-10-28','13:56:54','����Ǫ��å ','[����Ǫ��å ������ 9]å���� �޲ٴ� ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (43,'gildong@naver.com','2018-05-27','14:28:20','������ ������','������ ������ å�б� �츮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (44,'gildong@naver.com','2018-08-19','15:12:40','�Ϲ� ��������','�Ϲ� �������� ������ - �����Ե��� ���� �ִ� ������ ���� �츮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (45,'gildong@naver.com','2018-04-14','17:49:22','�Ϲ� �б�����','�Ϲ� �б��������� ���� - �����Ե��� ���� �ִ� ������ ���� �츮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (47,'gildong@naver.com','2019-01-24','16:09:40','����ǥ ������','����ǥ ���������� - �Ϸ� ������ �ູ! ���������� �޲ٴ� ���� �ִϾ�迵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (48,'gildong@naver.com','2018-10-24','15:33:47','���ϸ��� �Ͼ�','���ϸ��� �Ͼ�� ������ ���� - ��� �������� ���� The Daily 5 �Ķ��ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (50,'gildong@naver.com','2018-03-04','12:57:01','�������� ����','�������� ������ �׸�å ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (51,'gildong@naver.com','2018-03-04','13:05:31','�����԰� �Բ�','�����԰� �Բ��ϴ� �츮 �� ����ġ�� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (52,'gildong@naver.com','2018-07-04','15:59:29','�Ͱ��� �ø�','[�Ͱ��� �ø��� 4]17�� : ������ ������ �ƹ��� �𸣴� ���� �ѱ����Ǹ����ÿ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (53,'gildong@naver.com','2018-04-08','16:52:37','����� ���� ','����� ���� 1. ����Ʈ�� ���� ���� �س�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (55,'gildong@naver.com','2018-01-18','10:16:58','��ħ���� ��','[��ħ���� �Ѽ� 3]������ �ٲ� ��ħ���� 10�� �ູ�Ѿ�ħ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (56,'gildong@naver.com','2019-02-24','15:46:59','��ħ���� ��','[��ħ���� �Ѽ� 5]��ħ���� �ڵ�� - �̱� ��ʷ� �� 8���� ���� ��� �ູ�Ѿ�ħ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (58,'gildong@naver.com','2018-10-29','14:36:35','����� ����','[����� ������ ü�� �н� 2]ȭ������� - ��� �������� ��Ż���� ȭ�� Ư�� ü��� ���е��ƺϽ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (59,'gildong@naver.com','2018-02-18','15:41:58','����ϸ� ����','����ϸ� ���̴� ���� - �ƹ����� �Ƶ��� �Բ� ���� �׸� ���� ���� ��� 52�� �ø�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (60,'gildong@naver.com','2018-02-23','12:52:32','������ ����ī','������ ����ī�� 2 - ��� ������ 3�ι�, ����ī�並 �����ϴ� �ø�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (62,'gildong@naver.com','2018-11-14','14:15:55','���忡�� ��','[���忡�� ���� ��� ���� ���� 1]�츮 ���� ����� �ޱ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (63,'gildong@naver.com','2018-06-20','14:23:25','������ ���ߴ�','������ ���ߴ� �� - ������ �����ϴ� ���ؿ� ��ó ��� �޲ٴ»����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (64,'gildong@naver.com','2018-05-05','11:27:52','��ż, ������','��ż, ������ �Ǵ� - ���� ���� �ߵ��� ����쵹 ���� ��ť���͸� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (65,'gildong@naver.com','2018-08-29','16:51:06','���� ���, ','���� ���, ��� ������ ������ �����ϴ� �ʸ��б�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (66,'gildong@naver.com','2018-03-29','17:25:41','������� â','[������� â�۱׸�å 15 ȯ���̾߱�(��)]���� �ϴ�, ���� �׸� �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (67,'gildong@naver.com','2019-01-19','11:51:10','������ ��','[������ �׸�å 10]������ ���� ����ؿ� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (68,'gildong@naver.com','2018-03-14','10:28:26','������ �� ','[������ �� ģ�� 2]�ű��� �������� ���� ���°� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (69,'gildong@naver.com','2018-04-14','17:11:36','������ �� ','[������ �� ģ�� 3]��-���� ������� �ϴ� �� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (70,'gildong@naver.com','2018-11-14','16:49:40','������ �� ','[������ �� ģ�� 4]���� ���°�, �Ųٷ� ��ư��� ������ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (71,'gildong@naver.com','2018-06-24','11:45:25','����� ����','[����� ���������� 5]������ �ٲ� ���� - ������ ������� ���ϴ� �������� ����� �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (72,'gildong@naver.com','2018-08-15','13:32:28','�ٻ����ı׸�','[�ٻ����ı׸�å 2]���� ù �Ĺ�å �ٻ��ȹ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (73,'gildong@naver.com','2018-03-30','15:38:34','�ڿ��� ģ��','[�ڿ��� ģ���� 1]�츮 ���� �ڿ��� ģ���� �ٻ��ȹ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (74,'gildong@naver.com','2018-07-12','16:35:21','�ڿ��� ģ��','[�ڿ��� ģ���� 2]�������� �ڿ��� ģ���� �ٻ��ȹ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (75,'gildong@naver.com','2018-05-31','10:46:39','������ ���� ','������ ���� - ���̾߱Ⱑ ǰ�� ���� ���� �ڿ���Ģ �ٻ��ȹ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (76,'gildong@naver.com','2019-01-19','15:23:53','�ʴ�, ���� ','�ʴ�, ���� ���ָ� ����ؾ� �ϴ� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (77,'gildong@naver.com','2018-10-31','09:24:04','������ ������','������ �������� ������ : ���� ���� - ���� ���� �ձ��� ����� Ǯ��� ���ε����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (78,'gildong@naver.com','2018-04-01','12:25:57','��Ȱ���� �߰�','��Ȱ���� �߰��� ��� �ִ� ���� 55 ���ε����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (79,'gildong@naver.com','2018-04-04','09:41:14','�⵿ ���� ','[�⵿ ���� ������ 3](����� �ڻ簡 ����ִ�)�ٴ� �������� ��� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (80,'gildong@naver.com','2018-12-19','11:46:59','�⵿ ���� ','[�⵿ ���� ������ 5]�ڿ��� ���� ǰ�� ��� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (81,'gildong@naver.com','2018-09-19','15:43:12','���нĴ� 1','���нĴ� 1 ��ռ���������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (82,'gildong@naver.com','2018-02-07','09:51:32','���빮ȭ���','[���빮ȭ���� 12](�ء��ޡ��� �ϴ��� ���̸� ����) �츮 õ���� �̾߱� ���е���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (83,'gildong@naver.com','2017-11-25','15:03:24','����ְ� ��','(����ְ� �ȶ��� ������ �����)�̷� ���̵�� 80 �̷���â',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (84,'gildong@naver.com','2018-07-26','17:19:00','Ȳ��ó�� - ','Ȳ��ó�� - ���ؿ� ��� Ȳ������� �츮���� �������� �� �̷���â',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (85,'gildong@naver.com','2018-08-19','12:52:09','MBC â��','(MBC â�� 50�ֳ� Ư�� ��ť���͸� ������ ����)Ȳ����� ���̿� ���� �����̷�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (86,'gildong@naver.com','2018-05-09','10:42:47','�����̷� ��','[�����̷� ���� �׸�å 11]���δ�! �츮 �� - �丮���� ���� ���� ��ü �÷� �׸�å �����̷�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (87,'gildong@naver.com','2018-06-10','12:52:49','�����̳� å','[�����̳� å�� 13]ȣ�� ���ܸ��� �Թ翡 ���� - �츮�� ��� �Դ� ������ ���� �۹��� �ѻ��� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (88,'gildong@naver.com','2018-02-08','11:05:05','����ȭ�� ��','[����ȭ�� �׸� �츮 �ٴ幰���2]�սǵս� ���عٴ� ����� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (89,'gildong@naver.com','2018-02-08','09:59:58','����ȭ�� ��','[����ȭ�� �׸� �츮 �ٴ幰���3]���ǳ��� ���عٴ� ����� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (91,'gildong@naver.com','2018-02-08','15:11:15','����ȭ�� ��','[����ȭ�� �׸� �츮 �ٴ幰���5]�ȵ��ȵ� �ٴ幰��� �̾߱� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (92,'gildong@naver.com','2018-08-01','14:02:16','�츮 �� ��','[�츮 �� ���� ��ȭ 3]��� ������ ������� - DVD 1�� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (93,'gildong@naver.com','2018-05-13','10:57:15','ůů�̰� ����','ůů�̰� ����! 2 - ��⸦ �����ϴ� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (95,'gildong@naver.com','2018-04-19','09:14:29','���� �Ƹ��ٿ�','���� �Ƹ��ٿ� �ٴ� - �ٴ��� ����� ���� ���� �ؾ����� �Ǻ�� �� �̾߱� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (96,'gildong@naver.com','2018-03-05','10:41:08','�ϱذ�The','�ϱذ�(The World of the Polar Bear ) �ϱذ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (97,'gildong@naver.com','2018-06-19','14:52:03','���м����Ե� ','���м����Ե� �ñ��� 101���� �������� ���� �ϸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (99,'gildong@naver.com','2018-10-07','11:14:05','���齣 �׸�','[���齣 �׸�å 2]ȣ���� ����° ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (100,'gildong@naver.com','2018-08-10','13:59:40','���̾� ��','[���̾� �ϰ��ϻ� 28]������ �������� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (101,'gildong@naver.com','2018-03-16','16:28:40','�ϸ��϶��� ��','�ϸ��϶��� ���� 24�� - û�ҳ��� �˾ƾ� �� ���� ������ 24���� �̽� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (103,'gildong@naver.com','2017-12-18','11:29:26','���� �˾ƿ�','[���� �˾ƿ� 2 ��ſ� ����]���� �༺ ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (104,'gildong@naver.com','2017-12-18','13:49:41','���� �˾ƿ�','[���� �˾ƿ� 3 ��ſ� ����]���ذ� �ϱ� ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (105,'gildong@naver.com','2019-01-11','14:26:20','���� ���� -','���� ���� - ���ĺ�ȭ�� ���� �޴� ���� �̾߱� ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (107,'gildong@naver.com','2018-03-31','16:02:48','�ڿ��� �Բ�','[�ڿ��� �Բ� �ϴ� �츲 ���� �н� 4]�츮 ���ǿ� ���� �ڶ��  �츲���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (108,'gildong@naver.com','2018-08-23','14:45:47','������ �ܲ� ','������ �ܲ� ��Ų ���� �츲Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (110,'gildong@naver.com','2018-03-07','09:22:21','��̸� ��','[��̸� ���� ���� ��ȭ �ø���]������ ��� ���� �ҳ��ѱ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (111,'gildong@naver.com','2018-09-11','11:10:05','�䷼���� ���','�䷼���� ����ִ� ������ - ���� ��׽�Ʈ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (112,'gildong@naver.com','2018-06-08','13:36:23','���̼��� ��','[���̼��� �������� 11]�츮�б� ȯ�� ��Ŵ�� - ������ ��Ű�� ��Ȱ ��õ ��ȭ ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (113,'gildong@naver.com','2018-06-24','11:46:36','���̼��� ��','[���̼��� �������� 12]�츮�� �Բ� ��ư��� ���� ���� �̾߱� ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (115,'gildong@naver.com','2018-01-28','14:45:37','ȯ���� ��Ű��','ȯ���� ��Ű�� ������ - ������ ��Ų ������� �̾߱� ���̾غ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (116,'gildong@naver.com','2018-03-19','12:29:38','�˽��޽� ����','�˽��޽� ���� ��ī���� - ��Ȱ �� �������� �����̾߱� �˶��Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (117,'gildong@naver.com','2018-06-24','13:02:55','������ ������','������ ������ �����帮�ڽ��ϴ� - �������� �д� ���� ���� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (119,'gildong@naver.com','2018-05-09','09:53:03','��̰� ��','[��̰� �� �˾ƾ� �� ����.����.ȯ�� �̾߱� �ø��� 16]���� ���� �� �� ���� ���� ��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (120,'gildong@naver.com','2018-07-14','11:00:37','����� ��','[����� ���е�ȭ - �ʵ� 1.2�г� ���]���� ������ ������Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (122,'gildong@naver.com','2018-03-31','14:53:06','���µ��� ','[���µ��� �׸�å 1]���� ������ ���� ���ٰ��? ���µ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (123,'gildong@naver.com','2018-07-29','10:34:08','�ɼ� - ����','�ɼ� - ������ �̰ܳ� ������ �� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (124,'gildong@naver.com','2018-12-09','09:22:54','���볯�� ����','���볯�� ������ - �ϻ��� ��ſ����� ���� �̾߱� �̵̹��׷�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (125,'gildong@naver.com','2018-04-14','13:13:01','����ϴüҰ�','(����ϴüҰ� ��ġ�� ������ ����)���� �ҳ��� ����� �츮 �� �̾߱� ����ϴü�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (127,'gildong@naver.com','2017-12-09','15:54:23','�̷��� �޲�','[�̷��� �޲ٴ� �ؾ繮�� 18]�ڿ��� �ߴ���, �ϱ� - ���� �ٴٰ� ������ �� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (128,'gildong@naver.com','2018-01-12','15:25:05','�̷��� �޲�','[�̷��� �޲ٴ� �ؾ繮�� 20]�ٴ� �� �ΰ��� �����Ǿ� - ����� ����� �̷��� �ؾ絵�� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (129,'gildong@naver.com','2018-08-03','13:18:19','�̷��� �޲�','[�̷��� �޲ٴ� �ؾ繮�� 21]��� ��𿡼� �ڳ���? - �ױ�, �׸��� �ױ��� ��Ű�� ������ ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (130,'gildong@naver.com','2018-10-17','13:47:17','������ ���� ','������ ���� ���� ��庥ó - û�ҳ��� ���� ���� ������ �̾߱� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (131,'gildong@naver.com','2018-03-14','09:58:08','�¾�� ���� ','�¾�� ���� �ȳ��� - ������ ��Ͽ� �Բ� ������ �ų��� ���ֿ��� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (132,'gildong@naver.com','2018-03-14','15:33:21','�� �� �ǳ�','[�� �� �ǳ���? �ø��� 6]�� ���� ������� �� �ǳ���? �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (133,'gildong@naver.com','2018-03-24','11:16:38','�� �� �ǳ�','[�� �� �ǳ���? �ø��� 7]�� ź�ҹ��ڱ��� �׶������� �� �ǳ���? �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (134,'gildong@naver.com','2018-08-05','10:45:31','���а� ģ��','[���а� ģ������ å 11]���̵�, �������� ������ ���� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (135,'gildong@naver.com','2018-03-19','13:26:21','â�� ȣ���','[â�� ȣ��� �׸�å 3]°��°�� �ð� �ڹ��� - �ű��ϰ� ����ִ� �ð��� �ð� �̾߱� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (136,'gildong@naver.com','2018-05-27','16:02:25','�����Ǹ�����','[�����Ǹ����� �ø��� 1]������ ������ �ູ�ұ�? - �� ���� �������� 1000�� �̻� Ž���� ���� ��� å������Ҿ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (137,'gildong@naver.com','2018-10-24','09:42:49','������� ','[������� 18]������, �츮 �� �� ����� å�ӹ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (138,'gildong@naver.com','2018-02-27','15:10:47','ö���Ϳ��� ','[ö���Ϳ��� �׸�å 4]�ܿﴫ�� ����ִ� �б� �� �̾߱� - �ܿ�ö �б����� ���� ������ �ѻ��̿� ���� ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (139,'gildong@naver.com','2018-10-09','09:58:07','ö���Ϳ��� ','[ö���Ϳ��� �׸�å 5]�츮 �б� �Թ� - �ʵ��б����� ���� �ɴ� ä�� 9���� ��� 3�� ���ٱ� ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (140,'gildong@naver.com','2018-04-14','17:01:09','�ʺ����� 1','[�ʺ����� 15]�츮 �б� �㿡�� ������ ���? - �б����� ��� �ִ� Ǯ.��.���� �̾߱� û����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (141,'gildong@naver.com','2018-04-08','16:59:15','�ʺ����� 1','[�ʺ����� 16]���ְ� ���Է� �Ծ�� - �����̺� �������� ����ִ� ����ְ� ���� ������ ���� �̾߱� û����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (142,'gildong@naver.com','2018-10-11','10:22:46','����, 10��','����, 10���� �ϴ��� ���� - û�ҳ��� ���� �Ƹ��ٿ� ���� ���� û����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (143,'gildong@naver.com','2018-06-27','13:11:12','������ ���','������ ��� �ڹ����� ������? Ű�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (144,'gildong@naver.com','2017-11-15','14:04:27','���� �޲ٴ�','[���� �޲ٴ� ��� ������ 2]���θ�, ������ ���� �ּ��� Ž',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (145,'gildong@naver.com','2018-05-11','16:32:18','���� ������','[���� �������� 20]��̸� ���� ������ ���� ���� ���� - ����.��ȭ.�ι�.���� ������ ��� ��ǥ ���๰ �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (146,'gildong@naver.com','2018-09-23','11:33:08','���δ� �� ','[���δ� �� ��? 4]���� ���� ���δ� �� ��? ���Ľ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (147,'gildong@naver.com','2018-05-14','15:58:10','���� ������','(���� �����Ե��� ��� ��ʷ� �����ϴ�)�ʵ����� ����� Ǫ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (148,'gildong@naver.com','2018-11-29','09:30:50','�ޱ׸����� ��','�ޱ׸����� �����̽� - �ޱ׸������ �Բ� ������ ���ֿ��� Ǫ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (149,'gildong@naver.com','2018-10-19','13:29:18','�������� ��','[�������� ���� ��� ��ȸ 2]ȯ�� ���� Ǯ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (150,'gildong@naver.com','2018-08-19','09:00:16','�а��� ȯ��','[�а��� ȯ��å �ʷ��� 3 ������ ���� ���� ����]��ǰ ���� ������ �Ǿ���� �������� �а���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (151,'gildong@naver.com','2018-03-16','16:03:03','���� Ű�� ä','���� Ű�� ä�Ҵ� ���־�! - ��Ȱ��ǰ���� ���� �츮 �� �Թ� �Ѹ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (152,'gildong@naver.com','2018-02-25','09:33:48','����ī �ø�','[����ī �ø��� 1]����ī�� �ź��� �� �س���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (153,'gildong@naver.com','2018-05-13','13:08:44','���� ���� ','(���� ���� ����)�� Ǫ�� �츮 �ҳ��� �ؿͳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (154,'gildong@naver.com','2018-07-15','11:27:28','���� �ð���','[���� �ð��� ��ſ��� 1]���п� ���� ��� - ���� ������ ������� �߸���ȭ �༺:B���̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (155,'gildong@naver.com','2018-05-29','13:18:15','��ǳ��� �츮','��ǳ��� �츮 ��縮  ���ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (157,'gildong@naver.com','2018-09-19','14:57:25','ó�� �д� ��','ó�� �д� ������ ���� - ���˺� ���ܸ�, ������ ���ָ� ������ �޸ӴϽ�Ʈ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (158,'gildong@naver.com','2018-03-14','15:54:33','����û�ҳ⹮','[����û�ҳ⹮�� 14]�� �λ��� ��ź�� ���ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (160,'gildong@naver.com','2018-05-09','10:13:34','������ ���','[������ ��ſ� 37]�칰 �Ĵ� ���̵� ���ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (161,'gildong@naver.com','2018-07-29','10:46:19','������ ���','[������ ��ſ� 38]�׺��� ������ Ż��� ���ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (162,'gildong@naver.com','2018-10-19','15:18:26','������ ���','[������ ��ſ� 39]�츮���� ���� ���ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (164,'gildong@naver.com','2018-09-19','16:13:59','������� 2','[������� 24]�̼������� ���� �� ���ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (165,'gildong@naver.com','2018-04-04','16:51:14','������ ��','������ �� �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (167,'gildong@naver.com','2018-12-09','12:53:05','����ִ� ��','[����ִ� ���б� - ���� ��Ÿ�� ��ȭ]�����ұ� ���������� ��Ʈ - ��3�� ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (168,'gildong@naver.com','2018-05-09','14:45:01','����ִ� ��','[����ִ� ���б� 5 ��ȣö ����� ��ȭ : ��]�»꿡 �����̴� ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (169,'gildong@naver.com','2018-07-04','11:56:29','����ִ� ��','[����ִ� ���б� 6](���±� â�۵�ȭ)�ʴ���� ������ ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (171,'gildong@naver.com','2018-02-02','09:45:47','�������� ū','[�������� ū���� 14]�ƺ��� ���� ���� ���л�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (172,'gildong@naver.com','2018-10-19','17:44:35','�������� ū','[�������� ū���� 16]���ι��� ����� �۵��� ������ ���л�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (173,'gildong@naver.com','2018-10-14','09:47:58','���μ��� ��','[���μ��� �׸���ȭ 141]�ູ�� å ���μ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (175,'gildong@naver.com','2018-05-20','10:30:25','1318�׸�','[1318�׸�å 1]���ҳ� �ֽ��� �۷ο�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (176,'gildong@naver.com','2018-07-12','15:18:37','���� ģ�� ��','���� ģ�� �̾߱� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (177,'gildong@naver.com','2018-10-24','14:07:22','��ü� ź ','��ü� ź �缭 ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (179,'gildong@naver.com','2018-10-29','14:21:00','���� ���','[���� ��� 11]�̻��� ���� 1 : ���ȶ߱� ������ ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (180,'gildong@naver.com','2018-10-29','10:38:31','���� ���','[���� ��� 12]�̻��� ���� 2 : �� �������� ������ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (181,'gildong@naver.com','2018-12-09','14:21:51','���� ���� ','[���� ���� �ø��� ���� �׸�å 15]ī�� �ҳ��� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (183,'gildong@naver.com','2019-01-10','17:56:47','������ �ɸ�','[������ �ɸ� ��ȭ �ø��� 10]�ҸӴ��� �� ���ѱ�ȹ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (184,'gildong@naver.com','2017-12-23','12:18:39','������ Űū','[������ Űū���� 11]��Ÿ ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (186,'gildong@naver.com','2018-04-01','16:06:45','�츮�� �б���','�츮�� �б��� ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (187,'gildong@naver.com','2018-07-22','13:53:22','�츮 �� ����','�츮 �� �������� �ڳ����� ��� ���λ���å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (189,'gildong@naver.com','2018-10-21','15:18:28','��ȭ�� ��ģ','[��ȭ�� ��ģ�� 70]�ĺ�ο� �� �Ҿƹ��� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (190,'gildong@naver.com','2017-12-04','15:54:49','�� û�ҳ⹮','[�� û�ҳ⹮�� 11]�츮 �ѻ��̴� ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (191,'gildong@naver.com','2018-10-03','17:05:05','�� û�ҳ⹮','[�� û�ҳ⹮�� 24]������ ��ġ ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (339,'bangwon@naver.com','2018-11-08','17:57:33','�ų��� å��','[�ų��� å�б� 35]������ â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (340,'bangwon@naver.com','2018-07-22','14:22:49','â�� û�ҳ�','[â�� û�ҳ� ���� 6]���󿡼� ���� �Ƹ��ٿ��� �ʿ��� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (341,'bangwon@naver.com','2018-02-04','15:47:05','â�� û�ҳ�','[â�� û�ҳ� ���� 41]���л� �ڸ� 1 â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (342,'bangwon@naver.com','2018-02-04','13:54:53','â�� û�ҳ�','[â�� û�ҳ� ���� 42]���л� �ڸ� 2 â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (343,'bangwon@naver.com','2018-04-01','15:34:51','â�� û�ҳ�','[â�� û�ҳ� ���� 43]�η��򿡰� �λ��ϴ� �� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (344,'bangwon@naver.com','2018-06-17','09:41:40','â�� û�ҳ�','[â�� û�ҳ� ���� 44]1945, ö�� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (345,'bangwon@naver.com','2018-09-08','11:02:18','â��Ƶ�����','[â��Ƶ����� 268]�츮 ���� ������ â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (346,'bangwon@naver.com','2018-10-14','14:42:00','â��Ƶ�����','[â��Ƶ����� 269]������ ���� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (347,'bangwon@naver.com','2018-07-04','09:04:10','ä�츮 ����','[ä�츮 ���г� ���� 52]����� ���罺�� ��Ÿ���� ä�츮',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (348,'bangwon@naver.com','2018-04-29','17:21:56','å�� �׸�å','[å�� �׸�å 17]�� ��� ��� ��? å���ᳪ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (349,'bangwon@naver.com','2018-06-08','17:23:56','å�� �׸�å','[å�� �׸�å 19]ģ���� ��ʹ� ���� Ư���� ��� å���ᳪ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (350,'bangwon@naver.com','2017-12-28','10:48:14','å�� ���','[å�� ��� 17]�����̸� �ƺ��� ���� å���ᳪ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (351,'bangwon@naver.com','2018-10-19','12:14:10','å�� ���','[å�� ��� 22]�Ƹ��ٿ� ���� å���ᳪ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (352,'bangwon@naver.com','2018-02-28','09:23:36','å�� û�ҳ�','[å�� û�ҳ� 12]����̰� �� ü������ �Ծ� ���Ⱦ�� å���ᳪ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (353,'bangwon@naver.com','2018-08-19','15:56:40','å�� û�ҳ�','[å�� û�ҳ� 13]���� �����ε� ��ư��� å���ᳪ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (354,'bangwon@naver.com','2018-02-02','17:46:22','������� ','[������� 14]���̿ø��Ͻ�Ʈ�� �ǰ� ���� �� å�ӹ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (355,'bangwon@naver.com','2018-08-03','14:58:46','������� ','[������� 17]�ð��� ����� ��� å�ӹ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (356,'bangwon@naver.com','2018-04-05','09:18:45','�׸�å�� ��','[�׸�å�� �� ���� 6]����! å�д°�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (357,'bangwon@naver.com','2018-07-29','17:47:07','ū���ڸ� 5','[ū���ڸ� 5]å �� ���� ����  å�д°�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (358,'bangwon@naver.com','2018-07-08','11:05:13','�ٶ� �׸�å','[�ٶ� �׸�å 6]õ ���� �ٶ� õ ���� ÿ�� õ���ǹٶ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (359,'bangwon@naver.com','2018-05-24','17:40:16','�����԰� �Բ�','�����԰� �Բ� �ϱ� ���� ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (360,'bangwon@naver.com','2018-10-06','17:29:03','��ì�̹��� ','[��ì�̹��� ���г⵿ȭ 15]����� �� û������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (361,'bangwon@naver.com','2018-09-20','10:02:53','���μ��α׸�','[���μ��α׸�å 2]���� �� ���� �ƴϿ���! �ʷϰ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (362,'bangwon@naver.com','2018-07-11','09:54:31','�ٸ��� �б�','[�ٸ��� �б�]������ ������ ũ�����Ͽ콺',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (363,'bangwon@naver.com','2018-06-10','15:25:04','û�ҳ� ����','[û�ҳ� ��������]�� �λ��� �帮�� ũ�����Ͽ콺',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (364,'bangwon@naver.com','2018-05-30','13:49:30','�ٵ��ٵ� û','[�ٵ��ٵ� û�ҳ⹮��]���� �θ�� ��ȥ�ߴ� ū��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (365,'bangwon@naver.com','2018-03-30','15:33:00','�ٵ��ٵ� û','[�ٵ��ٵ� û�ҳ⹮��]�츮���� ���� ū��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (367,'bangwon@naver.com','2018-07-25','15:47:34','������ ������','������ ������ ��������  Ű�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (369,'bangwon@naver.com','2018-11-10','11:04:25','����� ���� ','����� ���� - ������� ��ġ�� �ϱ���� ���� ���丵 Ž',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (370,'bangwon@naver.com','2018-09-27','17:02:56','�ʸ����� ��','[�ʸ����� �׸�å]�����Ҹ� �Ķ�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (371,'bangwon@naver.com','2018-07-14','16:05:10','������ ����','[������ ���г� å�б� 10]������ ����� �ͽ��� ���� �븩 �Ķ�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (373,'bangwon@naver.com','2018-10-28','17:21:34','������ �ڶ�','[������ �ڶ�� ���� 31]���� ���� ���� Ǫ�����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (374,'bangwon@naver.com','2018-11-29','09:01:03','������ �ڶ�','[������ �ڶ�� ���� 32]���󿡼� ���� �Ϻ��� ���� Ǫ�����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (376,'bangwon@naver.com','2018-12-09','11:01:03','Ǫ���� ����','[Ǫ���� ���� ��ȭ 6]���� ��ܱ�� ���� Ǫ�����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (377,'bangwon@naver.com','2018-02-07','09:24:55','�̷��� ����','[�̷��� ���� 27]��Ḧ �帳�ϴ� Ǫ��å��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (378,'bangwon@naver.com','2018-06-03','14:42:04','�̷��� ����','[�̷��� ���� 28]�� ģ���� �ܰ��� Ǫ��å��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (380,'bangwon@naver.com','2018-09-19','16:12:41','Ǫ�������� ','[Ǫ�������� 53]��̽�Ű, ������ ��� Ǫ��å��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (381,'bangwon@naver.com','2018-11-14','17:30:31','Ǫ�������� ','[Ǫ�������� 54]���� ���󷣵�� ���� Ǫ��å��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (383,'bangwon@naver.com','2018-05-09','10:52:03','�Ѱܷ� ����','[�Ѱܷ� �����г⵿ȭ 24]õ�縦 �̿��ص� �ǳ��� �Ѱܷ����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (384,'bangwon@naver.com','2018-11-18','09:53:23','�Ѱܷ� ����','[�Ѱܷ� �����г⵿ȭ 26]���尣 ��� - ������ ���� ���� 2 : ü�� �Ѱܷ����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (386,'bangwon@naver.com','2018-10-14','16:19:36','�Ѹ� ���г�','[�Ѹ� ���г⹮�� 21]�㿡 �����ϴ� ���̵� �Ѹ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (387,'bangwon@naver.com','2018-12-15','13:26:18','�Ѹ� ���г�','[�Ѹ� ���г⹮�� 23]������ ���ƿԴ� �Ѹ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (389,'bangwon@naver.com','2018-10-09','10:34:10','�������� ��','[�������� �׸�å 13]Ź�ڴ� Ź���� ���ϱ�? �ؼ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (390,'bangwon@naver.com','2018-02-02','16:05:53','2�г� 6�� ','2�г� 6�� ����� ������  ���ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (391,'bangwon@naver.com','2018-06-03','10:46:12','ȿ���� 3.','[ȿ���� 3.4�г� â�� ��ȭ �ø��� 7]���� �̻��ճױ�? ȿ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (392,'bangwon@naver.com','2018-09-23','10:55:22','�������� ��','(�������� �Բ� �д�)�ѱ��� ����� ��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (394,'bangwon@naver.com','2018-05-24','17:39:25','����� ������','����� ������ �漺 - OBS Ư����ȹ ������ �����̴� ���� �ް�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (395,'bangwon@naver.com','2018-11-20','12:58:23','������ ����','[������ ���� ������ ����]�հ��� ��Ÿ��  ����ó��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (396,'bangwon@naver.com','2018-06-19','12:26:07','�Ƹ������� ','(�Ƹ������� ��������)�� ���� ���� ���� �ʸ��б�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (398,'bangwon@naver.com','2018-06-19','14:56:07','�簭���� ��','(�簭���� ����쵹)�ѱ��� ����� 2 - ���� �ô���� ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (399,'bangwon@naver.com','2017-11-29','11:25:01','���ų�������','[���ų������׷��� û�ҳ� �۷ι� �������� 1]����� ��� ���� �������ִ�å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (400,'bangwon@naver.com','2018-11-08','17:51:40','����� ����','[����� ���������� 7]������ �ٲ� �� �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (401,'bangwon@naver.com','2018-10-31','13:28:15','16��, ����','16��, ������ ���� ���� �����δ� - ������ ��� �������� ���� ���� ���� ������ �̾߱� �ٻ꿡��(�ٻ�Ͻ�)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (403,'bangwon@naver.com','2018-09-14','15:58:19','�� �ѱ��� 2','�� �ѱ��� 2. �������� ������� �ٻ꿡��(�ٻ�Ͻ�)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (404,'bangwon@naver.com','2018-10-05','17:57:14','���丮�� ��','[���丮�� �׸�å 1]��ȭ�� �޲ٴ� ���丮���� ���丮��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (406,'bangwon@naver.com','2018-04-18','14:52:56','������ �ٲ�','[������ �ٲ� ū ���� ��ȭ �ι� ���� 5]�置 : �������� ���ڴ� �߱��� ����� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (407,'bangwon@naver.com','2018-12-05','14:46:14','������, ����','������, ���� ���� ���� - ������ �ǹ��� ��� ������� �뱹�� ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (408,'bangwon@naver.com','2018-08-03','12:24:58','�̹����� ��','(�̹����� ���丮�ڸ��� ���� ����)���� ������ ���� 1. ���� �ڿ�.�ι�.ȯ��, �ƽþ� ����������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (409,'bangwon@naver.com','2018-08-08','15:21:06','�̹����� ��','(�̹����� ���丮�ڸ��� ���� ����)���� ������ ���� 2. ����, �����ƽþ� ����������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (410,'bangwon@naver.com','2018-08-08','15:54:04','�̹����� ��','(�̹����� ���丮�ڸ��� ���� ����)���� ������ ���� 3. �Ƹ޸�ī, ������ī, �����ƴϾ� ����������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (411,'bangwon@naver.com','2018-03-05','17:52:25','������ �� ','[������ �� �ѱ��� �鿩�ٺ��� 5]�츮 ������ ���� �̾߱� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (412,'bangwon@naver.com','2018-08-17','15:32:39','�ڶ����� ��','[�ڶ����� �츮 ��ȭ 7]��߹��� �츮 ���� Ȱ������ ��ܶ� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (413,'bangwon@naver.com','2018-09-16','12:23:00','û�ҳ� �Ѹ�','[û�ҳ� �Ѹ� �ø��� 14. ������]�ѱ����� �������� ���踦 �����϶�  �������� ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (414,'bangwon@naver.com','2018-04-25','17:01:13','���е��� ��','[���е��� ���� �ι� �׸�å 8]�հ��� ��Ÿ�� - ������ī�� 3õ�� �׷��� ������ ���� �뺧 ��ȭ�� ������  ���е���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (415,'bangwon@naver.com','2018-11-21','16:16:20','�׷���Ʈ ��','[�׷���Ʈ ���� 2]��ƾ �缭 ŷ�� ����ũ �����̷�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (416,'bangwon@naver.com','2018-04-11','14:01:02','�� ���� ��','[�� ���� ������ �޲ٴ� ���� �ѱ��� 1]����, ���� �̷��� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (417,'bangwon@naver.com','2018-10-04','14:08:21','�� ���� ��','[�� ���� ������ �޲ٴ� ���� �ѱ��� 2]��ü����, ���� �̷��� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (418,'bangwon@naver.com','2018-05-19','11:34:54','���� ���� ','[���� ���� 1]�Ѿ� 1770 ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (419,'bangwon@naver.com','2018-07-04','10:27:56','���� - ��','���� - �� �� �� �ϰ��� �̾߱� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (420,'bangwon@naver.com','2018-12-09','12:11:05','���� Ƽ����','���� Ƽ�����罺�� �߰�������? ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (421,'bangwon@naver.com','2018-11-07','12:19:25','��ȩ �� ��','[��ȩ �� ���� �ø���]��ȩ �� ���� ���� - �ʵ��л��� ���� �������� ���� �ι� �̾߱� �ϸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (422,'bangwon@naver.com','2019-01-04','12:26:41','�����ι�����','[�����ι������� 1]����� �̾߱� - ����� �Ǿҽ��ϴ� �ϸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (423,'bangwon@naver.com','2018-09-29','14:26:41','���� ���, ','���� ���, ������ �ٲٴ� - �����, ����, ���¿� �¼� ����� �Ͻ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (424,'bangwon@naver.com','2018-08-24','16:09:17','���� �ҿ� -','���� �ҿ� - ���� ���� ���, ��� �豸 ����ä��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (425,'bangwon@naver.com','2018-01-28','13:52:33','1318����','[1318���繮��]���� ��½ ���� ��½ ���� ���� �̾߱� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (426,'bangwon@naver.com','2018-02-05','10:12:26','�����ϱ� 7','[�����ϱ� 7 ���� ����]��߹��� ������, ������ �޲ٴ� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (427,'bangwon@naver.com','2018-07-07','12:17:54','�����ϱ� 8','[�����ϱ� 8 ���� �ı�]���� ��� �����, �Ѿ��� ����� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (428,'bangwon@naver.com','2018-12-09','16:57:27','�����ϱ� 9','[�����ϱ� 9 ���� ������]�λ� ���л� ����, �漺�� ������ Ÿ�� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (429,'bangwon@naver.com','2018-12-29','17:44:23','¡�˴ٸ� ��','[¡�˴ٸ� ����å 2]������ å��� ���ż� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (430,'bangwon@naver.com','2018-05-11','11:36:12','�뼱���� �ò�','�뼱���� �ò����� �ѱ��� ��Ʈ - ��8�� ��ȸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (431,'bangwon@naver.com','2018-03-07','10:48:02','����, ����','����, ���� ���� ���� ����? - ����.����.�ο��� ���� �Ϻ����� �츲���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (433,'bangwon@naver.com','2018-09-16','11:49:19','��� �ٷ���','[��� �ٷ��ϱ� ���� �ٷκ��� 11]�츮 ���� ù ���Ѱ� ���� - �˷�ҿ��� �ι��Ӹ����� �Ｚ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (434,'bangwon@naver.com','2018-11-09','12:19:10','���� �ֹ��','[���� �ֹ�� �ι� 10]������� �պ��� - �츮 ���縦 �պ��� �� �帳�ϴ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (435,'bangwon@naver.com','2018-06-23','16:17:43','���� �ֹ��','[���� �ֹ�� �ι� 9]������ �������� - �츮 �ô��� ������� ��� �ִ� ������ ���� �̾߱� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (437,'bangwon@naver.com','2018-10-19','09:45:47','å�������� ','[å�������� 22]�����¡ �ѱ��� ���ع���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (438,'bangwon@naver.com','2018-10-19','10:54:08','å�������� ','[å�������� 23]�����¡ ����� ���ع���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (439,'bangwon@naver.com','2018-06-03','11:53:44','14���� å ','14���� å - �ѱ� ����縦 ���ϴ� ���ع���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (440,'bangwon@naver.com','2018-08-02','15:48:38','�ų��� ���','(�ų��� ��� ���� �����ϴ�)������ ���б��� �Ҷ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (442,'bangwon@naver.com','2017-12-20','11:23:04','������ ����','[������ �������� �ø��� 9]â�Ƿ� �ҳ� �۽�ȯ, ������ ��Ÿ�ϴ� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (443,'bangwon@naver.com','2018-11-14','11:31:42','1 �� 10','[1 �� 100 �ø��� 1]1 �� 100 : �丮 ������� �� - �ʵ��л� 100���� ���� �ְ��� �������� ���ϴ� ���ݶ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (444,'bangwon@naver.com','2018-05-19','14:32:58','�ð��ִϾ� ','[�ð��ִϾ� ��� ���缭 31]������ - �ΰ��� ����� ������ ���� �ð��ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (446,'bangwon@naver.com','2018-05-30','12:45:54','���ΰ� �Ǵ�','[���ΰ� �Ǵ� �ø��� 38]���ΰ� �Ǵ� �ﱹ��� �Ƹ��ٿ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (447,'bangwon@naver.com','2018-11-28','11:37:58','���ΰ� �Ǵ�','[���ΰ� �Ǵ� �ø��� 41]���ΰ� �Ǵ� ������������ �Ƹ��ٿ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (448,'bangwon@naver.com','2018-01-13','10:50:56','����ä�� 1','[����ä�� 15]�ֽð� �Ƹ����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (450,'bangwon@naver.com','2018-09-29','09:28:53','������ ���� ','������ ���� ���ο� ���� ���̾غ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (451,'bangwon@naver.com','2018-10-06','13:23:03','������ ����','(������ ���� â��)�������� ���� - ��Ÿ���� ��ǻ�Ϳ� �̸������ �Ѿ��� �������� ������ �̾߱� ��ī���ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (452,'bangwon@naver.com','2018-11-08','14:49:16','������ ���� ','������ ���� ���̵� - ������ �۰��� �� ���� ���� ���̵� ��ī���ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (454,'bangwon@naver.com','2018-04-18','10:35:28','��ö�� �ι�','[��ö�� �ι��̾߱� 3 �佺Ż��ġ]������ �ٲ� �б� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (455,'bangwon@naver.com','2018-09-19','15:09:35','�츮���� ��','[�츮���� ������ 4]�������� ������ �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (456,'bangwon@naver.com','2018-07-20','09:52:05','����ִ� ��','[����ִ� �̾߱� ����ִ� ���� 15]�츮 ������ ���� �� 9���� å �̾߱� ����۰�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (458,'bangwon@naver.com','2018-08-08','17:27:03','������ �ι�','[������ �ι���å 1]�ƽ�Ʈ���� ����׷� - ������ �߻� �ս�Ÿŷ ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (459,'bangwon@naver.com','2018-04-19','11:35:32','��! �׷�����','��! �׷����� �츮 ���� 12. �ٴ� �� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (460,'bangwon@naver.com','2018-12-23','12:04:53','������ �ߵ���','������ �ߵ��� ����� : ������ �����Ǿ�ħ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (462,'bangwon@naver.com','2017-12-31','14:18:03','���� ���� ','[���� ���� ������ 101�ϰ��� ���� ��ȭ ���� 18]���� ���� ������ 101�ϰ��� ���蹮ȭ���� ��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (463,'bangwon@naver.com','2018-08-29','14:57:27','DK ���','[DK ��� ���]100 people ������ �����̴� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (464,'bangwon@naver.com','2018-05-31','12:21:58','�츮 �ι� ','[�츮 �ι� �̾߱� 28](���߱� ���� Ȳ����)���� �� �յ� ���߱� �Ҹ� ��� ����? �츮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (466,'bangwon@naver.com','2018-06-30','17:19:24','������ ����','[������ ���׽��� �츮���� 8]���� ȭ�� - ������ ���� ǰ�� ���� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (467,'bangwon@naver.com','2018-06-10','17:50:20','���� �� ��','[���� �� �츮 �̾߱� �޸��� 11]���� ��¥ ������ ������ �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (650,'chunhyang@naver.com','2018-04-22','16:14:57','���� ������','[���� �������� 24]���蹮ȭ���� �絿���� - �츮�� ������ ��� �� ���� �� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (651,'chunhyang@naver.com','2018-12-01','12:56:54','���� �츮��','[���� �츮��ȭ �б� 4]����, �뼼! ���� ���� �̾߱� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (652,'chunhyang@naver.com','2017-11-19','11:04:55','���󿡼� ����','���󿡼� ���� ���� ��, �ڿ����� - �����ϸ� ���� ã�� �ϴ����� ���� �̾߱� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (653,'chunhyang@naver.com','2018-01-23','12:18:42','�� ���� ö','[�� ���� ö���� 2]��ֶ� ����? ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (654,'chunhyang@naver.com','2018-08-08','12:31:38','�� ���� ö','[�� ���� ö���� 3]��� ������ ���� Ŀ�ٶ� å ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (655,'chunhyang@naver.com','2018-06-20','15:23:22','��̸� ��','(��̸� ����)�缺��� �̾߱� �Ķ��ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (656,'chunhyang@naver.com','2017-11-13','17:33:09','���þ��� 27','���þ��� 27�ϰ� ����Ž�� - �Ҽ��� �д� ���� �̾߱� �Ķ��ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (657,'chunhyang@naver.com','2018-01-18','13:29:31','���� ���ϰ� ','���� ���ϰ� �ʹٱ� - å���� ���ſ� ����� ������ �ʴ���� ��¥ ��ħ ���Ľ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (658,'chunhyang@naver.com','2019-01-19','16:02:20','���� ��, ��','���� ��, �ʶ� �༮ - ���ϰ� ��, ģ�� ���踦 �����ϴ� ���Ľ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (659,'chunhyang@naver.com','2019-01-24','12:48:25','���� ���� ','[���� ���� �ø��� 4]���� ���� �����ϴ� ������Ȱ - Safe Ǫ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (660,'chunhyang@naver.com','2018-07-29','17:24:35','������ �ڶ�','[������ �ڶ�� ���� 23]����������, ���� �����ɴ� Ǫ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (661,'chunhyang@naver.com','2018-05-03','17:48:36','��̸� ��','(��̸� ����)�ٶ��� ��, �츮 ���� ���� 1 Ǫ�����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (662,'chunhyang@naver.com','2018-05-03','15:03:54','��̸� ��','(��̸� ����)�ٶ��� ��, �츮 ���� ���� 2 Ǫ�����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (663,'chunhyang@naver.com','2018-03-03','12:49:27','�츮 �� ��','[�츮 �� �׸�å 2]�ȳ�, �±ر�! Ǫ�����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (664,'chunhyang@naver.com','2018-04-01','10:24:03','��ٱ��ϴ� ��','��ٱ��ϴ� �� ������ �������? Ǯ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (665,'chunhyang@naver.com','2018-06-19','09:38:24','�ǳ�Ű�����Ե�','�ǳ�Ű�����Ե� �α��� ������? - ���� ��ȭ�� �Բ� �д� �����αǼ��� �÷�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (666,'chunhyang@naver.com','2018-05-24','16:39:44','�����ϰ� ��','[�����ϰ� ���� 4]���� ���� �� ���ʶ� - �������� ����� ���� �а���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (667,'chunhyang@naver.com','2018-08-03','09:58:26','�а��� �׸�','[�а��� �׸�å 2]���� �Ҿƹ��� ���� ��ƿ�! �а���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (668,'chunhyang@naver.com','2018-12-22','12:33:38','�а��� ���','[�а��� ��� 3]������ �ּ��� - ���� ������  �а���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (669,'chunhyang@naver.com','2018-02-04','17:38:43','���� �� ��','[���� �� ����ü�� �ø��� ]������ ������, �������� ������! �Ѱܷ����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (670,'chunhyang@naver.com','2018-09-14','09:30:25','�������� ��','[�������� ����Ʈ 1]������ī ������� �Ѱܷ����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (671,'chunhyang@naver.com','2018-11-02','10:30:25','�ѱ� �� ����','�ѱ� �� �������� ����Ʈ �Ѱܷ����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (672,'chunhyang@naver.com','2018-11-01','11:03:53','�ٹ�ȭ �����','�ٹ�ȭ ������� - ȥ�ں��� �츮�� �ȶ��ϴ� �ѱ���å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (673,'chunhyang@naver.com','2018-06-28','11:22:50','���� ���� ','[���� ���� �ڹ��� ���� �ø��� 7]�̸� ���� �����μӹڹ��� �Ѹ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (674,'chunhyang@naver.com','2018-09-19','14:22:45','����쵹 ����','����쵹 ���ſ - ���̵��� ����, ����� ���� �Ѹ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (676,'chunhyang@naver.com','2018-03-02','11:31:22','���� ���� ','[���� ���� �ٹ�ȭ 8](����Ʈ������ ���þ�) ���� ���� ��Ʈ���ī �Ѽּ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (677,'chunhyang@naver.com','2018-06-09','13:55:38','���� ���� ','[���� ���� �ٹ�ȭ 9](�ʸӽ��� ����) ������� ȯ�� ���� �Ѽּ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (678,'chunhyang@naver.com','2018-06-20','09:58:45','ö�б׸��� ','[ö�б׸��� 2. ĭƮ]ĭƮ ������ ���ž��� �Ϸ� �Բ��д�å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (680,'chunhyang@naver.com','2018-07-09','11:34:22','û�ҳ��� ����','û�ҳ��� ���� ���� ���� ������ �س����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (682,'chunhyang@naver.com','2018-08-03','09:36:59','���� ���� ','[���� ���� �ڹ��� 4]���̴� ���� ����  ���ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (683,'chunhyang@naver.com','2018-03-05','16:29:36','�α� ��Ŵ��','[�α� ��Ŵ�� 1]���� ��� ���� - ���� ��� �׾�� ���������� ���̵� ���ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (684,'chunhyang@naver.com','2018-03-05','15:36:53','�α� ��Ŵ��','[�α� ��Ŵ�� 2]���� ��� �뵿�� - ���� 2�� �뵿�ϴ� ���̵��� �̾߱� ���ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (258,'gildong@naver.com','2018-04-08','09:35:29','�ٴٷ� �� ','[�ٴٷ� �� ������ 1]�� ������ �ʾ� - û�ҳ� �׸� �Ҽ��� �ϸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (262,'gildong@naver.com','2018-05-24','16:25:25','�ߴ��� �ڸ���','�ߴ��� �ڸ��� - ��� �Ǹ� ������ �ƹ��� �Ϲ�ũ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (290,'gildong@naver.com','2018-10-05','12:38:16','���;�̹�','[���;�̹��� 29]�� ��, ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (293,'gildong@naver.com','2018-05-14','09:31:02','�ƺ��� ����','(�ƺ��� �����̶�)������ �׸����� �ҳ��ѱ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (297,'gildong@naver.com','2018-05-29','10:21:22','�ð� û�ҳ�','[�ð� û�ҳ� ���� 50]������ �ð���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (300,'gildong@naver.com','2018-05-19','12:15:21','��� ���� ','[��� ���� ������ ���̾߱� 3]�ſ� �ҵ� ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (304,'bangwon@naver.com','2018-04-04','10:13:49','ī����� ','[ī����� 29]������ �ҳ�� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (307,'bangwon@naver.com','2018-02-09','14:52:56','�罺���̿� ��','�罺���̿� �ູ�� �Ϸ� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (310,'bangwon@naver.com','2018-12-24','15:03:17','�����޸� ��','[�����޸� �׸�å�� 12]���ƶ�, ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (313,'bangwon@naver.com','2018-06-10','16:09:19','�츮���� û','[�츮���� û�ҳ⹮�� 8]���� �ٽ� �����̾� �츮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (317,'bangwon@naver.com','2018-07-04','09:37:58','�츮 �� ��','[�츮 �� �츮 ���� 3]���ƶ� ������ �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (320,'bangwon@naver.com','2018-03-14','13:31:22','���� �ݽ�','���� �ݽ� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (323,'bangwon@naver.com','2018-07-14','15:46:16','�罺������ ��','�罺������ �̼ٿ�ȭ - �罺���̰� �ٽ� �� ���� ������ ����ȭ �ε��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (327,'bangwon@naver.com','2018-03-07','10:51:54','������ û��','[������ û�ҳ� 1]36.4�� - �߰���л��� ���� ���� ���� �л��� 123 ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (332,'bangwon@naver.com','2018-10-09','10:10:09','������ �׸�','[������ �׸�å 2]���� �׸��� ���� �������Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (336,'bangwon@naver.com','2018-03-29','11:42:48','������л� ','[������л� ���� �۰��� 6]�Ҿƹ��� ���� �ҸӴ� �̾߱� �ִϾ��߾�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (366,'bangwon@naver.com','2018-03-28','17:14:03','���� ���� ','���� ����  Ű�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (368,'bangwon@naver.com','2018-08-29','14:52:06','Ž û�ҳ⹮','[Ž û�ҳ⹮�� 6]���ټ�, ���� ���� �ð�  Ž',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (372,'bangwon@naver.com','2019-01-14','11:35:26','������ �д�','[������ �д� ���� ��ȭ 13]������ �ٸ� Ǫ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (375,'bangwon@naver.com','2017-12-20','10:19:30','Ǫ���� ����','[Ǫ���� ���� ��ȭ 2]������ ��ȥ�� Ǫ�����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (379,'bangwon@naver.com','2018-06-08','11:20:00','Ǫ�������� ','[Ǫ�������� 50]�ű�� Ǫ��å��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (382,'bangwon@naver.com','2018-11-03','17:17:04','�ҳ� ���� ','[�ҳ� ���� ��� 1]���� �뿪�� Ǯ���̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (385,'bangwon@naver.com','2017-12-17','17:15:31','�޸��� ���','�޸��� ��� �Ѱܷ�ƾƾ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (388,'bangwon@naver.com','2018-05-30','10:34:51','����û��, 2','����û��, 2�� 23�� - ������ ��, ��3���� å�� ��ȭ�� ���� �̾߱� ��Ƽ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (393,'bangwon@naver.com','2017-12-31','17:45:46','�����̽��� ','[�����̽��� ���� �ι� �̾߱� 17](����ħ�� ���� ����� ����)������ �����̽�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (397,'bangwon@naver.com','2018-06-19','10:09:02','�簭���� ��','(�簭���� ����쵹)�ѱ��� ����� 1 - ���� �ô���� ��� �ô� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (402,'bangwon@naver.com','2018-09-14','17:45:24','�� �ѱ��� 1','�� �ѱ��� 1. �����⿡�� ������� �ٻ꿡��(�ٻ�Ͻ�)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (405,'bangwon@naver.com','2017-12-13','13:03:26','������ �ٲ�','[������ �ٲ� ū ���� ��ȭ �ι� ���� 1]���������� �ٺ�ġ : ���׻󽺸� ���ǿ� ������ ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (432,'bangwon@naver.com','2018-01-19','15:04:22','������ �����','������ ����� �ȴ� - �뼺���� "�ô�� �����ϴ� �ι��������" �츲��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (436,'bangwon@naver.com','2018-11-28','09:38:58','������ ���','[������ ��� ���� 5]��������! �ѱ������� 1 - �ﱹ�� ����ô� ��������¾��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (441,'bangwon@naver.com','2018-08-08','09:08:21','������ ����','[������ �������� �ø��� 12]�ڿ���, ������ ������ �� ��糪�� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (445,'bangwon@naver.com','2018-05-16','10:58:36','���ΰ� �Ǵ�','[���ΰ� �Ǵ� �ø��� 37]���ΰ� �Ǵ� �ﱹ���� �Ƹ��ٿ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (449,'bangwon@naver.com','2018-08-10','13:00:41','���̼��� ��','[���̼��� ����� 33]����� ����� ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (453,'bangwon@naver.com','2017-05-16','12:57:03','��ũ�ε�� ��','��ũ�ε�� ���� ���迪�� �ø��� ��Ʈ - ��10�� ��ī���ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (457,'bangwon@naver.com','2019-01-16','11:06:34','��! �ȷ���Ÿ','��! �ȷ���Ÿ�� 1 - ��ȭ�� ���� �ȷ���Ÿ�� ���� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (461,'bangwon@naver.com','2018-07-24','09:10:41','���ı��� ��','[���ı��� ��� 3 ������ī]ó�� ������ ������ī - �Ųٷ� ���� ���� ����� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (465,'bangwon@naver.com','2018-07-05','09:33:49','��̸� ��','(��̸� ����)�ð��ǻ� �ڰ�ö�� �Ƹ��ٿ� ���� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (494,'bangwon@naver.com','2018-09-07','11:48:09','����濡�� ��','����濡�� ���� ���� �ڹ��� - ������ �Բ� ������ �����ڹ��� 12 Ǯ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (498,'bangwon@naver.com','2018-03-07','13:34:08','�Ѱܷ� �ι�','[�Ѱܷ� �ι�Ž�� 8]����׷� - �߻� �ս�Ÿŷ�� ź�� �Ѱܷ����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (502,'bangwon@naver.com','2018-03-29','11:59:22','Ư�� 20����','Ư�� 20���� �ѱ��� 2 - ���� ������ ����� �Ѽּ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (506,'bangwon@naver.com','2018-05-02','13:54:28','���縦 ����,','���縦 ����, ����� ����� �Բ��д�å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (509,'bangwon@naver.com','2018-09-05','15:33:45','ó�� �д� ��','ó�� �д� �ε��� - �پ����� �����ϴ� ��Ȥ�� �ƴ��, �ε� �޸ӴϽ�Ʈ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (514,'bangwon@naver.com','2017-12-13','17:29:00','������ �� ��','������ �� �������� ���� ��ȭ - �ʵ� ���������� ���� ���� ��ȭ ���� �踲�Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (518,'bangwon@naver.com','2018-03-14','16:39:02','û�ҳ� ��ȭ','[û�ҳ� ��ȭ�������� 1]�б����� �������� - �츮�鳢�� �뺻 ���� ���� ����� �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (523,'bangwon@naver.com','2018-01-03','14:55:07','��������׸�','[��������׸�å �����弮]ȭ�� ������ �̾߱� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (527,'bangwon@naver.com','2018-05-19','10:31:56','������� ��','[������� ���ĸ��� 6]����̳� �̼��� �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (551,'bangwon@naver.com','2017-11-29','11:43:50','��㼭�� û','[��㼭�� û�ҳ��ι��б���-��]��, �°��������� �̸�Ƽ�� �ø�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (555,'bangwon@naver.com','2018-05-24','13:20:58','������! �ѹ�','������! �ѹ� �غ��� �ž� - ������ ������� ���� ���ǥ�� ���� 20�� û���� 50�� ���� ������ �۴����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (561,'bangwon@naver.com','2018-05-12','09:38:55','������10','[������10]���� ����, �ܸ����������� ����? ���λ���å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (565,'bangwon@naver.com','2017-11-23','14:11:32','������� â','[������� â�۱׸�å 12]������ ���! - �츮��ȭ �̾߱� : ������ ������ ��Ű�� �� �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (570,'bangwon@naver.com','2018-03-09','15:29:46','�ʴ븦 ���� ','�ʴ븦 ���� ����ִ� ���� ������ 2 ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (573,'bangwon@naver.com','2018-04-15','13:04:49','�ȶ��� ���','�ȶ��� ��� ���� ������ ���ε����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (577,'bangwon@naver.com','2018-05-04','10:29:11','�̼��� ����','[�̼��� ���� �� ���� ü�� �б�]ó�� ������ ����å 1 �̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (581,'bangwon@naver.com','2018-06-29','11:54:25','���� ��� -','���� ��� - ������ �д� ���� ���� �̾߱� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (584,'bangwon@naver.com','2018-12-19','11:44:57','�׵鵵 ��ó��','�׵鵵 ��ó�� �����ϴ� - ���ѹα� ������ �αǴ�� �ڰ漭 �װ� ����ִ� ���� �α� �̾߱� �Ϸα����۴�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (613,'chunhyang@naver.com','2019-01-06','13:11:47','ó�� ������ ','ó�� ������ �츮 �ι��� - �丣�ҳ��� �ƴϸ��� �����濡�� ��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (617,'chunhyang@naver.com','2018-05-18','09:12:22','���� �ٸ� ��','���� �ٸ� �������� ���� - ���� �ٲٰ� ������ ���� û�� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (621,'chunhyang@naver.com','2018-05-12','09:01:51','���� ������','(���� �������ڸ� ����)�ں����� ������ - ������ �����԰� �Բ� ������ �ں����� ���� ���� ���µ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (26,'gildong@naver.com','2018-01-19','14:45:18','����� �� ','����� �� �𸣴� ���̵��� ������ �� - ��� ���̸� �����̴� �Ƿ� ������ �� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (31,'gildong@naver.com','2018-06-24','12:24:04','�ʵ� ���� ��','�ʵ� ���� ������ ������ å���Բ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (34,'gildong@naver.com','2018-06-24','10:24:32','Ǫ�� ��, ��','Ǫ�� ��, ���� �� - ������ ���� �� �������� �̾߱� �Ѱܷ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (38,'gildong@naver.com','2018-05-19','14:42:21','�۾��� ���� ','�۾��� ���� �̷а� ��� : �̿��� �۾��� ����  ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (42,'gildong@naver.com','2018-07-08','13:51:15','���� ����̽�','���� ����̽� - �ƺ��� �Բ� �� 3218�ϰ��� ���� ������ ���е���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (46,'gildong@naver.com','2018-09-14','13:34:16','������ �̷�','(������ �̷��� �ٲٴ�)���θ��� �����Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (49,'gildong@naver.com','2018-11-10','11:55:50','å���� ��� ','å���� ��� �� - å���� ��ȭ�ϰ� �����ϴ� �������� Ž��� Ǫ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (54,'gildong@naver.com','2018-04-08','14:11:20','����� ���� ','����� ���� 2. ����Ʈ�� ����� ã�� �س�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (57,'gildong@naver.com','2018-10-09','13:26:18','����� ����','[����� ����� �� 6]����Ÿ�� ����� �� ���̾߱�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (61,'gildong@naver.com','2018-08-09','09:52:19','1013 ��','[1013 �����ϴ� ���� 1]���ֳ����� �����帮�ڽ��ϴ� - ���� �����ڰ� ����ִ� ���� ȯ�� �̾߱� �����̽�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (90,'gildong@naver.com','2018-02-08','11:44:14','����ȭ�� ��','[����ȭ�� �׸� �츮 �ٴ幰���4]�߹��߹� ���ֹٴ� ����� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (94,'gildong@naver.com','2018-12-29','12:27:51','������ ����','[������ ���б��� 20]�Ӵ�ӿ� ���� ���� - ������ ���� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (98,'gildong@naver.com','2017-12-22','13:04:56','������õ ��','[������õ ���� ���� ���� 5]���󿡼� ���� ����ִ� �������� �Ͻ��丮',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (102,'gildong@naver.com','2018-09-02','13:41:55','�츮 ���� ��','�츮 ���� �� �����̾߱� - ��̷ο� ������� ������ ã�Ƽ� ����ǹ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (106,'gildong@naver.com','2018-03-24','14:46:30','���ָ� ������','���ָ� ������ ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (109,'gildong@naver.com','2018-12-24','09:33:11','�츮���� ����','�츮���� �������� - ���� 4�ѻ�, ����ǿ��� ���������� �γ��� ��ġ�� ���ع���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (114,'gildong@naver.com','2018-07-04','14:14:22','���̼��� ��','[���̼��� ���ı׸�å 32](���޴��� ���ù���)������ ������ ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (118,'gildong@naver.com','2018-04-29','11:43:02','��ȫ������ ��','��ȫ������ ������ �Թ� ��̳�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (121,'gildong@naver.com','2018-05-01','10:28:52','������հ� ','[������հ� �Բ��ϴ� ���ѹα� ����� - ��]�����̹���, ���⿡�� �� ����! ���µ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (126,'gildong@naver.com','2018-10-06','10:22:22','��å���� ����','��å���� �����̸� ������ - ������ ������ �ٲٴ� 500���� ���̵�� �ִϾ�迵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (156,'gildong@naver.com','2018-01-28','11:26:40','����� �� -','����� �� - ��̷Ӱ� ���� �� ȿ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (159,'gildong@naver.com','2018-06-24','12:03:42','����û�ҳ⹮','[����û�ҳ⹮�� 15]����� �Բ��� ������ ���� ���ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (163,'gildong@naver.com','2018-04-08','15:38:44','�б��� ���','[�б��� ��ſ� 7]�� ������ ��Ż �κ� ���ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (166,'gildong@naver.com','2018-03-19','10:37:36','��ΰ� ģ��','[��ΰ� ģ�� 20]���� �� �ƺ��� ��Ʈ���� ���� ���̾߱�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (170,'gildong@naver.com','2018-09-24','13:44:37','����ִ� ��','[����ִ� ���б� 8]�߻߾� �̾��� ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (174,'gildong@naver.com','2018-01-24','13:53:43','��ģ�� ����','[��ģ�� �������� 35]����! ������ ���ֳ� �� ���̵� ���μ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (178,'gildong@naver.com','2018-08-08','13:24:00','���� � ','[���� � �Բ��д� ������ȭ 1]�ֵ��̿� ȣ���� �޲ٴ³���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (182,'gildong@naver.com','2018-01-01','13:44:41','������ �ɸ�','[������ �ɸ� ��ȭ �ø��� 1]���ϴ� �ҳ��� ���ѱ�ȹ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (185,'gildong@naver.com','2019-01-12','16:02:09','���� å�бⰡ','���� å�бⰡ ���� �Ⱦ� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (188,'gildong@naver.com','2018-07-27','13:50:18','������ ��','[������ �б�å 1]���� �� �� �޸� �ξ��̾߱� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (192,'gildong@naver.com','2018-05-30','09:36:35','ù Ű���� ��','ù Ű���� ��� ���̾� 1 - ����⸦ ���� �츮���� ��ǥ ����� ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (218,'gildong@naver.com','2018-09-29','13:36:12','�������̵� ','[�������̵� 123]������ ���� ������ ����! ���а�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (221,'gildong@naver.com','2018-05-30','09:19:36','���е��� ��','[���е��� ������ 22]���� �˷� ���е���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (225,'gildong@naver.com','2018-09-23','09:49:00','�̼��� ����','[�̼��� ���г� ������ 7]�Ҿƹ����� �� �̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (228,'gildong@naver.com','2018-08-12','13:14:30','�������� ����','�������� ���̵� - �糭�� �۾��� �� �� ���� �͵鿡 ���� �̾߱� �ٴ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (233,'gildong@naver.com','2018-04-08','13:28:06','�ٿ�� ����','[�ٿ�� ���� ��� 15]�������� ���� �ٿ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (236,'gildong@naver.com','2018-08-03','12:22:52','��Ʋ�� ö��','[��Ʋ�� ö�� ��ȭ 15]���� ����Դϴ�  ��Ʋ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (240,'gildong@naver.com','2018-06-22','14:50:42','�Ƹ��ٿ� û','[�Ƹ��ٿ� û�ҳ� 7]������ ���� �ӳ��� ���� 42.195km ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (244,'gildong@naver.com','2018-07-04','11:11:19','�������м� ','[�������м� 9]�Ķ� ���� ���� �̶��� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (247,'gildong@naver.com','2018-03-29','09:28:22','������ ����','[������ ���м� 15]�׸��� ���̵� 5. �η���� �ο�� ���̵� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (252,'gildong@naver.com','2019-01-12','16:21:25','���� ���','[���� ��� 7]����� ���ƶ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (255,'gildong@naver.com','2018-11-04','16:22:15','������ - ','������ - ���� ��� �̷�����°� �ϱذ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (468,'bangwon@naver.com','2018-08-08','16:03:40','���� �� ��','[���� �� �츮 �̾߱� �޸��� 12]������, �� �����Ŷ�! �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (469,'bangwon@naver.com','2018-09-02','09:41:06','���ߴ� - ','���ߴ� - ����Ÿ����� �սǱ���, ���� ������� ������ �� �̾߱� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (470,'bangwon@naver.com','2018-03-31','14:24:35','û�ҳ����� ','[û�ҳ����� 40]�̵�� ��Ʈ�� ���� �鳲�� ����������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (471,'bangwon@naver.com','2018-10-04','11:58:21','���� �׷��� ','���� �׷��� - ���� ��� ������ ������ �ٲ� �������� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (472,'bangwon@naver.com','2018-10-04','15:08:42','������ ����','[������ ������ �ƹ��� �𸣴� �������� �츮 �� 2]�ϰ� ���� ���� �̾߱� �����Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (473,'bangwon@naver.com','2018-09-03','11:51:05','���г� �ѱ�','[���г� �ѱ��� ù�� 5]ž�� ����ִ� �̾߱� �ѱ��� �����Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (474,'bangwon@naver.com','2018-11-25','11:05:26','��ȸ�� ģ��','[��ȸ�� ģ������ å : ����]���� ������� ��� ������� 2 - ���ڱ�� ���� ���� �ô� ��� ���� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (475,'bangwon@naver.com','2018-06-07','09:56:16','â��û�ҳ⹮','[â��û�ҳ⹮�� 5]��Ź ���� ����� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (476,'bangwon@naver.com','2018-09-16','12:28:47','â��û�ҳ⹮','[â��û�ҳ⹮�� 7]����ִ� �ͽ� - ��ý��� �ݿ���ȭ â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (477,'bangwon@naver.com','2018-12-19','14:51:38','â��û�ҳ⹮','[â��û�ҳ⹮�� 8]�� ���� �ѱ��� - �츮 �׸� ���� �ѱ��� ������ â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (478,'bangwon@naver.com','2018-07-22','09:49:40','Ű�� ������ ','Ű�� ������ â�� ���� - ���� ȭ���� �׸� �ƽþ� 1920~1940 å���Բ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (479,'bangwon@naver.com','2018-08-12','14:52:55','����� ����','(����� ������Ʈ)������ ã�� �ٴٿ��� ���� �츮 ���� å���Բ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (480,'bangwon@naver.com','2019-01-18','13:54:59','���빮�� �� ','���빮�� �� - ���ʹ� 600�� �̾߱� å���Բ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (481,'bangwon@naver.com','2018-02-23','16:15:36','�ҸӴ�, �� ','�ҸӴ�, �� ���� ���� �����̿���? å���Բ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (482,'bangwon@naver.com','2018-07-25','12:08:12','������ ��','[������ �츮���� �츮���� 21](�ܷ��� ��ȭ�� ������ ���ǿ� ����)�����̾߱�1 û���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (483,'bangwon@naver.com','2018-07-19','12:46:54','������ ��','[������ �츮���� �츮���� 22](�ܷ��� ��ȭ�� ������ ���ǿ� ����)�����̾߱�2 û���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (484,'bangwon@naver.com','2018-10-07','13:30:36','������ �ٲ�','[������ �ٲ� ���� ���� 11]Ȳ���� �츮�� ���� ���� �˸��� û����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (485,'bangwon@naver.com','2018-05-30','09:16:58','������ �ٲ�','[������ �ٲ� ���� ���� 9]å�ٺ� ��â�� �츮 ��ȭ�� �Ѹ� ���� ������ �Ǵ� û����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (486,'bangwon@naver.com','2018-03-24','10:48:58','���� �޲ٴ�','[���� �޲ٴ� ��� 3. �౸����]�޽�, �౸�� Ű�� �ϴ� �� �ƴϾ� Ž',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (487,'bangwon@naver.com','2018-05-10','15:50:56','��������� ','[��������� ���� 10]���� �ӱݴ��� �ϻ��� ���ƶ� - ���� �ı� �� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (488,'bangwon@naver.com','2018-03-04','14:32:03','��������� ','[��������� ���� 9]���������Ƿ��� ����϶� - ���� �߱� �� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (489,'bangwon@naver.com','2018-03-14','12:50:21','����������','(����������)�꼺 ���� ���̱��� - �꼺�� ����ִ� ��ȭ �� �츮 ���� �Ķ�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (490,'bangwon@naver.com','2018-01-11','17:53:55','����! ����','[����! ���� ������ 3]������ �� ȫ�浿, ������ ���縦 ���� �Ķ�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (491,'bangwon@naver.com','2018-08-19','09:32:48','���� ������ ','���� ������ �鼺�̶��! - ������ ��Ų ���� õ�� �̾߱� �Ķ�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (492,'bangwon@naver.com','2018-07-11','09:27:48','�Ųٷ� �д�','[�Ųٷ� �д� å 35]�����϶�! ������ ���� ���� ���� ���� 32 Ǫ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (493,'bangwon@naver.com','2018-09-28','11:35:00','��򰡵� ��','[��򰡵� �츮 ��ȭ���� 7]��̸� ���� ���� �ܱ��� ���� Ǯ���ٶ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (495,'bangwon@naver.com','2018-11-20','15:21:29','��̸� ����','��̸� ���� ������ ���� �ѱ��� 1 - ������ô���� �Ļﱹ�ô���� Ǯ���̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (496,'bangwon@naver.com','2018-11-20','17:36:09','��̸� ����','��̸� ���� ������ ���� �ѱ��� 2 - ����ô���� �����ô� �߱���� Ǯ���̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (497,'bangwon@naver.com','2018-11-20','16:59:44','��̸� ����','��̸� ���� ������ ���� �ѱ��� 3 - �����ô� �ı���� ������� Ǯ���̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (499,'bangwon@naver.com','2018-09-05','17:52:20','�Ѱܷ� �ι�','[�Ѱܷ� �ι�Ž�� 9]������ - �ѱ��� ����� ��¥ �ǻ� �Ѱܷ����̵�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (500,'bangwon@naver.com','2018-07-09','11:34:31','���� ���� ģ','���� ���� ģ ���� - ������ ������ �� ��, ������������ ��� �ѱ���å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (501,'bangwon@naver.com','2017-11-26','11:37:45','���� �� ��','[���� �� ���� ���� ����]���� �� ���� ���� �ѱ��� �Ѹ����ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (503,'bangwon@naver.com','2018-06-24','17:58:56','Ư�� 20����','Ư�� 20���� �ѱ��� 3 - �ع�� �ѱ����� �Ѽּ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (504,'bangwon@naver.com','2018-10-18','14:28:08','Ư�� 20����','Ư�� 20���� �ѱ��� 4 - ����� ���ȭ �Ѽּ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (505,'bangwon@naver.com','2019-01-19','17:08:54','Ư�� 20����','Ư�� 20���� �ѱ��� 5 - ����ȭ�� ���Ϸ� �Ѽּ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (507,'bangwon@naver.com','2018-08-12','10:59:20','���� ���縦 ','���� ���縦 �ٲ� �� �Ѹ��� - ������ ������ �ι��鿡�� ��´�! �ؿͳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (508,'bangwon@naver.com','2018-06-19','09:01:01','2���� �����','2���� ����ϴ� ����å ���ϻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (510,'bangwon@naver.com','2018-09-26','10:56:59','�ͽŵ� �Բ� ','�ͽŵ� �Բ� ����, �����! - �� ���̿��� ������ ���� �������� ǳ�� ��ȭ �޸վ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (511,'bangwon@naver.com','2018-05-04','13:10:41','���ѹα� ����','���ѹα� ���� ������ - ��̰� ó�� ������ ���� �̾߱� ���̳�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (512,'bangwon@naver.com','2018-06-29','16:51:09','�̾߱�� ����','�̾߱�� ���� Ž�� ����å - ���踦 �ٲ� ���� �߰� ���̳�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (513,'bangwon@naver.com','2017-12-28','13:05:52','�𳪸��ڵ� ��','�𳪸��ڵ� ���� ����̼��� - ���׻󽺿��� 20���� �̼����� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (515,'bangwon@naver.com','2018-02-08','14:01:08','������ ź��','[������ ź�� 2]���󿡼� ���� ������ �عٶ�� ���μ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (516,'bangwon@naver.com','2018-02-14','16:30:59','���� ���� ','(���� ���� �׸���)��ȭ �׸�å �׸���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (517,'bangwon@naver.com','2018-10-03','16:28:50','�׸��� ģ��','[�׸��� ģ������ ��ȭ ��ƺ��� 2]����� �� ��ȭ ������ ������? ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (519,'bangwon@naver.com','2018-02-23','11:27:27','�Ƹ����! ','[�Ƹ����! �츮 �� �׸� 1. ȭ�ѿ���.�籺��ȭ]������ ���, �׸����� ������ �ټ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (520,'bangwon@naver.com','2018-11-19','09:36:42','�Ƹ����! ','[�Ƹ����! �츮 �� �׸� 2. ���ȭ]������ ����, ����� ������ �ټ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (521,'bangwon@naver.com','2018-11-24','09:01:28','�׸����θ� ','[�׸����θ� ��ȭ��ȭ 5]���𼼿콺 �θ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (522,'bangwon@naver.com','2018-12-07','10:54:10','���� �ִ� ','[���� �ִ� �����ι��� 11]����̼��� ���� ������ �ڼ� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (524,'bangwon@naver.com','2018-05-06','13:12:47','����� ����','[����� ���ļҼ� 4]������ ȭ���� - ��ſ� ���� �̼��� �ð� ���� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (525,'bangwon@naver.com','2018-09-12','16:47:23','�Ѵ��� ����','[�Ѵ��� ���� �̼���]�Ѵ��� ���� ��ȭ �̼��� - ��ġ ȣ���̿��� å�Ÿ����� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (526,'bangwon@naver.com','2018-12-26','15:35:53','��ȭ�� ���� ','��ȭ�� ���� �ְ��� ȭ���� ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (528,'bangwon@naver.com','2018-09-05','15:24:28','����� ȣ��','[����� ȣ��� ������ 21]��ȭ �ƴ� ��ŭ ������ - ��ȭ�� ����� ���� ����, 3D��ȭ�� Ư������ �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (529,'bangwon@naver.com','2018-07-14','16:16:22','�׷�Ʈ �Ҿƹ�','�׷�Ʈ �Ҿƹ����� 7���� �ʻ�ȭ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (530,'bangwon@naver.com','2018-06-08','09:51:12','������Ʈ ����','������Ʈ ������ - ������Ʈ�� ����, �ÿ� �׸��� ������ ���ع���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (531,'bangwon@naver.com','2018-05-09','15:47:11','�̼� �� �ð�','�̼� �� �ð����� �ҳ��ѱ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (532,'bangwon@naver.com','2017-06-07','16:37:43','�̴� ���ͼ� ','�̴� ���ͼ� ���� �ұ� 1 - ��� �ִ� 12���� ���� �̾߱� �ȱ׶��Ƚ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (533,'bangwon@naver.com','2018-02-02','14:31:23','�̴� ���ͼ� ','�̴� ���ͼ� ���� �ұ� 2 - ��� �ִ� 12���� ���� �̾߱� �ȱ׶��Ƚ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (534,'bangwon@naver.com','2018-07-08','10:02:29','��ȭ������','��ȭ����(��) - ������� ��ȭ������ �̼��縦 ��å�ϴ� ��ٿ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (535,'bangwon@naver.com','2018-11-08','11:16:53','���� ���带 ','���� ���带 ��� �� ������ - Ŭ���� ����, õõ�� ���� ��� ��ſ� �̶�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (536,'bangwon@naver.com','2018-05-04','12:15:52','�ִϾ� ����','[�ִϾ� ���ǵ�ȭ 1]������ ȣ�� - �����߽�Ű�� �۰��� �߷� ���� �ִϾ�Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (537,'bangwon@naver.com','2018-05-24','15:20:00','�ִϾ� ����','[�ִϾ� ���ǵ�ȭ 2]���̴� - ������ �۰��� ����� ���� �ִϾ�Ͻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (538,'bangwon@naver.com','2018-03-14','09:01:09','�ƹ��� �� ','[�ƹ��� �� ������ å�б� �ø��� 7]���亥�� ����ִ� �αٵα� ���ɽ�Ʈ�� å��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (539,'bangwon@naver.com','2018-12-14','12:30:45','�׸�å�� ��','[�׸�å�� �� ���� 9]���׹��� �̼��� å�д°�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (540,'bangwon@naver.com','2018-03-21','15:52:53','�׸��� ��, ','�׸��� ��, ������ ����! - ������ Ű��� �̼� ���� �����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (541,'bangwon@naver.com','2018-03-10','12:09:10','��������ī','[������]��ī��, �Ը���ī�� �׸��� ��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (542,'bangwon@naver.com','2018-06-08','13:25:49','�������� ��','[�������� �츮��ȭ 4]������ ģ���� �츮 ��� - �Ҹ��� ������ ���� �츮 �ڹ���  ���ϻ� ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (543,'bangwon@naver.com','2018-01-07','16:38:08','�츮 �׸��� ','�츮 �׸��� ����ִ� ��� �̾߱�  ���ϻ� ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (544,'bangwon@naver.com','2018-03-09','14:16:52','�츮 �׸��� ','�츮 �׸��� ����ִ� �ڿ� �̾߱�  ���ϻ� ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (545,'bangwon@naver.com','2017-12-07','17:40:57','û�ҳ��� ��','[û�ҳ��� ���� �����б� ������Ʈ Why Not? 6] ���� ã���ϴ� �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (546,'bangwon@naver.com','2018-07-14','12:11:22','����� ����','[����� ����� �� 5]�������� ����б� ���̾߱�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (547,'bangwon@naver.com','2018-08-29','16:59:18','û�ҳ��� ��','[û�ҳ��� �� �˾ƾ� �� �۷ι����� �������丮 4]�Ȼ� - ����� ���Ƿ� ����� ���е��ƺϽ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (548,'bangwon@naver.com','2018-08-10','12:31:24','û�ҳ��� ��','[û�ҳ��� �� �˾ƾ� �� �۷ι����� �������丮 3]��Ű�ǵ�� - ������ ��� ������ ��� ���е��ƺϽ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (549,'bangwon@naver.com','2019-01-06','09:40:59','û�ҳ� ��','[û�ҳ� ��]�ܸ����� ���� �Ǹ� - ���������� ���� ������ ������ ��������ü��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (550,'bangwon@naver.com','2018-07-19','14:34:00','���赵���ĳ�','[���赵���ĳ�� 5]�ø��� ���μ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (552,'bangwon@naver.com','2017-12-18','16:00:05','�� ū �','[�� ū ��� �ι��� �ø��� 3]��, �����̰� �����̶��? - ������ڰ� ����ִ� ��� ����� �̾߱� �׸���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (553,'bangwon@naver.com','2018-06-08','10:23:19','10�� ���� ','10�� ���� ��� ������ �Ǿ�� �۴�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (554,'bangwon@naver.com','2019-01-29','10:07:33','���� ��������','���� �������� ������ �ٲ� ����� �۴���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (556,'bangwon@naver.com','2018-10-14','14:37:37','�ʶ� ���� ','[�ʶ� ���� ���Ҿ��б� 8]��̰� ��̸� ���´� - ���� ��̻� �����ڵ��� ����ִ� �α� Ȱ�� �̾߱� �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (557,'bangwon@naver.com','2018-04-08','09:03:43','�ް� û�ҳ�','[�ް� û�ҳ� ���缭 �ø��� ���Ǻ��� 1]�ź��̴� �� �޸��� ���ָ� ������? �ް�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (558,'bangwon@naver.com','2018-07-01','13:08:26','�ް� û�ҳ�','[�ް� û�ҳ� ���缭 �ø��� ���Ǻ��� 2]�ʴ븦 ���� ���� �ܼ�Ʈ �ް�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (559,'bangwon@naver.com','2018-03-21','15:55:18','�ٸ� �� ����','�ٸ� �� ���� �� �ƴ��ݾƿ� - SBS����� �Ƹ��ٿ� ������ ���� �ٹ�ȭ �̾߱� �ް�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (560,'bangwon@naver.com','2018-11-07','16:11:24','å, ��̰� ','å, ��̰� �д� �� - ��̿��� ����ִ� ���� ���� å �̾߱� �޲ٴ²�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (562,'bangwon@naver.com','2018-08-01','10:00:15','������11','[������11]��������, ���� �ʿ��Ѱ�? ���λ���å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (563,'bangwon@naver.com','2018-03-18','11:58:38','������8��','[������8]�̵���� ��, �����ؾ� �ұ�? ���λ���å',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (564,'bangwon@naver.com','2018-02-23','12:00:22','�ʸ��б� ��','[�ʸ��б� �������� 7]��ٴ� �� - ���� ��ƾ� ������ ������! �ʸ��б�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (566,'bangwon@naver.com','2017-12-03','15:35:39','������ �ڶ�','[������ �ڶ�� ���� �� 1]���� ��? ���� ��! ���������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (567,'bangwon@naver.com','2018-03-08','11:30:52','�����׵� ����','�����׵� ���� �� �ִ� �� - �б����¿� ��� �ְ� �¼��� �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (568,'bangwon@naver.com','2018-07-22','15:01:34','I need','[I need �ø��� 8](����, �б� ����!)���� �б� ������ ģ���� �ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (569,'bangwon@naver.com','2017-11-30','10:39:30','�ʴ�, �����','�ʴ�, ������ �ο��� - �� � ��Ŭ �Ŵ� �г� �ذ�� ���ε�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (571,'bangwon@naver.com','2019-01-16','16:13:47','�ų��� ���','(�ų��� ��� ��հ� ����!)���� �ϱ� ���� ���ε����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (572,'bangwon@naver.com','2018-05-20','16:41:34','�Ӵ�� �ø�','[�Ӵ�� �ø��� 4]�Ӵ�� �޾ƾ��� ��ȸ - �Ӵ�� ���ѻ� ���� �������� �Ǵ�! ���ε����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (574,'bangwon@naver.com','2018-11-18','17:30:10','�̷���������','[�̷����������� 7]������ ������ ���� ���� �̷�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (575,'bangwon@naver.com','2018-08-14','15:18:01','û�ҳ��� ��','[û�ҳ��� ���� LIVE �������� 2]������� X-���� �̷���â',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (576,'bangwon@naver.com','2018-11-07','15:57:38','û�ҳ��� ��','[û�ҳ��� ���� LIVE �������� 3]���ѹα� ������ �̷���â',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (578,'bangwon@naver.com','2018-04-30','11:48:41','��ȭ ���ڱ�','[��ȭ ���ڱ� 10]���� ���� �� - �Ｚ�ݵ�ü ������ ��� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (579,'bangwon@naver.com','2018-04-30','16:07:21','��ȭ ���ڱ�','[��ȭ ���ڱ� 9]��� ���� - �Ｚ�� ���� �� �� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (580,'bangwon@naver.com','2018-02-14','12:03:15','���빮ȭ ��','[���빮ȭ �׸�å �ְų���]���������� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (582,'bangwon@naver.com','2018-12-29','09:54:57','��Ű ������','[��Ű ������ ����Ʈ 15]�缭�� ���ϴ� �缭 - 21���� �缭���� �����ϰ� �о���� �缭�� ���� ��Ű',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (583,'bangwon@naver.com','2018-12-05','12:15:16','��� ����','��� ���� �ϱذ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (585,'bangwon@naver.com','2018-08-29','12:51:04','14�� ������','14�� ������ ���� - �θ�԰� �Բ� �ϴ� û�ҳ� ����ķ�� �ϸ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (586,'bangwon@naver.com','2018-05-09','12:15:36','���ϸ� ������','���ϸ� ������ �ʴ� - �츮 �ô� ���� ���信�� ��� ������ û�� ���  �Ͻ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (587,'bangwon@naver.com','2018-04-19','17:26:18','�ʴ�, å����','�ʴ�, å���� ���� ���� - å���� ������ ��, ���� ���並 ������ �Ͼ�ũ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (588,'bangwon@naver.com','2018-12-23','16:10:30','�ִϾ���� ','[�ִϾ���� 3. �Ź������]����Ʈ���� ������ �ٲ۴ٰ�? ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (589,'bangwon@naver.com','2018-08-26','13:03:21','��ȸ�� ���� ','��ȸ�� ���� 1 - ��, �Ѹ�, ����� �� ���� ���� ������? : �츮����� ������ ������ġ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (590,'bangwon@naver.com','2018-10-24','13:20:57','����� ����','[����� ���ļҼ� 8]�� �ص� ������ -���� ã�� ������ �ɸ��� ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (591,'bangwon@naver.com','2018-07-19','12:59:01','�ϰ���� 1','[�ϰ���� 10 ���ǻ�]���� ¤�� �����?  ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (592,'bangwon@naver.com','2018-05-11','17:24:20','�ϰ���� 8','[�ϰ���� 8 �ʵ��б� ������]����, �б� ����! ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (593,'bangwon@naver.com','2018-10-21','15:58:07','������ ��, ','������ ��, ����ϼ���? ��������ǻ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (594,'bangwon@naver.com','2018-04-11','09:09:34','���� �˾ƿ�','[���� �˾ƿ� 6 ���� ��ȭ]�ڹ��� ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (595,'bangwon@naver.com','2018-05-24','17:58:48','���� �˾ƿ�','[���� �˾ƿ� 7 �ų��� ��Ȱ]������ ���ĸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (596,'bangwon@naver.com','2018-04-06','17:23:19','���� ������','[���� ������ �� 10]���, �ʴ� ������? ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (597,'bangwon@naver.com','2018-06-29','11:22:55','���� ������','[���� ������ �� 11]���ִ� ¥����� ���� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (598,'bangwon@naver.com','2018-12-24','10:22:09','���� ������','[���� ������ �� 13]�뺧 ��ȭ�� ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (599,'bangwon@naver.com','2018-11-25','12:46:51','���� ���п� ','���� ���п� ���� �ʾҴ� - ���� ���� �ǰ� ���� ���� �� ���� û����� ���� �ִ� ���� �츲Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (600,'bangwon@naver.com','2017-12-07','17:05:24','���� ������ ','���� ������ ������ �Ѵ� - ������ ����� �㹫�� ����� ����� ���� �츲Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (601,'chunhyang@naver.com','2018-03-07','13:52:47','��ȸ�� ������','��ȸ�� �������� Ű��� �ù� ������ - ��ȸ �������� ����ִ� �����̾߱� �츲Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (602,'chunhyang@naver.com','2018-03-29','16:08:40','������� ��','[������� ���ĸ��� 5]������ �ٲ� ���� ���ڵ� - �Բ� ��� ������ ���� ���� �������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (603,'chunhyang@naver.com','2018-12-07','15:56:51','����� ȣ��','[����� ȣ��� ������ 22]���� ���۱��� �־��! - ����� �������� ������ �� ���۱� �̾߱� ���������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (604,'chunhyang@naver.com','2018-08-01','10:04:50','������, ����','������, ���� ���������� - ������ �� ��̸� ���� �ɸ� ġ�� ���� ��������¾��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (605,'chunhyang@naver.com','2019-01-11','13:15:38','�ʴ� Ŀ�� ��','�ʴ� Ŀ�� ���� �ɷ�? - 10�� �� ������ �ٲ� ���̵��� �� ���� �Ҷ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (606,'chunhyang@naver.com','2018-12-02','09:57:36','���ݶ� ����','[���ݶ� ���������� 1]�̿������� � ������ ���? ���ݶ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (607,'chunhyang@naver.com','2018-10-21','10:22:40','�ʴ���� ��','[�ʴ���� ���� �μ�������]������ �� �Ƹ��ٿ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (608,'chunhyang@naver.com','2018-08-16','09:10:28','�ʴ���� ��','[�ʴ���� ���� �μ�������]�µ� �Ƹ��ٿ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (609,'chunhyang@naver.com','2018-02-23','16:54:53','���� ���� ','[���� ���� �б� 19]��� ���� ������ ���� �� - ���� ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (610,'chunhyang@naver.com','2018-08-19','13:12:08','���� ���� ','[���� ���� �б� 20]��������� ���� �б� - �׸��� ��ȭ ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (611,'chunhyang@naver.com','2018-04-19','11:39:16','���̼��� ��','[���̼��� ����� 32]�ְ����� ���ֵ� �̾߱� - ��� ���� �ι��� ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (612,'chunhyang@naver.com','2018-09-24','10:08:48','�츮�˰� ��','[�츮�˰� ���躸�� 4]����� ���� �Ǿ���� Ż�� ���̼���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (614,'chunhyang@naver.com','2018-08-03','11:07:04','�������� ����','�������� ���� ö��ķ�� �˷�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (615,'chunhyang@naver.com','2018-07-07','12:44:44','�״��, �','�״��, ��� �� ���ΰ� ��ö��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (616,'chunhyang@naver.com','2018-05-24','12:00:03','��� �ι�','[��� �ι� �ø��� 6]���� ��ġ�� � ���ϱ��? ��̳�������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (618,'chunhyang@naver.com','2018-01-13','12:59:50','�ƺ�, �濵��','�ƺ�, �濵���� ������? - �ƺ��� ����ִ� 10�븦 ���� �濵 �̾߱� ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (619,'chunhyang@naver.com','2018-09-12','11:03:44','�츮û�ҳⱳ','[�츮û�ҳⱳ�� ������ 6]������ �ٲ� �Ƹ��ٿ� ��� - ���̵��� ������ �� ���� ���� ����� �츮����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (620,'chunhyang@naver.com','2018-09-15','12:44:09','���л�����б�','���л�����б� ������ û�ҳ� - �б��� ��� ���� �ϰ� ���� ���� �츮�б�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (622,'chunhyang@naver.com','2018-07-24','13:21:37','�ູ�� ����','[�ູ�� ���� �׸�å 1]������ ���� ������ �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (623,'chunhyang@naver.com','2018-07-24','17:32:30','�ູ�� ����','[�ູ�� ���� �׸�å 2]���� ������ �Ӹ�ī�� ���� �����ִϾ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (624,'chunhyang@naver.com','2018-07-29','12:04:32','Mom - ��','Mom - �� ���� �������� ���Ȱ ����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (626,'chunhyang@naver.com','2018-01-18','10:18:06','�������� ����','�������� ���� ���丵 - ������ ����� Ǫ�� 18���� ���� ���� �̼�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (627,'chunhyang@naver.com','2018-10-24','14:51:07','�������, ','�������, ��� �츮���� ����� - ����������� ����� �츮�� 100 ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (628,'chunhyang@naver.com','2018-11-29','10:09:04','�ʵ��л��� ','[�ʵ��л��� �� ������ �� ���ֻ�ȸ �̾߱� 8]�پ��ϴٴ� �� - �츮 ������ ������ �ʸ��� ����ϴü�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (630,'chunhyang@naver.com','2018-07-13','17:05:38','�μ��� ����','[�μ��� ���ʸ� ����ִ� ó�� �ι��е�ȭ 3]��ũ���׽� �������� �౸�� �ִϾ�迵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (631,'chunhyang@naver.com','2018-03-28','12:02:59','�Ѵ��� ����','[�Ѵ��� ���� ���� ���빮ȭ 8]�ڿ��� ������ ���� �츮 �ʰ� ��ű� �ִϾ�RHK',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (633,'chunhyang@naver.com','2018-06-08','10:03:47','�츮 �Բ� ��','�츮 �Բ� �����! - �Ƹ��ٿ� ������ ���� �ູ ������ ������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (634,'chunhyang@naver.com','2018-02-02','10:35:51','��ȸ�� ģ��','[��ȸ�� ģ������ å - ��ȭ]�츮 �ڿ����� �̾߱� - ������ �츮���� õ����买, ��ȭ �� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (636,'chunhyang@naver.com','2018-02-28','10:02:36','�ҵ��ҵ� ��','[�ҵ��ҵ� �α� ���� 2]�츮�� �ٲ� �� �־�! å�д°�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (637,'chunhyang@naver.com','2017-12-03','09:24:46','�츮��ȭ�׸�','[�츮��ȭ�׸�å �°����� 13]��ġ Ư���� å�д°�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (638,'chunhyang@naver.com','2018-07-21','13:01:52','10�븦 ��','[10�븦 ���� å���� �ø��� 7]10��� ���ϴ� �̵�� - �ռ��� �������� ����ִ� ���� ã�� �̵�� ���� ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (640,'chunhyang@naver.com','2018-04-02','13:22:22','��㼭�� û','[��㼭�� û�ҳ��ι��б���-��]������ ���̶� �����ϱ�? ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (641,'chunhyang@naver.com','2018-12-19','17:10:18','��㼭�� û','[��㼭�� û�ҳ��ι��б���-��]���� � ���� ��ƾ� �ູ�ұ�? ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (643,'chunhyang@naver.com','2018-03-24','14:07:29','������ ��Ź��','������ ��Ź�� - ���嵵 ���� ���� û���� ���� �� ã�� ������Ʈ û����̵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (644,'chunhyang@naver.com','2018-11-03','14:16:31','���μ��α׸�','[���μ��α׸�å 4]���忡 ���� ���� �� �־�� �ʷϰ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (645,'chunhyang@naver.com','2018-12-24','09:01:15','���μ��α׸�','[���μ��α׸�å 5]������ �ӳ��� ���� �ʷϰ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (647,'chunhyang@naver.com','2018-05-14','10:35:28','�����Ƶ��Ǹ�','(�����Ƶ��Ǹ��������� �˾ƺ���)���� ��̸� ���� ������ ��� Ű�ٸ�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (648,'chunhyang@naver.com','2018-08-22','16:12:22','������ �ι���','������ �ι��� �ϱ� Ž',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (649,'chunhyang@naver.com','2018-03-30','12:03:19','���ߴ� ��ȭ ','���ߴ� ��ȭ  Ž',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (625,'chunhyang@naver.com','2018-03-14','15:24:48','�̼� û�ҳ�','[�̼� û�ҳ� ���� 2]���ڿ� ���ڵ��� ������ ���� �̼�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (629,'chunhyang@naver.com','2018-04-21','13:02:03','�� ���� ��','(�� ���� ����)���� �ѹ��� �ִϾ�迵��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (632,'chunhyang@naver.com','2018-06-08','09:42:46','�� ������ ','(�� ������ ����)�׸� ������ ��� ��������',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (635,'chunhyang@naver.com','2018-07-08','15:00:22','��ȸ�� ģ��','[��ȸ�� ģ������ å - �ڿ�]����Ʈ �� ���� �� â��',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (639,'chunhyang@naver.com','2018-12-23','11:42:39','10�븦 ��','[10�븦 ���� å���� �ø��� 8]10��� ���ϴ� ���� ��� ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (642,'chunhyang@naver.com','2018-10-18','12:10:08','���ڼ��� �ѱ�','���ڼ��� �ѱ����� �����ϱ�-���� ���� ��� ���� �ѱ��� ö���Ϳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (646,'chunhyang@naver.com','2018-10-11','16:05:55','���Ҿ� ���','[���Ҿ� ��� ���� 41](��� ��ݰ���)����쵹 ���� ������ �ʷϰ�����',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (675,'chunhyang@naver.com','2018-09-13','15:08:28','���� ���� ','[���� ���� �ٹ�ȭ 10](�ܾ߹ٵ� �ε�) ���׻� ���� ���� �Ѽּ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (679,'chunhyang@naver.com','2018-04-03','14:38:22','���δ� ���ϳ�','���δ� ���ϳ�? �ر׸�',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (681,'chunhyang@naver.com','2018-03-19','15:59:12','�Ǿ�� �츮','[�Ǿ�� �츮 ��ȭ 3]�ѽ�, ���ָ� ���� ��� �ؿͳ���',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (685,'chunhyang@naver.com','2018-05-02','11:00:02','ö�п��� �̷�','ö�п��� �̷��� ���� - �̷��� �д� 22���� ��Ȱ �� ȭ�� �޸ӴϽ�Ʈ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (9632946836,'gildong@naver.com','2019-04-17','15:50:18','������ ���İ�(�ŵ�����)','�ŵ������� ��ȭ�̾߱�',0,'6e9c2e4d-3c56-404e-b9e8-e21818a49928daum_net_20120201_105455_syh1896.jpg');
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (3609639468,'bangwon@naver.com','2019-04-17','16:22:09','���������Ƿ�','���� ������ �յ��� �̾߱�',2,'7e1fd943-a71b-42d5-aecc-b00d847b70b9����.jpg');
REM INSERTING into MYBTS.TBL_BOOK
SET DEFINE OFF;
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (8,'juhoon12','24875694','�����ڹ��ΰ���?','2019-03-15',3.5,'�ڹٸ� ������');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (2,'gildong','9788975607547','�����ߵ�123','2019-03-14',3.5,'�ߵ��ߵ�');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (3,'gildong','9788975607547','�����ߵ�11111111','2019-03-14',5,'�ߵ��ߵ�');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (4,'bogo','9788975607547','�����ߵ�2','2019-03-14',4.5,'�ߵ��ߵ�');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (5,'gildong','9788975607547','�����ߵ�2','2019-03-14',4.5,'�ߵ��ߵ�');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (6,'bogo','9788975607547','�����ߵ�3','2019-03-14',4.5,'�ߵ��ߵ�');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (7,'gildong','9788975607547','�����ߵ�3','2019-03-14',4.5,'�ߵ��ߵ�');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (21,'bogo','2487569422','�������ڻ���','2019-03-18',3.5,'����');
REM INSERTING into MYBTS.TBL_BOOKS
SET DEFINE OFF;
Insert into MYBTS.TBL_BOOKS (ID,TB_NAME,TB_COMP,TB_AUTH,TB_PRICE) values (1,'�����ڹ�','�������̵��','������',30000);
Insert into MYBTS.TBL_BOOKS (ID,TB_NAME,TB_COMP,TB_AUTH,TB_PRICE) values (2,'����� ��/��','��������','�ڼ���',20000);
REM INSERTING into MYBTS.TBL_DEPT
SET DEFINE OFF;
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0001','��â�õ�������','Ȳ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0002','�Ѽ��ÿ��ν���(��)','�豤��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0003','�ż��������ֹ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0004','�����ٳõ�','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0005','�θ�F&E','���ؼ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0006','�Ҹ������ֹ�','ȫ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0007','(��)����365','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0008','�����Ϸ�����(������)','���±�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0009','�Ե��������Ϸ�(�����Ե�)','ȣ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0010','�Ȼ�ñ�','�迬��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0011','�Ե��������Ϸ�(�ƻ�Ե�)','����ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0012','�Ե������Ͼ(�ű��ֳ���)','�㿵��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0013','�Ե��������Ϸ�(���������Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0014','�ο����','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0015','�������(�߶��Ե�)','�弱��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0016','�Ե��뼺�������Ϸ�(����õ�Ե�)','����ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0017','�������Ǳ�','�躹��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0018','��ȭ���ռ���(���ͻ�Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0019','����������(���ֵ����Ե�)','�輱��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0020','L&R��ũ','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0021','�Ե�SK�������Ϸ���������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0022','(��)�̷����ؿ���ġ','�迵��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0023','�Ե����ϼ���','�ڼ�ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0024','LG���(�����ñ�)','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0025','������Ǳ�','��ö��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0026','(��)Ƽ����Ǫ��','����Ÿ ����Ϸ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0027','�Ե��õ�','����ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0028','�����Ե�','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0029','��������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0030','�Ե������Ͼ(��õ)','�鼺��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0031','�������Ǳ�','�ں���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0032','�ݼ���⼭��','�ȿ�ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0033','����ENG','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0034','�´ް�����(�泲�Ե�)','�ֱ�ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0035','(��)������Ǳ�','��ö��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0036','õ�ȺϺηԵ�','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0037','�����õ�','���м�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0038','�������','�ּ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0039','��������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0040','��ź��Ϸ�(�����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0041','���ϷԵ��������Ϸ�(���ֺϱ��Ե�)','Ȳ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0042','���ϻ��(���ͻ�Ե�)','�ּ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0043','�����Ǿ�','���¿�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0044','���������Ͼ(�����߱��Ե�)','��ȸ��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0045','ȭ��Ե��������Ϸ�(ȭ��Ե�)','�迵ȭ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0046','LG���Ǳ�','��빬');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0047','���������Ͼ(���ηԵ�)','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0048','���ϼ���(����Ե�)','����ȯ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0049','�����Ǹ�(��)','�̻���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0050','���γÿ�','����ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0051','���Ϻ��Ϸ�(�����ַԵ�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0052','�ȵ�����','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0053','�����õ�','��۽�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0054','������(����߱��Ե�)','����ȯ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0055','û��(�����Ե�)','�ѱԽ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0056','�Ÿ�ENG�Ե����Ϸ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0057','�Ե��õ�����(����)','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0058','�������Ǳ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0059','��������','�̱���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0060','���� �Ե����Ϸ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0061','�Ե��������Ϸ����δ븮��(���ηԵ�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0062','�������Ǳ���������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0063','����������(�����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0064','��ȣ����','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0065','������ġ����','�ż���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0066','��.��.���̽ý���','�ڴ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0067','�¾������ǳ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0068','���̽��ֹ�õ���ȭ��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0069','�����׷Ե�','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0070','�Ե��������Ϸ����븮��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0071','�̷����Ǳⷣ��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0072','���빮�Ե�','�Ӻ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0073','�溸�÷�Ʈ����','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0074','�Ե����Ϸ�(��������)','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0075','�Ե����븮��(���Ե�)','�ں���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0076','����õ�','�Ű��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0077','�Ե��������Ϸ�(�޼��Ե�)','�ǿ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0078','����õ�Ե�','��̼�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0079','(��)���Ͽ����Ͼ','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0080','(��)�̷����','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0081','�Ե��������Ϸ����곻���Ե�(������Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0082','�Ｚ���Ǳ⼭��������(��������)','Ź���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0083','������Ǳ�','�鱸��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0084','�ϺηԵ��������Ϸ�(���ּ��ϱ��Ե�)','�ڱ⿵');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0085','�Ե�����(��õ)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0086','�Ե��ÿ����(���λ�ñ�)','�������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0087','�����ñ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0088','�Ե��������Ϸ����񽺼�ŸJ(�����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0089','�μ�����','�ű��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0090','�Ե�������(���طԵ�)','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0091','�Ե��������Ϸ�(õ�ȳ��ηԵ�)','�̰���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0092','(��)��ȣ','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0093','�������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0094','�������ջ��','�̰��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0095','�Ե��õ�����(����)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0096','�Ｚ����','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0097','�Ե��������(����)','�̱⿵');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0098','��곲���Ե�','�̺���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0099','���񽺹�ũ','���ñ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0100','�̳̽õ�','�ڰ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0101','�¾����Ǳ⼭��','�㼺��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0102','�Ե����Ϸ���������(���ֳ���)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0103','���̷Ե�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0104','��������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0105','�źλ�Ե�(�����ϷԵ�)','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0106','�뼺���Ǳ�','�̱⿭');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0107','���÷��� �ý���','�Ӽ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0108','����������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0109','�����Ե�','����ȭ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0110','���ʷԵ�','�ڿ뱤');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0111','����ENG(�����ַԵ�)','�輺��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0112','���ǷԵ��ÿ����(����)','�ѽ�ȯ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0113','�츮�õ�','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0114','���Ϸ����(�����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0115','�������','���ط�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0116','�����ֹ����׸���','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0117','�Ѽ����ջ��','��ȫ��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0118','�뺹�����Ͼ(���Ⱦ�Ե�)','���ѱ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0119','�̷��õ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0120','(��)���翣���Ͼ(���ֳ����Ե�)','��ⱹ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0121','(��)�����̿���(�����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0122','�����������(�����Ե�)','��ȿ��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0123','â���Ե�','���ؼ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0124','���ѿ�����(��â�Ե�)','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0125','�žųõ�','�輺ǥ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0126','(��)�ѿ������ý���','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0127','�����õ��������','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0128','���ִ븮��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0129','������','��μ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0130','��������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0131','�Ｚ���Ǽ���','�̰���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0132','�Ե����Ǳ����ϻ��','�躴��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0133','���Ͽ����Ͼ(���ʰ���)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0134','�Ե��������Ϸ����δ븮��(���ηԵ�)','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0135','���Ե�','����ȯ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0136','�Ե��������Ϸ�(��õ�Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0137','���ϷԵ��ñ�(���ϳñ�)','���½�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0138','�￵�õ����','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0139','������Ƽ��(��)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0140','�ξ�õ�','�ǿ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0141','���Ż��','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0142','����ENG(�����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0143','�����Ե�(�Ե��������Ϸ�����)','�̿뼱');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0144','�÷������(���ֺϺ�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0145','�Ե����Ǳ�','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0146','���ϼ���','Ź��ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0147','����������(��õ�Ե�)','����ȯ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0148','������ռ���(�ϵ��Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0149','�ϵ�����','�ȿ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0150','���Ϻ��Ϸ�(���ϷԵ�)','�ɰ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0151','�뼺���ռ���(�����Ե�)','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0152','���ϻ�ñ�(�ſ��ڵ��Ǹű�)','Ȳ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0153','�����Ե�','��â��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0154','�Ե��������Ϸ�(�ȼ��Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0155','�¼�������','���±�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0156','���ϱ��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0157','�Ե�������⵿��������(���������Ե�)','�ڿ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0158','�Ե�����','õ�뼺');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0159','�����õ��ֹ�','���ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0160','������Ŭ�÷���','ȫ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0161','�¾翭��(�����Ե�)','��̼�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0162','���ENG(�����ַԵ�)','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0163','�������վ��̽�ũ��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0164','(��)�ο����̽���ũ','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0165','�������Ͼ(�ϻ�Ե�)','�̸���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0166','�����̿���','��ȸ��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0167','�л�Ե�','�ڱ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0168','�׸�������','�ڿ뼭');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0169','����������(���ֱ���Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0170','����Ե��������Ϸ�(����Ե�)','���ռ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0171','�Ե��������Ϸ�÷����(����÷�ܷԵ�)','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0172','(��)�μ��۽�','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0173','���λ��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0174','�ڸ��Ƴ�.����(���곲�ηԵ�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0175','û�ַԵ����Ϸ�','���強');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0176','�Ե��������Ϸ� �źϱ���','�輺��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0177','�ż�õ�Ե�(�Ե��������Ϸ�)','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0178','�������հ���','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0179','�ϸ��õ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0180','�Ҹ��ñ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0181','���ENG(�����ַԵ�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0182','�Ե��������Ϸ�����(������)','���繮');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0183','�ϳ�����(��)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0184','�ߺμ���','�ο���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0185','�ſ���','���ְ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0186','�����߾�����','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0187','���������̽�','����â');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0188','������','��ä��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0189','�����̷Ե�','���Ѽ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0190','��ϳÿ�','���ؿ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0191','(��)��âENG','�ֿ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0192','���ֻＺ����','�ֺ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0193','���������Ͼ','����ö');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0194','COOL �ó���ý���','�ǻ��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0195','�츮�õ�','�輱��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0196','���ϻ��(�����ַԵ�)','����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0197','���γÿ����(��õ)','���ο�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0198','���Ǳ����','Ȳ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0199','���ÿ�����','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0200','���ϰ������(���ַԵ�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0201','���λ�Ե�(�����Ե�)','�ڹΰ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0202','�Ե��������Ϸ�(����)','�ֻ��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0203','�Ե������Ͼ(��õ)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0204','���̿���','���μ�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0205','�����õ�','ȫ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0206','���ҳõ�','�̱���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0207','�Ե��������Ϸ�(����Ե�)','�̰��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0208','�츮���','�μ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0209','��������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0210','���̿������Ͼ','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0211','�������','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0212','���³ÿ�','��̿�');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0213','�Ե����Ϸ�(�����Ե�(�ű�)','�赿��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0214','(��)�����̾ؾ�','�̼���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0215','�Ű��Ե�','�ǿ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0216','�����(���ɷԵ�)','��â��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0217','���ַԵ�����õ�����','�漺��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0218','������ϵ�Ϸ�(�ų����Ե�)','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0219','������ũ(����������)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0220','�Ե��������Ϸ�����(�������Ե�)','����ȯ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0221','�����õ�','�����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0222','���Ǳ⼭��','�ǿ���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0223','�������Ϸ�A/S��Ÿ(�Ȼ�Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0224','���ϱ��(�����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0225','�����','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0226','�����Ǹ�(��)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0227','�ǿ����(�ų���Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0228','��������(����Ե�)','��ȣ��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0229','����ENG(�����ַԵ�)','ȫ����');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0230','�ΰ�Ե�(�����Ե�)','����ȣ');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0231','�λ�Ư��','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0232','���񽺸�ī','�迬��');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0233','���ֺϼ����Ե�(���ֺϼ����Ե�)','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0234','���ֳõ�','������');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0235','����Ե�','���');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0236','����ÿ�','�輺��');
REM INSERTING into MYBTS.TBL_EMAIL
SET DEFINE OFF;
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (29,'juhoon12@nate.com','gildong@naver.com','2019-03-29','15:34:04','test1','testst','84ab2ede-9e78-4860-a38d-2f1cfa955fe03.jpg','c629dde6-c89e-4146-aad7-cbbb2f2dfe713.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (30,'juhoon12@nate.com','gildong@naver.com','2019-03-29','15:33:05','����ȿ�� ��','��������������','f7c2327d-da93-4eb0-bb21-14f02ae9dd573.jpg','7d3d5141-0b8a-4a90-8a19-9575a3b0ba322013-02-14_145922.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (23,'gildong@naver.com','juhoon12@nate.com','2019-03-29','15:39:51','���� ��ź','fseagaesgdgaeaesaf','8151f814-d821-4e04-ad6f-379184e9510d0000060149_001_20181005230653887.JPG','859f5e80-4826-4875-9472-086ae6b8841820121112_1352691529_29313000_1_59_20121112124505.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (31,'gildong@naver.com','gildong@naver.com','2019-03-29','15:42:20','�ƹ��͵� ����','123','51967d0b-b528-435f-96fa-9fa6ec94bbfd20121112_1352691529_29313000_1_59_20121112124505.jpg','c8f37fb9-e2cb-49ae-be30-fd09d4b0fc1720121112_1352691529_29313000_1_59_20121112124505.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (32,'huny6100@naver.com','huny6100@naver.com','2019-03-29','16:34:30','�׽�Ʈ��12','�׽�Ʈ',null,null);
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (28,'gildong@naver.com','gildong@naver.com','2019-03-29','15:41:16','���� ��ź��ź','������ź','08fa0d0f-d202-4de2-aaa5-57ddba2308072013-02-14_145922.jpg','6d22c947-c310-4662-9597-3fb4945a087a3.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (26,'juhoon12@nate.com','juhoon12@nate.com','2019-03-29','15:28:45','������������','dageadfsageadage','9b4b8fd8-9f9e-4e53-b5b9-697b4c624ebf2642_L_1325473161.jpg','819baf7e-4425-4d95-8098-779bb53bad6f0000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (27,'juhoon12@nate.com','juhoon12@nate.com','2019-03-29','11:27:03','�����̴� ����',null,'edbfd707-291a-4b4b-bf29-01c6342253e42642_L_1325473161.jpg','5b2e29df-c59a-4578-99ed-2c2000dbacda0000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (21,'juhoon12@nate.com','gildong@naver.com','2019-03-29','13:23:38','test','testtest','650bb99f-2933-4524-9398-9d2e3f63babc2642_L_1325473161.jpg','c1ef64b9-4bd6-4e1b-b1cb-b4d871328f760000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (42,'huny6100@naver.com','hunysarang12@naver.com','2019-04-01','09:33:52','test','test','1210424b-16a3-4983-8125-50c7f4be40fc2642_L_1325473161.jpg','0c1cfc24-5a6b-4f6d-b54c-de8b0998968e0000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (43,'huny6100@naver.com','hunysarang12@naver.com','2019-04-01','09:34:14','����ȿ','����ȿ',null,'0e7a650d-1ab9-4796-a609-b359ec8dae383.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (41,'huny6100@naver.com','huny6100@naver.com','2019-04-01','09:16:13','������ ������','�������Դϴ�',null,null);
REM INSERTING into MYBTS.TBL_EMAIL_MEMBER
SET DEFINE OFF;
Insert into MYBTS.TBL_EMAIL_MEMBER (M_ID,M_USERID,M_PASSWORD,M_MAILADDRESS,M_USERNAME,M_ADDR,M_TEL) values (1,'juhoon12','$2a$04$/ydvNQ1krJG4Pck5XBobMeOaPBl.oAJyZt8BwATW0Y3ib7R1sEex6','juhoon12@nate.com','����','����ϵ� ������','010-6775-6100');
Insert into MYBTS.TBL_EMAIL_MEMBER (M_ID,M_USERID,M_PASSWORD,M_MAILADDRESS,M_USERNAME,M_ADDR,M_TEL) values (2,'gildong','$2a$04$hRrBAknqYvnfLKXudiat8OcsGBohH01mS15WmLmRV.x4ORrkc7B42','gildong@naver.com','ȫ�浿','���󳲵� �强��','061-658-7896');
Insert into MYBTS.TBL_EMAIL_MEMBER (M_ID,M_USERID,M_PASSWORD,M_MAILADDRESS,M_USERNAME,M_ADDR,M_TEL) values (22,'huny6100','$2a$04$nMTEXJ8adr8rxAS257X8xO2MKpew2ZN1eradz.o0JoZMtQrhZjaHm','huny6100@naver.com','�Ĵ�','����ϵ� ������','010-6775-6100');
REM INSERTING into MYBTS.TBL_FILES
SET DEFINE OFF;
Insert into MYBTS.TBL_FILES (ID,PARENT_ID,FILE_NAME,SAVE_FILE_NAME) values (29,42,'0000147617_001_20181031095013551.jpg','374a7b61-1d2a-4f22-837e-9f8a399b8fc80000147617_001_20181031095013551.jpg');
Insert into MYBTS.TBL_FILES (ID,PARENT_ID,FILE_NAME,SAVE_FILE_NAME) values (30,43,'0000147617_001_20181031095013551.jpg','96d5abc4-c9bc-4f60-ad09-4989fa7b32340000147617_001_20181031095013551.jpg');
REM INSERTING into MYBTS.TBL_HOBBY
SET DEFINE OFF;
REM INSERTING into MYBTS.TBL_MEMBER
SET DEFINE OFF;
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('juhoon12@nate.com','$2a$10$fBz8x/WabUMmXtqNEEKxZuAjqDWHp78/EW2spZ2IDrTci8P6kEV7K','����','67756100',null,'���� ������',null,null);
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('chunhyang@naver.com','$2a$10$IDthKZxxFTQemiiM7rfd3eCGYN7HOAb.NroVePF8FUGsihH6G0B76','������','4579658',null,'���� ������',null,null);
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('bangwon@naver.com','$2a$10$cvm7b7GkEhz55W0JM9nK5.PaEz2O4PQAlO2Jkiva51Bfa00rUjxJG','�̹��','0635678945',null,'���� ���ֽ�',null,null);
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('gildong@naver.com','$2a$10$/MuRsRzjro3EL5RdiB3f5.JklX5wMxI7v/b6cpWV8truL.dMtnUp2','ȫ�浿','123456987',null,'���� �强��',null,null);
REM INSERTING into MYBTS.TBL_MEMO
SET DEFINE OFF;
Insert into MYBTS.TBL_MEMO (ID,M_AUTH,M_DATE,M_SUBJECT,M_TEXT) values (42,'gildong','2019-03-13','���̴�','���̴�');
Insert into MYBTS.TBL_MEMO (ID,M_AUTH,M_DATE,M_SUBJECT,M_TEXT) values (43,'gildong','2019-03-13','���̴�','���̴�');
REM INSERTING into MYBTS.TBL_MENU
SET DEFINE OFF;
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0001     ',null,'Ȩ','/');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0002     ',null,'�Խ���','board');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0003     ',null,'������','admin');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0004     ','D0003     ','�ý��ۺ���','system');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0005     ','D0003     ','ȸ������','member');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0006     ','D0003     ','�޴�����','menu');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0007     ',null,'�޸���','#');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0008     ','D0007     ','�޸���2','memo1');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0009     ','D0007     ','�޸���3','memo2');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0010     ','D0007     ','�޸���4','memo3');
REM INSERTING into MYBTS.TBL_SCORE
SET DEFINE OFF;
Insert into MYBTS.TBL_SCORE (ID,ST_NUM,SC_SS_CODE,SC_SCORE) values (60,'00001','001',100);
REM INSERTING into MYBTS.TBL_SCORE01
SET DEFINE OFF;
Insert into MYBTS.TBL_SCORE01 (ID,ST_NUM,SC_SB_CODE,SC_SCORE) values (54,'00001','002',80);
Insert into MYBTS.TBL_SCORE01 (ID,ST_NUM,SC_SB_CODE,SC_SCORE) values (55,'00001','003',80);
Insert into MYBTS.TBL_SCORE01 (ID,ST_NUM,SC_SB_CODE,SC_SCORE) values (56,'00001','001',70);
Insert into MYBTS.TBL_SCORE01 (ID,ST_NUM,SC_SB_CODE,SC_SCORE) values (57,'00001','001',80);
REM INSERTING into MYBTS.TBL_STUDENT
SET DEFINE OFF;
Insert into MYBTS.TBL_STUDENT (ST_NUM,ST_NAME,ST_GRADE,ST_TEL) values ('00001','ȫ�浿','1 ','010-5789-5413');
Insert into MYBTS.TBL_STUDENT (ST_NUM,ST_NAME,ST_GRADE,ST_TEL) values ('00005','�̼���','3 ','010-5678-9862');
Insert into MYBTS.TBL_STUDENT (ST_NUM,ST_NAME,ST_GRADE,ST_TEL) values ('00004','������','2 ','010-6514-2478');
REM INSERTING into MYBTS.TBL_USER
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007151
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007151" ON "MYBTS"."TBL_ADDR" ("AD_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007269
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007269" ON "MYBTS"."TBL_B_USER" ("M_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007273
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007273" ON "MYBTS"."TBL_BBS_FILE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007271
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007271" ON "MYBTS"."TBL_BOARD" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index IDX_BOARD
--------------------------------------------------------

  CREATE INDEX "MYBTS"."IDX_BOARD" ON "MYBTS"."TBL_BOARD" ("B_DATE" DESC, "B_TIME" DESC) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index IDX_BOARD_SUBJECT
--------------------------------------------------------

  CREATE INDEX "MYBTS"."IDX_BOARD_SUBJECT" ON "MYBTS"."TBL_BOARD" ("B_SUBJECT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007264
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007264" ON "MYBTS"."TBL_BOOK" ("B_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007153
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007153" ON "MYBTS"."TBL_BOOKS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007236
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007236" ON "MYBTS"."TBL_DEPT" ("D_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007306
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007306" ON "MYBTS"."TBL_EMAIL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007297
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007297" ON "MYBTS"."TBL_EMAIL_MEMBER" ("M_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007258
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007258" ON "MYBTS"."TBL_FILES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007252
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007252" ON "MYBTS"."TBL_HOBBY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007240
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007240" ON "MYBTS"."TBL_MEMBER" ("M_USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007172
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007172" ON "MYBTS"."TBL_MEMO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007242
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007242" ON "MYBTS"."TBL_MENU" ("MENU_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007144
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007144" ON "MYBTS"."TBL_SCORE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index PK_NUM_SB_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."PK_NUM_SB_CODE" ON "MYBTS"."TBL_SCORE01" ("ID", "ST_NUM", "SC_SB_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007121
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007121" ON "MYBTS"."TBL_STUDENT" ("ST_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007251
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYBTS"."SYS_C007251" ON "MYBTS"."TBL_USER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS" ;
--------------------------------------------------------
--  Constraints for Table TBL_ADDR
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_ADDR" ADD PRIMARY KEY ("AD_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_ADDR" MODIFY ("AD_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_B_USER
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_B_USER" ADD PRIMARY KEY ("M_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_B_USER" MODIFY ("M_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_B_USER" MODIFY ("M_USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BBS_FILE
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_BBS_FILE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_BBS_FILE" MODIFY ("PARENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_BOARD" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_BOOK
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_BOOK" ADD PRIMARY KEY ("B_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_BOOK" MODIFY ("B_DATE" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_BOOK" MODIFY ("B_TITLE" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_BOOK" MODIFY ("B_ISBN" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_BOOK" MODIFY ("B_USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOOKS
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_BOOKS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_BOOKS" MODIFY ("TB_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_DEPT
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_DEPT" ADD PRIMARY KEY ("D_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_DEPT" MODIFY ("D_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_EMAIL
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_EMAIL" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_EMAIL" MODIFY ("TO_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_EMAIL" MODIFY ("FROM_EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_EMAIL_MEMBER
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_EMAIL_MEMBER" ADD PRIMARY KEY ("M_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_EMAIL_MEMBER" MODIFY ("M_MAILADDRESS" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_EMAIL_MEMBER" MODIFY ("M_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_EMAIL_MEMBER" MODIFY ("M_USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_FILES
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_FILES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_FILES" MODIFY ("PARENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_HOBBY
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_HOBBY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_MEMBER
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_MEMBER" ADD PRIMARY KEY ("M_USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_MEMBER" MODIFY ("M_NAME" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_MEMBER" MODIFY ("M_PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MEMO
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_MEMO" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_MEMO" MODIFY ("M_AUTH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MENU
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_MENU" ADD PRIMARY KEY ("MENU_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_SCORE
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_SCORE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_SCORE" MODIFY ("SC_SS_CODE" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_SCORE" MODIFY ("ST_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_SCORE01
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_SCORE01" ADD CONSTRAINT "PK_NUM_SB_CODE" PRIMARY KEY ("ID", "ST_NUM", "SC_SB_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_SCORE01" MODIFY ("SC_SB_CODE" NOT NULL ENABLE);
  ALTER TABLE "MYBTS"."TBL_SCORE01" MODIFY ("ST_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_STUDENT
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_STUDENT" ADD PRIMARY KEY ("ST_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
  ALTER TABLE "MYBTS"."TBL_STUDENT" MODIFY ("ST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_USER
--------------------------------------------------------

  ALTER TABLE "MYBTS"."TBL_USER" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYBTS"  ENABLE;
