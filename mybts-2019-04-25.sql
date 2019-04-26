--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-25-2019   
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
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19001','홍길동','010-5486-9874',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19002','이몽룡','010-5687-4587',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19003','성춘향','010-6985-7851',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19004','변사또','010-4597-3695',null,null);
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19005','임꺽정','010-6574-5891','광주광역시','북구 중흥동');
Insert into MYBTS.TBL_ADDR (AD_NUM,AD_NAME,AD_TEL,AD_ADDR1,AD_ADDR2) values ('19006','장보고','010-4984-2578','전라남도','해남군');
REM INSERTING into MYBTS.TBL_B_USER
SET DEFINE OFF;
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (41,'lljh','$2a$04$aBCt.V6l4HFSJAzHh/p0h.Le8KGIOSQd8WH8WVjMwql66GBrK0vc.','주훈','010-6775-6100','길동');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (21,'mongryong','$2a$04$hhLn5dHQ0jy6Snl0REdhCOUmndVlAivdan/0MHcedCBCFN7woyc0.','이몽룡','248-7894','전라북도 남원시');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (23,'gildong','$2a$04$feRwrEv8eaPEUTAIa9OjTOKjYi17hM70MArQIGD0FpAoCiRwK41uq','홍길동','2547954','전라남도 장성군');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (24,'bogo','$2a$04$v.ISvECmOLKM25m9DjRPP.LZqJHFKIcIe8OK1lsxWQfoyZI78O.5S','장보고','2574563','청해진');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (25,'jong','$2a$04$WcAV973KSuLlTQo3rmT0GeI/oY/4ALY719t3W5bWnb0Ewg.pUu6sC','종환','248-7841','광주광역시');
Insert into MYBTS.TBL_B_USER (M_ID,M_USERID,M_PASSWORD,M_USERNAME,M_TEL,M_ADDR) values (22,'juhoon12','$2a$04$4wokNyIEdeUTsgZSN.t4VeBEcMwq9p7bIgdQe8HkmCvg6htoFxj.m','마스터','01067756100','전라북도 정읍시');
REM INSERTING into MYBTS.TBL_BBS_FILE
SET DEFINE OFF;
REM INSERTING into MYBTS.TBL_BOARD
SET DEFINE OFF;
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (193,'gildong@naver.com','2018-05-30','14:16:12','첫 키스는 사','첫 키스는 사과 맛이야 2 - 사춘기를 위한 아름다운 영미 성장시 놀',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (194,'gildong@naver.com','2018-11-25','14:54:14','불꽃놀이와 유','불꽃놀이와 유리구슬 느낌이있는책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (195,'gildong@naver.com','2018-01-26','16:47:22','느림보 그림','[느림보 그림책 37]작은 상자 말 느림보',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (196,'gildong@naver.com','2018-02-25','14:22:05','느림보 그림','[느림보 그림책 38]찬다 삼촌 느림보',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (197,'gildong@naver.com','2018-07-09','09:03:14','오늘의 청소','[오늘의 청소년 문학 2]뛰어, 뛰어! 다른',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (198,'gildong@naver.com','2018-06-20','13:02:26','상상도서관 ','[상상도서관 2]연두와 푸른결계 다림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (199,'gildong@naver.com','2018-11-14','09:58:06','지구촌 아이들','지구촌 아이들 - 세상을 바꾸는 작은 이야기 담푸스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (200,'gildong@naver.com','2018-03-14','14:43:37','꿈꾸는돌 3','[꿈꾸는돌 3]그해 봄은 더디게 왔다 돌베개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (201,'gildong@naver.com','2018-11-14','16:07:24','꿈꾸는돌 6','[꿈꾸는돌 6]블루베리 잼을 만드는 계절 돌베개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (202,'gildong@naver.com','2018-04-19','09:18:05','우리 고전 ','[우리 고전 100선 17]허균 선집 - 나는 나의 법을 따르겠다 돌베개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (203,'gildong@naver.com','2019-01-06','12:15:05','나는 개다','나는 개다 동산사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (204,'gildong@naver.com','2018-07-23','10:21:37','문 뒤에서','문 뒤에서 동산사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (205,'gildong@naver.com','2018-10-29','11:25:58','괜찮아, 괜','[괜찮아, 괜찮아 3]누구나 공주님 두레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (206,'gildong@naver.com','2018-03-14','11:18:57','잠재력 향상','[잠재력 향상 프로젝트 3]마리아의 새친구 드림피그',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (207,'gildong@naver.com','2018-03-23','12:10:39','VivaVi','[VivaVivo 15]메모리 보이 - 한 소년의 기억이 모험이 되었다 뜨인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (208,'gildong@naver.com','2018-07-08','16:47:16','VivaVi','[VivaVivo 16]모든 일의 발단은, 고양이 뜨인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (209,'gildong@naver.com','2018-06-19','15:49:20','넝쿨동화 2','[넝쿨동화 2]명랑한 씨와 유쾌한 씨 뜨인돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (210,'gildong@naver.com','2018-02-14','17:48:36','동시는 똑똑해','동시는 똑똑해 뜨인돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (211,'gildong@naver.com','2018-08-19','16:36:04','사진아 시가 ','사진아 시가 되라 - 닭털주 샘과 아이들이 만들어가는 시(詩) 수업 이야기 리더스가이드',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (212,'gildong@naver.com','2018-10-28','09:57:53','꼬리가 보이','[꼬리가 보이는 그림책 7]양철곰 리젬',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (213,'gildong@naver.com','2017-12-24','09:58:49','리틀씨앤톡 ','[리틀씨앤톡 그림책 1]100개의 눈사람 리틀씨앤톡',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (214,'gildong@naver.com','2018-12-30','12:32:21','맹&앵 동화','[맹&앵 동화책 10]채소학교의 괴짜 친구들 맹앤앵',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (215,'gildong@naver.com','2017-12-08','09:06:39','문지 푸른 ','[문지 푸른 문학]십자매 기르기 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (216,'gildong@naver.com','2018-04-07','16:12:42','문지 푸른 ','[문지 푸른 문학]우리들의 자취 공화국 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (217,'gildong@naver.com','2018-05-24','09:31:53','문지아이들 ','[문지아이들 119]황금 깃털 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (219,'gildong@naver.com','2018-02-09','15:03:05','문지아이들','[문지아이들]맨홀장군 한새 1 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (220,'gildong@naver.com','2018-02-09','16:21:41','문지아이들','[문지아이들]맨홀장군 한새 2 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (222,'gildong@naver.com','2018-01-10','13:46:30','문학동네청소','[문학동네청소년 12]검은개들의 왕 문학동네',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (223,'gildong@naver.com','2017-12-06','15:17:00','마이볼','마이볼 문학동네',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (224,'gildong@naver.com','2018-10-04','11:23:39','청소년걸작선','[청소년걸작선 26]남쪽 섬 티오 미래인',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (226,'gildong@naver.com','2018-04-07','17:45:06','미세기 저학','[미세기 저학년 도서관 3]멍청한 두덕 씨와 왕도둑 미세기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (227,'gildong@naver.com','2017-12-21','12:07:13','별다섯 인생','별다섯 인생 바다출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (229,'gildong@naver.com','2018-09-29','14:27:28','높새바람 2','[높새바람 28]도대체 공부가 뭐야? 바람의아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (230,'gildong@naver.com','2018-05-24','17:02:37','돌개바람 3','[돌개바람 30]명탐견 오드리 바람의아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (231,'gildong@naver.com','2018-02-18','09:58:56','반올림 29','[반올림 29]나는 사고 싶지 않을 권리가 있다 바람의아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (232,'gildong@naver.com','2018-05-04','11:53:21','알맹이 그림','[알맹이 그림책 27]행복한 학교 바람의아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (234,'gildong@naver.com','2018-06-14','10:33:00','아이스토리빌','[아이스토리빌 12]공을차라 공찬희! 밝은미래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (235,'gildong@naver.com','2018-10-24','10:10:38','아이스토리빌','[아이스토리빌 13]가가의 아주 특별한 집 밝은미래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (237,'gildong@naver.com','2018-03-25','14:53:29','달마중 1','[달마중 1]뽀스락 왕자 별숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (238,'gildong@naver.com','2018-09-14','16:44:29','별숲 동화 ','[별숲 동화 마을 2]치우 탐정단이 달려간다 별숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (239,'gildong@naver.com','2018-02-15','10:53:00','아름다운 청','[아름다운 청소년 5]난 잡히지 않겠다 별숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (241,'gildong@naver.com','2018-10-17','13:50:44','보리 어린이','[보리 어린이 25]내가 미운 날 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (242,'gildong@naver.com','2018-05-10','16:46:00','살아 있는 ','[살아 있는 교육 28]꽁당 보리밥 - 가난한 삶에서 피어난 어머니들의 이야기꽃 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (243,'gildong@naver.com','2018-05-10','16:50:23','살아 있는 ','[살아 있는 교육 29]찔레꽃  보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (245,'gildong@naver.com','2018-02-23','17:02:37','진경문고신','[진경문고]신라인의 마음 신라인의 노래 - 이야기와 함께 만나는 향가의 세계  보림출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (246,'gildong@naver.com','2018-03-19','15:44:01','청소년문학 ','[청소년문학 보물창고 22 ]두근두근 첫사랑 보물창고',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (248,'gildong@naver.com','2018-07-29','09:41:49','봄나무 문학','[봄나무 문학선 16]그림자 아이들 6. 인구 경찰이 된 아이들 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (249,'gildong@naver.com','2018-10-24','16:09:12','봄나무 문학','[봄나무 문학선 18]그림자 아이들 7. 자유를 찾은 아이들 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (250,'gildong@naver.com','2018-02-02','11:52:32','봄나무 문학','[봄나무 문학선]나쁜 초콜릿 - 누가 이 아이들의 행복을 빼앗아 갔을까? 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (251,'gildong@naver.com','2018-09-08','13:11:38','봄나무 문학','[봄나무 문학선]한 손의 투수 - 왼손이 없는 게 아니야, 조금 특별한 오른손이 있을 뿐 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (253,'gildong@naver.com','2018-08-10','12:19:49','우리나라 그','[우리나라 그림책 10]울산에 없는 울산바위 봄봄',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (254,'gildong@naver.com','2018-06-29','15:18:23','우리나라 그','[우리나라 그림책 9]감은장아기 봄봄',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (256,'gildong@naver.com','2018-08-30','15:22:22','나비가 되고 ','나비가 되고 싶어 북극곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (257,'gildong@naver.com','2018-08-18','16:18:41','스토리 콜렉','[스토리 콜렉터 11]반짝반짝 추억전당포 북로드',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (259,'gildong@naver.com','2018-06-07','15:03:36','바다로 간 ','[바다로 간 달팽이 1]비보이 스캔들 북멘토',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (260,'gildong@naver.com','2018-03-15','12:59:53','북멘토 가치','[북멘토 가치 동화 3]여우의 화원 북멘토',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (261,'gildong@naver.com','2018-11-29','13:46:48','나의 특별한 ','나의 특별한 장소 북뱅크',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (263,'gildong@naver.com','2018-03-29','16:54:29','북비다문화 ','[북비다문화 2]아라비안 나이트 북비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (264,'gildong@naver.com','2018-07-29','12:30:42','자연과 친구되','자연과 친구되는 시쓰기 - 자연과 생명을 있는 그대로 보고 느끼면서 시로 표현하는 16가지 방법 북센스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (265,'gildong@naver.com','2018-03-19','14:19:25','소중한 가치','[소중한 가치 학교 4]경민이의 아주 특별한 친구 북스토리아이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (266,'gildong@naver.com','2018-06-30','09:16:10','우리 아이 ','[우리 아이 인성교육 시리즈 5]마법의 가면 불광출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (267,'gildong@naver.com','2018-03-04','10:46:41','난 책읽기가','[난 책읽기가 좋아-2단계(초등1,2학년) 47]캡슐 마녀의 수리수리 약국 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (268,'gildong@naver.com','2018-04-29','12:53:05','블루픽션 6','[블루픽션 61]개 같은 날은 없다 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (269,'gildong@naver.com','2018-06-10','17:12:08','블루픽션 6','[블루픽션 63]명탐정의 아들 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (270,'gildong@naver.com','2018-02-25','17:58:43','비룡소 걸작','[비룡소 걸작선 19]별이 된 소년 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (271,'gildong@naver.com','2018-02-07','17:32:57','비룡소의 그','[비룡소의 그림동화 219]빕스의 엉뚱한 소원 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (272,'gildong@naver.com','2017-11-13','13:27:09','일공일삼 7','[일공일삼 75]그 애가 나를 보고 웃다 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (273,'gildong@naver.com','2018-01-28','09:18:43','일공일삼 7','[일공일삼 77]말하는 까만 돌 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (274,'gildong@naver.com','2018-07-19','14:59:37','일공일삼 8','[일공일삼 80]맹꽁이 원정대, 몽골로 가다 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (275,'gildong@naver.com','2018-02-13','11:13:58','가시고백','가시고백 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (276,'gildong@naver.com','2018-05-30','11:41:14','사계절 13','[사계절 1318문고 77]유랑극단 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (277,'gildong@naver.com','2018-09-02','15:11:17','사계절 13','[사계절 1318문고 79]우주 비행 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (278,'gildong@naver.com','2018-12-29','17:58:50','사계절 13','[사계절 1318문고 81]진실 게임 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (279,'gildong@naver.com','2018-05-11','15:00:54','초등학생이 ','[초등학생이 보는 그림책 26]꿈꾸는 징검돌 - 화가 박수근 이야기 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (280,'gildong@naver.com','2018-11-08','10:59:50','초등학생이 ','[초등학생이 보는 그림책 27]블룸카의 일기 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (281,'gildong@naver.com','2018-09-29','15:37:15','평화그림책 ','[평화그림책 5]내 목소리가 들리나요  사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (282,'gildong@naver.com','2018-07-28','16:24:40','사파리 마스','[사파리 마스터피스 1]빈센트의 비밀 노트 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (283,'gildong@naver.com','2018-11-08','09:05:37','비밀의 숲 테','비밀의 숲 테라비시아 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (284,'gildong@naver.com','2018-02-28','11:19:28','산하세계문학','[산하세계문학 1]아르베 - 나는 어떻게 투명인간이 되었나? 산하',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (285,'gildong@naver.com','2018-05-04','14:28:58','살림 3.4','[살림 3.4학년 창작동화 4]난 너무 잘났어! 살림어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (286,'gildong@naver.com','2018-04-10','16:52:12','딩크던컨과 ','[딩크던컨과 미스터리 수사대1]사라진 미라 삼성출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (287,'gildong@naver.com','2018-05-10','10:11:45','딩크던컨과 ','[딩크던컨과 미스터리 수사대2]드라큘라의 휴가 삼성출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (288,'gildong@naver.com','2018-12-23','17:11:52','마음속 그림','[마음속 그림책 4]크리스마스 선인장 상상의힘',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (289,'gildong@naver.com','2018-09-16','15:39:14','상상의힘 청','[상상의힘 청소년문고 1]무옥이 상상의힘',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (291,'gildong@naver.com','2018-11-28','15:29:32','샘터어린이문','[샘터어린이문고 31]길을 찾는 아이들 - 초등학생들이 만든 제주 곽금올레 샘터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (292,'gildong@naver.com','2018-03-11','13:48:56','세용그림동화','[세용그림동화 8]치즈를 찾아서 세용',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (294,'gildong@naver.com','2018-05-25','15:24:08','저학년 어린','[저학년 어린이를 위한 인성동화 16 정직]꼬리 달린 거짓말 소담주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (295,'gildong@naver.com','2018-10-24','11:12:29','깨강정 문고','[깨강정 문고 1]부엉이 아파트 스푼북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (296,'gildong@naver.com','2018-07-04','09:40:36','시공 청소년','[시공 청소년 문학 49]너를 위한 50마일 시공사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (298,'gildong@naver.com','2018-04-14','09:47:33','시공주니어 ','[시공주니어 문고 2단계 70]꿈을 향해 스타 오디션 시공주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (299,'gildong@naver.com','2018-11-01','11:36:26','수납장 속의 ','수납장 속의 인디언 아롬주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (301,'bangwon@naver.com','2018-04-08','11:07:34','익사이팅 북','[익사이팅 북스 47]열두 살의 나이테 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (302,'bangwon@naver.com','2018-01-23','10:47:27','아이앤북 문','[아이앤북 문학나눔 1]하이퐁 세탁소 아이앤북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (303,'bangwon@naver.com','2018-05-10','17:11:29','아이앤북 창','[아이앤북 창작동화 33]우리 동네 나쁜 놈 아이앤북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (305,'bangwon@naver.com','2018-08-01','15:29:40','카르페디엠 ','[카르페디엠 31]첫사랑 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (306,'bangwon@naver.com','2018-03-16','14:59:10','오래된 약속','오래된 약속 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (308,'bangwon@naver.com','2018-02-14','15:48:01','엘빅미디어 ','[엘빅미디어 저학년 문고 1]아홉 살 엄마 - 거꾸로 가는 시계 엘빅미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (309,'bangwon@naver.com','2018-07-19','15:44:53','날개달린 그','[날개달린 그림책방 10]세쿼이아 여유당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (311,'bangwon@naver.com','2018-04-29','12:41:21','우리 집 가훈','우리 집 가훈은 잘먹고 잘살기 예림당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (312,'bangwon@naver.com','2017-12-09','09:43:24','우리같이 청','[우리같이 청소년문고 8]거짓말쟁이 호머피그의 진짜 남북전쟁모험 우리같이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (314,'bangwon@naver.com','2018-04-11','15:49:23','청소년을 위','[청소년을 위한 소설심리클럽 테마1. 자아정체성]울고 있니 너? 우리학교',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (315,'bangwon@naver.com','2018-04-11','11:50:52','청소년을 위','[청소년을 위한 소설심리클럽 테마2. 성과 사랑]성, 스러운 그녀 우리학교',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (316,'bangwon@naver.com','2018-08-02','12:46:48','청소년을 위','[청소년을 위한 소설심리클럽 테마3. 관계와 소통]어쩌다 보니 왕따 우리학교',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (318,'bangwon@naver.com','2018-05-31','13:45:20','작은 책마을','[작은 책마을 33]내 이름은 모험을 끝내는 법 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (319,'bangwon@naver.com','2018-02-07','13:43:04','도서관 고양이','도서관 고양이 듀이 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (321,'bangwon@naver.com','2018-05-13','11:06:47','굿바이 안네 ','굿바이 안네 - 60년 만에 발견한 안네 프랑크에 관한 새로운 이야기 이덴슬리벨',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (322,'bangwon@naver.com','2018-11-14','17:44:12','레터북 23','[레터북 23]독일인의 사랑 인디북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (324,'bangwon@naver.com','2018-01-04','12:19:52','자음과모음 ','[자음과모음 청소년문학 10]정의의 이름으로 자음과모음',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (325,'bangwon@naver.com','2018-02-16','14:50:55','자음과모음 ','[자음과모음 청소년문학 12]다이어트 학교 자음과모음',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (326,'bangwon@naver.com','2018-04-19','10:34:20','자음과모음 ','[자음과모음 청소년문학 15]시간을 파는 상점 자음과모음',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (328,'bangwon@naver.com','2018-07-04','15:58:48','작은숲 청소','[작은숲 청소년 2]싸움닭 샤모 작은숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (329,'bangwon@naver.com','2018-06-14','10:58:55','100km','100km 작은씨앗',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (330,'bangwon@naver.com','2018-05-19','15:43:24','빛나는 우리','[빛나는 우리 고전 그림책 시리즈 2]전우치전 장영(황제펭귄)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (331,'bangwon@naver.com','2018-08-25','14:36:17','달팽이의 숲 ','달팽이의 숲 속 놀이터 점자',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (333,'bangwon@naver.com','2018-10-11','15:07:13','주니어김영사','[주니어김영사 청소년 문학 1]죽음과 소녀 주니어김영사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (334,'bangwon@naver.com','2018-08-29','17:23:58','중학년을 위','[중학년을 위한 한뼘도서관 23]말할까? 말까? 주니어김영사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (335,'bangwon@naver.com','2018-01-13','17:01:12','노엄의 세상 ','노엄의 세상 - 포복절도, 이사 증후군 주니어북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (337,'bangwon@naver.com','2018-11-29','09:18:43','지혜가 자라','[지혜가 자라는 그림책 3]선생님을 기억하는 나무 지혜정원',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (338,'bangwon@naver.com','2018-04-08','13:17:35','신나는 책읽','[신나는 책읽기 33]엄마 사용법 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (1,'gildong@naver.com','2018-02-28','09:40:51','김정헌, 예술','김정헌, 예술가가 사는 마을을 가다 검둥소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (2,'gildong@naver.com','2018-05-23','16:02:45','내게 금지된 ','내게 금지된 공간 내가 소망한 공간 궁리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (3,'gildong@naver.com','2018-04-28','13:39:26','천재 이야기꾼','천재 이야기꾼 로알드 달 다산기획',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (4,'gildong@naver.com','2018-05-24','12:18:03','내 삶에 들어','내 삶에 들어온 권정생 - 동화로 만나는 삶 속의 인문학 단비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (5,'gildong@naver.com','2018-11-03','13:53:58','도서관 산책자','도서관 산책자 - 두 책벌레 건축가가 함께 걷고 기록한, 책의 집 이야기 반비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (6,'gildong@naver.com','2018-07-24','10:23:01','제가 살고 싶','제가 살고 싶은 집은 - 건축가 이일훈과 국어선생 송승훈이 e메일로 지은 집, 잔서완석루 서해문집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (7,'gildong@naver.com','2018-02-18','13:07:10','살아있는 도서','살아있는 도서관 - 책과 공부를 탐한 한국의 지성 23인 현암사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (8,'gildong@naver.com','2018-06-29','14:27:41','도시엄마를 위','도시엄마를 위한 시골교육법 글담',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (9,'gildong@naver.com','2018-05-21','13:53:38','한 영혼이 자','한 영혼이 자라면 온 세계가 성장한다 낮은산',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (10,'gildong@naver.com','2018-11-19','13:30:25','니 부모 얼굴','니 부모 얼굴이 보고 싶다 다른',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (11,'gildong@naver.com','2018-08-24','10:08:59','우리교육 10','우리교육 100문 100답 다산북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (12,'gildong@naver.com','2018-03-30','16:37:01','나는 대한민국','나는 대한민국의 행복한 교사다 도토리창고',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (13,'gildong@naver.com','2017-12-30','14:47:05','부모가 비우면','부모가 비우면 아이는 채워진다 - 굴절된 세상에서 아이를 바르게 키우는 연습 뜨인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (14,'gildong@naver.com','2018-02-28','10:00:04','맘에드림 혁','[맘에드림 혁신학교 이야기 4]덕양중학교 혁신학교 도전기 맘에드림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (15,'gildong@naver.com','2018-08-29','12:20:12','맘에드림 혁','[맘에드림 혁신학교 이야기 5]학교 바꾸기 그후 12년 맘에드림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (16,'gildong@naver.com','2018-06-07','09:58:14','EBS가 선택','EBS가 선택한 최고의 교사 문학동네',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (17,'gildong@naver.com','2018-09-07','11:24:31','교사를 춤추게','교사를 춤추게 하라 민들레',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (18,'gildong@naver.com','2018-05-09','16:09:51','바깥바람 6','[바깥바람 6]뭐가 되려고 그러니? 바람의아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (19,'gildong@naver.com','2018-08-24','16:06:56','살아 있는 ','[살아 있는 교육 30]엄마 아빠랑 함께 쓴 일기 - 주순영 선생님 반 학부모 모둠일기 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (20,'gildong@naver.com','2018-05-24','17:30:12','살림터 참교','[살림터 참교육문예 3]아이들에게 세상을 배웠네 살림터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (21,'gildong@naver.com','2018-06-19','09:19:47','살림터 참교','[살림터 참교육문예 4]서울여자, 시골 선생님 되다 살림터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (22,'gildong@naver.com','2018-03-08','14:53:43','평화샘 프로','[평화샘 프로젝트 1]학교폭력 어떻게 만들어 지는가? 살림터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (23,'gildong@naver.com','2018-03-22','16:13:39','평화샘 프로','[평화샘 프로젝트 2]학교폭력 멈춰! - 보살핌.우정.배움의 공동체 살림터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (24,'gildong@naver.com','2018-09-29','11:05:06','아이들은 놀이','아이들은 놀이가 밥이다 소나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (25,'gildong@naver.com','2018-10-04','14:00:36','가르친다는 것','가르친다는 것 - 교실을 살리기 위해 애쓰는 모든 교사들에게 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (27,'gildong@naver.com','2019-01-26','11:43:53','우리반 일용이','우리반 일용이 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (28,'gildong@naver.com','2018-12-09','14:34:19','나쁜 대학 -','나쁜 대학 - 우리 아들 대학 보내기 사생결단 프로젝트 윌북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (29,'gildong@naver.com','2018-12-23','10:40:18','교육의 배신 ','교육의 배신 내몰리는 아이들 - 현장에서 쓴 교육개혁 블루프린트 지호',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (30,'gildong@naver.com','2018-08-08','14:24:14','아름다운 나눔','아름다운 나눔수업 - 자아존중감과 소통의 리더십을 키워주는 나눔교육 이야기 착한책가게',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (32,'gildong@naver.com','2018-08-29','12:58:57','대한민국 초등','대한민국 초등학생 - 행복하게 사는 법을 배우지 못한 아이들 청어람미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (33,'gildong@naver.com','2018-06-24','15:40:45','아하! 통합학','아하! 통합학급 - 모든 이를 위한 통합교육의 실제 학지사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (35,'gildong@naver.com','2018-09-14','12:09:32','선생이란 무엇','선생이란 무엇인가 - 루소.퇴계.공자.융에게 교육의 길을 묻다 한언 ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (36,'gildong@naver.com','2018-08-24','13:45:46','배움의 공동체','배움의 공동체 - 손우정 교수가 전하는 희망의 교실 혁명 해냄',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (37,'gildong@naver.com','2019-01-23','14:50:51','너는 늦게 피','너는 늦게 피는 꽃이다 - 우리 교육의 마지막 비상구 ''돈보스코 예방교육'' 휴',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (39,'gildong@naver.com','2018-07-19','16:46:37','초등 독서의 ','초등 독서의 모든 것 꿈결',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (40,'gildong@naver.com','2018-10-21','16:05:59','문지푸른책 ','[문지푸른책 밝은눈 8]허병두의 즐거운 글쓰기 교실 3 : 나만의 책쓰기 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (41,'gildong@naver.com','2018-10-28','13:56:54','문지푸른책 ','[문지푸른책 밝은눈 9]책쓰기 꿈꾸다 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (43,'gildong@naver.com','2018-05-27','14:28:20','과학이 열리는','과학이 열리는 책읽기 우리교육',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (44,'gildong@naver.com','2018-08-19','15:12:40','북미 도서관에','북미 도서관에 끌리다 - 선생님들의 이유 있는 도서관 여행 우리교육',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (45,'gildong@naver.com','2018-04-14','17:49:22','북미 학교도서','북미 학교도서관을 가다 - 선생님들의 이유 있는 도서관 여행 우리교육',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (47,'gildong@naver.com','2019-01-24','16:09:40','엄마표 도서관','엄마표 도서관여행 - 하루 동안의 행복! 도서관에서 꿈꾸는 아이 주니어김영사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (48,'gildong@naver.com','2018-10-24','15:33:47','매일매일 일어','매일매일 일어나는 독서의 기적 - 어린이 독서교육 혁명 The Daily 5 파라주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (50,'gildong@naver.com','2018-03-04','12:57:01','마음으로 떠나','마음으로 떠나는 그림책 여행 학지사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (51,'gildong@naver.com','2018-03-04','13:05:31','선생님과 함께','선생님과 함께하는 우리 반 독서치료 학지사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (52,'gildong@naver.com','2018-07-04','15:59:29','앎과삶 시리','[앎과삶 시리즈 4]17세 : 누구나 겪지만 아무도 모르는 나이 한국출판마케팅연구소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (53,'gildong@naver.com','2018-04-08','16:52:37','토론의 전사 ','토론의 전사 1. 디베이트의 길을 열다 해냄에듀',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (55,'gildong@naver.com','2018-01-18','10:16:58','아침독서 총','[아침독서 총서 3]교실을 바꾼 아침독서 10분 행복한아침독서',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (56,'gildong@naver.com','2019-02-24','15:46:59','아침독서 총','[아침독서 총서 5]아침독서 핸드북 - 미국 사례로 본 8가지 성공 요소 행복한아침독서',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (58,'gildong@naver.com','2018-10-29','14:36:35','세계로 떠나','[세계로 떠나는 체험 학습 2]화산원정대 - 어린이 원정대의 이탈리아 화산 특별 체험기 과학동아북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (59,'gildong@naver.com','2018-02-18','15:41:58','사랑하면 보이','사랑하면 보이는 나무 - 아버지와 아들이 함께 쓰고 그린 나무 관찰 기록 52편 궁리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (60,'gildong@naver.com','2018-02-23','12:52:32','수냐의 수학카','수냐의 수학카페 2 - 계산 낙오자 3인방, 수학카페를 점령하다 궁리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (62,'gildong@naver.com','2018-11-14','14:15:55','현장에서 배','[현장에서 배우는 어린이 건축 교실 1]우리 집을 지어요 꿈교출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (63,'gildong@naver.com','2018-06-20','14:23:25','지구가 멈추는','지구가 멈추는 날 - 지구를 위협하는 재해와 대처 방법 꿈꾸는사람들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (64,'gildong@naver.com','2018-05-05','11:27:52','암탉, 엄마가','암탉, 엄마가 되다 - 개성 강한 닭들의 좌충우돌 생태 다큐멘터리 낮은산',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (65,'gildong@naver.com','2018-08-29','16:51:06','종의 기원, ','종의 기원, 모든 생명의 자유를 선언하다 너머학교',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (66,'gildong@naver.com','2018-03-29','17:25:41','노란돼지 창','[노란돼지 창작그림책 15 환경이야기(물)]맑은 하늘, 이제 그만 노란돼지',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (67,'gildong@naver.com','2019-01-19','11:51:10','노란상상 그','[노란상상 그림책 10]나무는 숲을 기억해요 노란상상',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (68,'gildong@naver.com','2018-03-14','10:28:26','지식은 내 ','[지식은 내 친구 2]신기한 동물에게 배우는 생태계 논장',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (69,'gildong@naver.com','2018-04-14','17:11:36','지식은 내 ','[지식은 내 친구 3]뼈-뼈의 생김새와 하는 일 논장',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (70,'gildong@naver.com','2018-11-14','16:49:40','지식은 내 ','[지식은 내 친구 4]놀라운 생태계, 거꾸로 살아가는 동물들 논장',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (71,'gildong@naver.com','2018-06-24','11:45:25','세계사 가로','[세계사 가로지르기 5]세상을 바꾼 동물 - 동물은 기록하지 못하는 동물들의 세계사 다른',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (72,'gildong@naver.com','2018-08-15','13:32:28','다산지식그림','[다산지식그림책 2]나의 첫 식물책 다산기획',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (73,'gildong@naver.com','2018-03-30','15:38:34','자연의 친구','[자연의 친구들 1]우리 마을 자연의 친구들 다산기획',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (74,'gildong@naver.com','2018-07-12','16:35:21','자연의 친구','[자연의 친구들 2]참나무와 자연의 친구들 다산기획',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (75,'gildong@naver.com','2018-05-31','10:46:39','생명의 지혜 ','생명의 지혜 - 옛이야기가 품은 열두 가지 자연법칙 다산기획',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (76,'gildong@naver.com','2019-01-19','15:23:53','십대, 별과 ','십대, 별과 우주를 사색해야 하는 이유 더숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (77,'gildong@naver.com','2018-10-31','09:24:04','누나는 수다쟁','누나는 수다쟁이 수학자 : 수와 도형 - 개미 도형 왕국의 비밀을 풀어라 뜨인돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (78,'gildong@naver.com','2018-04-01','12:25:57','생활에서 발견','생활에서 발견한 재미 있는 수학 55 뜨인돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (79,'gildong@naver.com','2018-04-04','09:41:14','출동 지구 ','[출동 지구 구조대 3](장순근 박사가 들려주는)바다 쓰레기의 비밀 리젬',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (80,'gildong@naver.com','2018-12-19','11:46:59','출동 지구 ','[출동 지구 구조대 5]자연의 색이 품은 비밀 리젬',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (81,'gildong@naver.com','2018-09-19','15:43:12','수학식당 1','수학식당 1 명왕성은자유다',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (82,'gildong@naver.com','2018-02-07','09:51:32','전통문화즐기','[전통문화즐기기 12](해·달·별 하늘의 무늬를 읽은) 우리 천문학 이야기 문학동네',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (83,'gildong@naver.com','2017-11-25','15:03:24','재미있고 똑','(재미있고 똑똑한 세상을 만드는)미래 아이디어 80 미래의창',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (84,'gildong@naver.com','2018-07-26','17:19:00','황제처럼 - ','황제처럼 - 남극에 사는 황제펭귄이 우리에게 가르쳐준 것 미래의창',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (85,'gildong@naver.com','2018-08-19','12:52:09','MBC 창사','(MBC 창사 50주년 특집 다큐멘터리 남극의 눈물)황제펭귄 펭이와 솜이 밝은미래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (86,'gildong@naver.com','2018-05-09','10:42:47','밝은미래 지','[밝은미래 지식 그림책 11]보인다! 우리 몸 - 요리조리 들춰 보는 인체 플랩 그림책 밝은미래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (87,'gildong@naver.com','2018-06-10','12:52:49','개똥이네 책','[개똥이네 책방 13]호미 아줌마랑 텃밭에 가요 - 우리가 즐겨 먹는 스물두 가지 작물의 한살이 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (88,'gildong@naver.com','2018-02-08','11:05:05','세밀화로 그','[세밀화로 그린 우리 바닷물고기2]둥실둥실 동해바다 물고기 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (89,'gildong@naver.com','2018-02-08','09:59:58','세밀화로 그','[세밀화로 그린 우리 바닷물고기3]남실남실 남해바다 물고기 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (91,'gildong@naver.com','2018-02-08','15:11:15','세밀화로 그','[세밀화로 그린 우리 바닷물고기5]팔딱팔딱 바닷물고기 이야기 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (92,'gildong@naver.com','2018-08-01','14:02:16','우리 새 생','[우리 새 생태 동화 3]백로 마을이 사라졌어 - DVD 1장 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (93,'gildong@naver.com','2018-05-13','10:57:15','킁킁이가 간다','킁킁이가 간다! 2 - 고기를 좋아하는 동물 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (95,'gildong@naver.com','2018-04-19','09:14:29','나의 아름다운','나의 아름다운 바다 - 바다의 비밀을 밝힌 여성 해양학자 실비아 얼 이야기 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (96,'gildong@naver.com','2018-03-05','10:41:08','북극곰The','북극곰(The World of the Polar Bear ) 북극곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (97,'gildong@naver.com','2018-06-19','14:52:03','수학선생님도 ','수학선생님도 궁금한 101가지 수학질문 사전 북멘토',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (99,'gildong@naver.com','2018-10-07','11:14:05','물들숲 그림','[물들숲 그림책 2]호박이 넝쿨째 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (100,'gildong@naver.com','2018-08-10','13:59:40','사이언스 일','[사이언스 일공일삼 28]오줌을 연구하자 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (101,'gildong@naver.com','2018-03-16','16:28:40','하리하라의 과','하리하라의 과학 24시 - 청소년이 알아야 할 현대 과학의 24가지 이슈 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (103,'gildong@naver.com','2017-12-18','11:29:26','나는 알아요','[나는 알아요 2 즐거운 과학]별과 행성 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (104,'gildong@naver.com','2017-12-18','13:49:41','나는 알아요','[나는 알아요 3 즐거운 과학]남극과 북극 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (105,'gildong@naver.com','2019-01-11','14:26:20','날씨 전쟁 -','날씨 전쟁 - 기후변화로 고통 받는 지구 이야기 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (107,'gildong@naver.com','2018-03-31','16:02:48','자연과 함께','[자연과 함께 하는 살림 생태 학습 4]우리 교실에 벼가 자라요  살림어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (108,'gildong@naver.com','2018-08-23','14:45:47','예술을 꿀꺽 ','예술을 꿀꺽 삼킨 과학 살림Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (110,'gildong@naver.com','2018-03-07','09:22:21','어린이를 위','[어린이를 위한 사진 동화 시리즈]강가에 사는 고라니 소년한길',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (111,'gildong@naver.com','2018-09-11','11:10:05','페렐만의 살아','페렐만의 살아있는 물리학 - 역학 써네스트',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (112,'gildong@naver.com','2018-06-08','13:36:23','아이세움 열','[아이세움 열린꿈터 11]우리학교 환경 지킴이 - 지구를 지키는 생활 실천 동화 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (113,'gildong@naver.com','2018-06-24','11:46:36','아이세움 열','[아이세움 열린꿈터 12]우리와 함께 살아가는 작은 생물 이야기 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (115,'gildong@naver.com','2018-01-28','14:45:37','환경을 지키는','환경을 지키는 영웅들 - 지구를 지킨 사람들의 이야기 아이앤북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (116,'gildong@naver.com','2018-03-19','12:29:38','알쏭달쏭 과학','알쏭달쏭 과학 아카데미 - 생활 속 마술같은 과학이야기 알라딘북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (117,'gildong@naver.com','2018-06-24','13:02:55','오늘의 지구를','오늘의 지구를 말씀드리겠습니다 - 과학으로 읽는 지구 설명서 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (119,'gildong@naver.com','2018-05-09','09:53:03','어린이가 꼭','[어린이가 꼭 알아야 할 경제.과학.환경 이야기 시리즈 16]물을 물로 볼 수 없는 세상 영교출판',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (120,'gildong@naver.com','2018-07-14','11:00:37','와이즈만 수','[와이즈만 수학동화 - 초등 1.2학년 대상]수학 도깨비 와이즈만북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (122,'gildong@naver.com','2018-03-31','14:53:06','웃는돌고래 ','[웃는돌고래 그림책 1]나무 심으러 몽골에 간다고요? 웃는돌고래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (123,'gildong@naver.com','2018-07-29','10:34:08','꽃섬 - 죽음','꽃섬 - 죽음을 이겨낸 생명의 땅 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (124,'gildong@naver.com','2018-12-09','09:22:54','보통날의 물리','보통날의 물리학 - 일상이 즐거워지는 물리 이야기 이미디어그룹',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (125,'gildong@naver.com','2018-04-14','13:13:01','장수하늘소가','(장수하늘소가 펼치는 교양의 세계)도시 소년이 사랑한 우리 새 이야기 장수하늘소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (127,'gildong@naver.com','2017-12-09','15:54:23','미래를 꿈꾸','[미래를 꿈꾸는 해양문고 18]자연속 야누스, 하구 - 강과 바다가 만나는 곳 지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (128,'gildong@naver.com','2018-01-12','15:25:05','미래를 꿈꾸','[미래를 꿈꾸는 해양문고 20]바다 위 인공섬 시토피아 - 사람이 만드는 미래의 해양도시 지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (129,'gildong@naver.com','2018-08-03','13:18:19','미래를 꿈꾸','[미래를 꿈꾸는 해양문고 21]배는 어디에서 자나요? - 항구, 그리고 항구를 지키는 방파제 지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (130,'gildong@naver.com','2018-10-17','13:47:17','니코의 양자 ','니코의 양자 세계 어드벤처 - 청소년을 위한 양자 물리학 이야기 찰리북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (131,'gildong@naver.com','2018-03-14','09:58:08','태양계 여행 ','태양계 여행 안내서 - 찰리와 써니와 함께 떠나는 신나는 우주여행 찰리북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (132,'gildong@naver.com','2018-03-14','15:33:21','왜 안 되나','[왜 안 되나요? 시리즈 6]왜 물이 사라지면 안 되나요? 참돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (133,'gildong@naver.com','2018-03-24','11:16:38','왜 안 되나','[왜 안 되나요? 시리즈 7]왜 탄소발자국이 뚱뚱해지면 안 되나요? 참돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (134,'gildong@naver.com','2018-08-05','10:45:31','과학과 친해','[과학과 친해지는 책 11]대이동, 동물들의 위대한 도전 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (135,'gildong@naver.com','2018-03-19','13:26:21','창비 호기심','[창비 호기심 그림책 3]째깍째깍 시간 박물관 - 신기하고 재미있는 시간과 시계 이야기 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (136,'gildong@naver.com','2018-05-27','16:02:25','동물권리선언','[동물권리선언 시리즈 1]동물원 동물은 행복할까? - 전 세계 동물원을 1000번 이상 탐방한 슬픈 기록 책공장더불어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (137,'gildong@naver.com','2018-10-24','09:42:49','곰곰어린이 ','[곰곰어린이 18]지구야, 우리 말 좀 들어줘 책속물고기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (138,'gildong@naver.com','2018-02-27','15:10:47','철수와영희 ','[철수와영희 그림책 4]겨울눈이 들려주는 학교 숲 이야기 - 겨울철 학교에서 만난 나무의 한살이와 생태 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (139,'gildong@naver.com','2018-10-09','09:58:07','철수와영희 ','[철수와영희 그림책 5]우리 학교 텃밭 - 초등학교에서 많이 심는 채소 9종과 곡식 3종 가꾸기 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (140,'gildong@naver.com','2018-04-14','17:01:09','쪽빛문고 1','[쪽빛문고 15]우리 학교 뜰에는 무엇이 살까? - 학교에서 살고 있는 풀.꽃.나무 이야기 청어람미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (141,'gildong@naver.com','2018-04-08','16:59:15','쪽빛문고 1','[쪽빛문고 16]우주가 내게로 왔어요 - 난쟁이별 교수님이 들려주는 재미있고 놀라운 지구와 우주 이야기 청어람미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (142,'gildong@naver.com','2018-10-11','10:22:46','과학, 10월','과학, 10월의 하늘을 날다 - 청소년을 위한 아름다운 나눔 강연 청어람미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (143,'gildong@naver.com','2018-06-27','13:11:12','공룡은 어떻게','공룡은 어떻게 박물관에 갔을까? 키즈엠',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (144,'gildong@naver.com','2017-11-15','14:04:27','내가 꿈꾸는','[내가 꿈꾸는 사람 과학자 2]파인만, 과학을 웃겨 주세요 탐',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (145,'gildong@naver.com','2018-05-11','16:32:18','토토 생각날','[토토 생각날개 20]어린이를 위한 유쾌한 세계 건축 여행 - 역사.문화.인물.과학 모든것이 담긴 대표 건축물 토토북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (146,'gildong@naver.com','2018-09-23','11:33:08','공부는 왜 ','[공부는 왜 해? 4]엄마 과학 공부는 왜 해? 팜파스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (147,'gildong@naver.com','2018-05-14','15:58:10','보건 선생님','(보건 선생님들의 상담 사례로 생각하는)초딩들의 사춘기 푸른날개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (148,'gildong@naver.com','2018-11-29','09:30:50','앵그리버드 스','앵그리버드 스페이스 - 앵그리버드와 함께 떠나는 우주여행 푸른날개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (149,'gildong@naver.com','2018-10-19','13:29:18','역지사지 생','[역지사지 생생 토론 대회 2]환경 논쟁 풀빛',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (150,'gildong@naver.com','2018-08-19','09:00:16','학고재 환경','[학고재 환경책 초록이 3 세계의 멸종 위기 동물]명품 가방 속으로 악어들이 사라졌어요 학고재',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (151,'gildong@naver.com','2018-03-16','16:03:03','내가 키운 채','내가 키운 채소는 맛있어! - 재활용품으로 만든 우리 집 텃밭 한림출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (152,'gildong@naver.com','2018-02-25','09:33:48','피지카 시리','[피지카 시리즈 1]피지카와 신비한 돌 해나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (153,'gildong@naver.com','2018-05-13','13:08:44','나무 중의 ','(나무 중의 으뜸)늘 푸른 우리 소나무 해와나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (154,'gildong@naver.com','2018-07-15','11:27:28','과학 시간이','[과학 시간이 즐거워요 1]과학왕 실종 사건 - 과학 교과서 따라잡는 추리동화 행성:B아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (155,'gildong@naver.com','2018-05-29','13:18:15','위풍당당 우리','위풍당당 우리 삽사리  현암사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (157,'gildong@naver.com','2018-09-19','14:57:25','처음 읽는 우','처음 읽는 우주의 역사 - 별똥별 아줌마, 최초의 우주를 만나다 휴머니스트',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (158,'gildong@naver.com','2018-03-14','15:54:33','개암청소년문','[개암청소년문학 14]내 인생의 양탄자 개암나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (160,'gildong@naver.com','2018-05-09','10:13:34','문학의 즐거','[문학의 즐거움 37]우물 파는 아이들 개암나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (161,'gildong@naver.com','2018-07-29','10:46:19','문학의 즐거','[문학의 즐거움 38]뚱보의 겁쟁이 탈출기 개암나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (162,'gildong@naver.com','2018-10-19','15:18:26','문학의 즐거','[문학의 즐거움 39]우리들의 교실 개암나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (164,'gildong@naver.com','2018-09-19','16:13:59','지그재그 2','[지그재그 24]미술관에서 생긴 일 개암나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (165,'gildong@naver.com','2018-04-04','16:51:14','오렌지 말','오렌지 말 계수나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (167,'gildong@naver.com','2018-12-09','12:53:05','살아있는 글','[살아있는 글읽기 - 김우경 판타지 동화]검정소금 붉은도깨비 세트 - 전3권 고인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (168,'gildong@naver.com','2018-05-09','14:45:01','살아있는 글','[살아있는 글읽기 5 이호철 사계절 동화 : 봄]온산에 참꽃이다 고인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (169,'gildong@naver.com','2018-07-04','11:56:29','살아있는 글','[살아있는 글읽기 6](윤태규 창작동화)초대받은 마술사 고인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (171,'gildong@naver.com','2018-02-02','09:45:47','작은걸음 큰','[작은걸음 큰걸음 14]아빠는 나의 영웅 교학사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (172,'gildong@naver.com','2018-10-19','17:44:35','작은걸음 큰','[작은걸음 큰걸음 16]오두방정 콩새의 작두콩 대작전 교학사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (173,'gildong@naver.com','2018-10-14','09:47:58','국민서관 그','[국민서관 그림동화 141]행복한 책 국민서관',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (175,'gildong@naver.com','2018-05-20','10:30:25','1318그림','[1318그림책 1]별소년 쌍식이 글로연',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (176,'gildong@naver.com','2018-07-12','15:18:37','나무 친구 이','나무 친구 이야기 길벗어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (177,'gildong@naver.com','2018-10-24','14:07:22','휠체어를 탄 ','휠체어를 탄 사서 길벗어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (179,'gildong@naver.com','2018-10-29','14:21:00','꿈터 어린이','[꿈터 어린이 11]이상한 마을 1 : 사팔뜨기 선장의 저주 꿈터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (180,'gildong@naver.com','2018-10-29','10:38:31','꿈터 어린이','[꿈터 어린이 12]이상한 마을 2 : 팁 아저씨의 보물집 꿈터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (181,'gildong@naver.com','2018-12-09','14:21:51','지식 지혜 ','[지식 지혜 시리즈 꿈터 그림책 15]카펫 소년의 선물 꿈터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (183,'gildong@naver.com','2019-01-10','17:56:47','예술과 심리','[예술과 심리 동화 시리즈 10]할머니의 강 나한기획',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (184,'gildong@naver.com','2017-12-23','12:18:39','낮은산 키큰','[낮은산 키큰나무 11]기타 보이 낮은산',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (186,'gildong@naver.com','2018-04-01','16:06:45','우리는 학교에','우리는 학교에 가요 낮은산',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (187,'gildong@naver.com','2018-07-22','13:53:22','우리 집 정원','우리 집 정원에는 코끼리가 산다 내인생의책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (189,'gildong@naver.com','2018-10-21','15:18:28','동화는 내친','[동화는 내친구 70]파블로와 두 할아버지 논장',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (190,'gildong@naver.com','2017-12-04','15:54:49','놀 청소년문','[놀 청소년문학 11]우리 둘뿐이다 놀',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (191,'gildong@naver.com','2018-10-03','17:05:05','놀 청소년문','[놀 청소년문학 24]오월의 충치 놀',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (339,'bangwon@naver.com','2018-11-08','17:57:33','신나는 책읽','[신나는 책읽기 35]개조심 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (340,'bangwon@naver.com','2018-07-22','14:22:49','창비 청소년','[창비 청소년 문고 6]세상에서 가장 아름다워질 너에게 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (341,'bangwon@naver.com','2018-02-04','15:47:05','창비 청소년','[창비 청소년 문학 41]남학생 자리 1 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (342,'bangwon@naver.com','2018-02-04','13:54:53','창비 청소년','[창비 청소년 문학 42]남학생 자리 2 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (343,'bangwon@naver.com','2018-04-01','15:34:51','창비 청소년','[창비 청소년 문학 43]두려움에게 인사하는 법 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (344,'bangwon@naver.com','2018-06-17','09:41:40','창비 청소년','[창비 청소년 문학 44]1945, 철원 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (345,'bangwon@naver.com','2018-09-08','11:02:18','창비아동문고','[창비아동문고 268]우리 동네 전설은 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (346,'bangwon@naver.com','2018-10-14','14:42:00','창비아동문고','[창비아동문고 269]복수의 여신 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (347,'bangwon@naver.com','2018-07-04','09:04:10','채우리 저학','[채우리 저학년 문고 52]기똥찬 사우루스가 나타났다 채우리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (348,'bangwon@naver.com','2018-04-29','17:21:56','책콩 그림책','[책콩 그림책 17]왜 띄어 써야 돼? 책과콩나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (349,'bangwon@naver.com','2018-06-08','17:23:56','책콩 그림책','[책콩 그림책 19]친구를 사귀는 아주 특별한 방법 책과콩나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (350,'bangwon@naver.com','2017-12-28','10:48:14','책콩 어린이','[책콩 어린이 17]내일이면 아빠가 떠나 책과콩나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (351,'bangwon@naver.com','2018-10-19','12:14:10','책콩 어린이','[책콩 어린이 22]아름다운 아이 책과콩나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (352,'bangwon@naver.com','2018-02-28','09:23:36','책콩 청소년','[책콩 청소년 12]고양이가 내 체육복을 먹어 버렸어요 책과콩나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (353,'bangwon@naver.com','2018-08-19','15:56:40','책콩 청소년','[책콩 청소년 13]나는 앞으로도 살아간다 책과콩나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (354,'bangwon@naver.com','2018-02-02','17:46:22','곰곰어린이 ','[곰곰어린이 14]바이올리니스트가 되고 싶은 용 책속물고기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (355,'bangwon@naver.com','2018-08-03','14:58:46','곰곰어린이 ','[곰곰어린이 17]시간을 만드는 방법 책속물고기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (356,'bangwon@naver.com','2018-04-05','09:18:45','그림책이 참','[그림책이 참 좋아 6]놀자! 책읽는곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (357,'bangwon@naver.com','2018-07-29','17:47:07','큰곰자리 5','[큰곰자리 5]책 좀 빌려 줘유  책읽는곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (358,'bangwon@naver.com','2018-07-08','11:05:13','바람 그림책','[바람 그림책 6]천 개의 바람 천 개의 첼로 천개의바람',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (359,'bangwon@naver.com','2018-05-24','17:40:16','선생님과 함께','선생님과 함께 일기 쓰기 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (360,'bangwon@naver.com','2018-10-06','17:29:03','올챙이문고 ','[올챙이문고 저학년동화 15]쿰바의 꿈 청개구리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (361,'bangwon@naver.com','2018-09-20','10:02:53','가로세로그림','[가로세로그림책 2]나는 빈 라덴이 아니에요! 초록개구리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (362,'bangwon@naver.com','2018-07-11','09:54:31','다릿돌 읽기','[다릿돌 읽기]마법의 글짓기 크레용하우스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (363,'bangwon@naver.com','2018-06-10','15:25:04','청소년 오딧','[청소년 오딧세이]내 인생의 드리블 크레용하우스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (364,'bangwon@naver.com','2018-05-30','13:49:30','다독다독 청','[다독다독 청소년문고]나는 부모와 이혼했다 큰북작은북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (365,'bangwon@naver.com','2018-03-30','15:33:00','다독다독 청','[다독다독 청소년문고]우리들의 선거 큰북작은북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (367,'bangwon@naver.com','2018-07-25','15:47:34','슬픔을 모으는','슬픔을 모으는 셀레스탱  키즈엠',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (369,'bangwon@naver.com','2018-11-10','11:04:25','사춘기 예찬 ','사춘기 예찬 - 사춘기의 가치를 일깨우는 문학 멘토링 탐',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (370,'bangwon@naver.com','2018-09-27','17:02:56','너른세상 그','[너른세상 그림책]워낭소리 파란자전거',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (371,'bangwon@naver.com','2018-07-14','16:05:10','세바퀴 저학','[세바퀴 저학년 책읽기 10]무덤이 들썩들썩 귀신이 곡할 노릇 파란자전거',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (373,'bangwon@naver.com','2018-10-28','17:21:34','마음이 자라','[마음이 자라는 나무 31]열혈 돼지 전설 푸른숲주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (374,'bangwon@naver.com','2018-11-29','09:01:03','마음이 자라','[마음이 자라는 나무 32]세상에서 가장 완벽한 교실 푸른숲주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (376,'bangwon@naver.com','2018-12-09','11:01:03','푸른숲 역사','[푸른숲 역사 동화 6]나는 비단길로 간다 푸른숲주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (377,'bangwon@naver.com','2018-02-07','09:24:55','미래의 고전','[미래의 고전 27]사료를 드립니다 푸른책들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (378,'bangwon@naver.com','2018-06-03','14:42:04','미래의 고전','[미래의 고전 28]내 친구는 외계인 푸른책들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (380,'bangwon@naver.com','2018-09-19','16:12:41','푸른도서관 ','[푸른도서관 53]까레이스키, 끝없는 방랑 푸른책들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (381,'bangwon@naver.com','2018-11-14','17:30:31','푸른도서관 ','[푸른도서관 54]나는 랄라랜드로 간다 푸른책들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (383,'bangwon@naver.com','2018-05-09','10:52:03','한겨레 높은','[한겨레 높은학년동화 24]천사를 미워해도 되나요 한겨레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (384,'bangwon@naver.com','2018-11-18','09:53:23','한겨레 높은','[한겨레 높은학년동화 26]대장간 골목 - 세계의 숨은 걸작 2 : 체코 한겨레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (386,'bangwon@naver.com','2018-10-14','16:19:36','한림 고학년','[한림 고학년문고 21]밤에 수영하는 아이들 한림출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (387,'bangwon@naver.com','2018-12-15','13:26:18','한림 고학년','[한림 고학년문고 23]낙지가 돌아왔다 한림출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (389,'bangwon@naver.com','2018-10-09','10:34:10','걸음동무 그','[걸음동무 그림책 13]탁자는 탁자일 뿐일까? 해솔',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (390,'bangwon@naver.com','2018-02-02','16:05:53','2학년 6반 ','2학년 6반 고길희 선생님  현암사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (391,'bangwon@naver.com','2018-06-03','10:46:12','효리원 3.','[효리원 3.4학년 창작 동화 시리즈 7]내가 이상합네까? 효리원',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (392,'bangwon@naver.com','2018-09-23','10:55:22','교과서와 함','(교과서와 함께 읽는)한국사 여행기 가문비어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (394,'bangwon@naver.com','2018-05-24','17:39:25','이토록 아찔한','이토록 아찔한 경성 - OBS 특별기획 세상을 움직이는 역사 꿈결',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (395,'bangwon@naver.com','2018-11-20','12:58:23','세상을 빛낸','[세상을 빛낸 위대한 여성]왕가리 마타이  나무처럼',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (396,'bangwon@naver.com','2018-06-19','12:26:07','아마존에서 ','(아마존에서 조선까지)고무 따라 역사 여행 너머학교',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (398,'bangwon@naver.com','2018-06-19','14:56:07','재강이의 좌','(재강이의 좌충우돌)한국사 달통기 2 - 조선 시대부터 현대 노란상상',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (399,'bangwon@naver.com','2017-11-29','11:25:01','내셔널지오그','[내셔널지오그래피 청소년 글로벌 교양지리 1]사라진 고대 문명 느낌이있는책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (400,'bangwon@naver.com','2018-11-08','17:51:40','세계사 가로','[세계사 가로지르기 7]세상을 바꾼 길 다른',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (401,'bangwon@naver.com','2018-10-31','13:28:15','16살, 절실','16살, 절실한 꿈이 나를 움직인다 - 절망을 딛고 세계정상에 오른 작은 거인 신지애 이야기 다산에듀(다산북스)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (403,'bangwon@naver.com','2018-09-14','15:58:19','통 한국사 2','통 한국사 2. 조선에서 현대까지 다산에듀(다산북스)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (404,'bangwon@naver.com','2018-10-05','17:57:14','도토리숲 그','[도토리숲 그림책 1]평화를 꿈꾸는 도토리나무 도토리숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (406,'bangwon@naver.com','2018-04-18','14:52:56','세상을 바꾼','[세상을 바꾼 큰 걸음 만화 인물 평전 5]루쉰 : 문학으로 잠자는 중국을 깨우다 돌베개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (407,'bangwon@naver.com','2018-12-05','14:46:14','장준하, 묻지','장준하, 묻지 못한 진실 - 장준하 의문사 사건 조사관의 대국민 보고서 돌베개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (408,'bangwon@naver.com','2018-08-03','12:24:58','이미지와 스','(이미지와 스토리텔링의 지리 여행)세계 지리를 보다 1. 세계 자연.인문.환경, 아시아 리베르스쿨',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (409,'bangwon@naver.com','2018-08-08','15:21:06','이미지와 스','(이미지와 스토리텔링의 지리 여행)세계 지리를 보다 2. 유럽, 서남아시아 리베르스쿨',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (410,'bangwon@naver.com','2018-08-08','15:54:04','이미지와 스','(이미지와 스토리텔링의 지리 여행)세계 지리를 보다 3. 아메리카, 아프리카, 오세아니아 리베르스쿨',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (411,'bangwon@naver.com','2018-03-05','17:52:25','교과서 쏙 ','[교과서 쏙 한국사 들여다보기 5]우리 조상의 유배 이야기 리젬',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (412,'bangwon@naver.com','2018-08-17','15:32:39','자랑스런 우','[자랑스런 우리 문화 7]백발백중 우리 민족 활시위를 당겨라 마루벌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (413,'bangwon@naver.com','2018-09-16','12:23:00','청소년 롤모','[청소년 롤모델 시리즈 14. 정명훈]한국인의 열정으로 세계를 지휘하라  명진출판 ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (414,'bangwon@naver.com','2018-04-25','17:01:13','문학동네 세','[문학동네 세계 인물 그림책 8]왕가리 마타이 - 아프리카에 3천만 그루의 나무를 심은 노벨 평화상 수상자  문학동네',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (415,'bangwon@naver.com','2018-11-21','16:16:20','그레이트 피','[그레이트 피플 2]마틴 루서 킹의 마이크 밝은미래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (416,'bangwon@naver.com','2018-04-11','14:01:02','더 나은 세','[더 나은 세상을 꿈꾸는 보리 한국사 1]선조, 나는 이렇게 본다 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (417,'bangwon@naver.com','2018-10-04','14:08:21','더 나은 세','[더 나은 세상을 꿈꾸는 보리 한국사 2]문체반정, 나는 이렇게 본다 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (418,'bangwon@naver.com','2018-05-19','11:34:54','작은 역사 ','[작은 역사 1]한양 1770 보림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (419,'bangwon@naver.com','2018-07-04','10:27:56','고만녜 - 백','고만녜 - 백 년 전 북간도 이야기 보림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (420,'bangwon@naver.com','2018-12-09','12:11:05','누가 티라노사','누가 티라노사우루스를 발견했을까? 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (421,'bangwon@naver.com','2018-11-07','12:19:25','아홉 살 멘','[아홉 살 멘토 시리즈]아홉 살 진로 멘토 - 초등학생을 위한 직업으로 보는 인물 이야기 북멘토',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (422,'bangwon@naver.com','2019-01-04','12:26:41','역사인물도서','[역사인물도서관 1]김근태 이야기 - 당신이 옳았습니다 북멘토',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (423,'bangwon@naver.com','2018-09-29','14:26:41','작은 용기, ','작은 용기, 세상을 바꾸다 - 불평등, 불의, 폭력에 맞선 사람들 북스코프',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (424,'bangwon@naver.com','2018-08-24','16:09:17','나의 소원 -','나의 소원 - 마음 좋은 사람, 백범 김구 비움과채움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (425,'bangwon@naver.com','2018-01-28','13:52:33','1318교양','[1318교양문고]동에 번쩍 서에 번쩍 세계 지리 이야기 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (426,'bangwon@naver.com','2018-02-05','10:12:26','역사일기 7','[역사일기 7 조선 전기]백발백중 명중이, 무관을 꿈꾸다 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (427,'bangwon@naver.com','2018-07-07','12:17:54','역사일기 8','[역사일기 8 조선 후기]얼음 장수 엄기둥, 한양을 누비다 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (428,'bangwon@naver.com','2018-12-09','16:57:27','역사일기 9','[역사일기 9 일제 강점기]부산 소학생 영희, 경성행 기차를 타다 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (429,'bangwon@naver.com','2018-12-29','17:44:23','징검다리 역','[징검다리 역사책 2]기이한 책장수 조신선 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (430,'bangwon@naver.com','2018-05-11','11:36:12','용선생의 시끌','용선생의 시끌벅적 한국사 세트 - 전8권 사회평론',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (431,'bangwon@naver.com','2018-03-07','10:48:02','얘들아, 백제','얘들아, 백제 여행 떠나 볼래? - 서울.공주.부여를 지나 일본까지 살림어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (433,'bangwon@naver.com','2018-09-16','11:49:19','답사 바로하','[답사 바로하기 역사 바로보기 11]우리 아이 첫 남한강 여행 - 검룡소에서 두물머리까지 삼성당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (434,'bangwon@naver.com','2018-11-09','12:19:10','샘터 솔방울','[샘터 솔방울 인물 10]고고학자 손보기 - 우리 역사를 손보기 해 드립니다 샘터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (435,'bangwon@naver.com','2018-06-23','16:17:43','샘터 솔방울','[샘터 솔방울 인물 9]실패의 전문가들 - 우리 시대의 멘토들이 들려 주는 위대한 실패 이야기 샘터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (437,'bangwon@naver.com','2018-10-19','09:45:47','책상위교양 ','[책상위교양 22]어메이징 한국사 서해문집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (438,'bangwon@naver.com','2018-10-19','10:54:08','책상위교양 ','[책상위교양 23]어메이징 세계사 서해문집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (439,'bangwon@naver.com','2018-06-03','11:53:44','14인의 책 ','14인의 책 - 한국 현대사를 말하다 서해문집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (440,'bangwon@naver.com','2018-08-02','15:48:38','신나게 놀고','(신나게 놀고 쉽게 공부하는)교과서 문학기행 소란',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (442,'bangwon@naver.com','2017-12-20','11:23:04','스코프 누구','[스코프 누구누구 시리즈 9]창의력 소년 송승환, 세상을 난타하다 스코프',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (443,'bangwon@naver.com','2018-11-14','11:31:42','1 대 10','[1 대 100 시리즈 1]1 대 100 : 요리 에드워드 권 - 초등학생 100명이 묻고 최고의 전문가가 답하다 스콜라',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (444,'bangwon@naver.com','2018-05-19','14:32:58','시공주니어 ','[시공주니어 어린이 교양서 31]위견전 - 인간을 깨우는 위대한 개들 시공주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (446,'bangwon@naver.com','2018-05-30','12:45:54','공부가 되는','[공부가 되는 시리즈 38]공부가 되는 삼국사기 아름다운사람들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (447,'bangwon@naver.com','2018-11-28','11:37:58','공부가 되는','[공부가 되는 시리즈 41]공부가 되는 세계지리지도 아름다운사람들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (448,'bangwon@naver.com','2018-01-13','10:50:56','피플채널 1','[피플채널 15]주시경 아리샘주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (450,'bangwon@naver.com','2018-09-29','09:28:53','유물로 보는 ','유물로 보는 새로운 역사 아이앤북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (451,'bangwon@naver.com','2018-10-06','13:23:03','지혜의 보물','(지혜의 보물 창고)도서관의 역사 - 낙타에서 컴퓨터에 이르기까지 한없이 펼쳐지는 도서관 이야기 아카넷주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (452,'bangwon@naver.com','2018-11-08','14:49:16','세상을 쓰는 ','세상을 쓰는 아이들 - 위대한 작가가 된 여섯 명의 아이들 아카넷주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (454,'bangwon@naver.com','2018-04-18','10:35:28','양철북 인물','[양철북 인물이야기 3 페스탈로치]세상을 바꾼 학교 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (455,'bangwon@naver.com','2018-09-19','15:09:35','우리역사 가','[우리역사 가까이 4]대한제국 가까이 어린른이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (456,'bangwon@naver.com','2018-07-20','09:52:05','재미있는 이','[재미있는 이야기 살아있는 역사 15]우리 역사의 힘이 된 9가지 책 이야기 어린이작가정신',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (458,'bangwon@naver.com','2018-08-08','17:27:03','여유당 인물','[여유당 인물산책 1]아스트리드 린드그렌 - 영원한 삐삐 롱스타킹 여유당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (459,'bangwon@naver.com','2018-04-19','11:35:32','아! 그렇구나','아! 그렇구나 우리 역사 12. 근대 편 여유당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (460,'bangwon@naver.com','2018-12-23','12:04:53','조금은 삐딱한','조금은 삐딱한 세계사 : 유럽편 역사의아침',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (462,'bangwon@naver.com','2017-12-31','14:18:03','지도 없이 ','[지도 없이 떠나는 101일간의 세계 문화 역사 18]지도 없이 떠나는 101일간의 세계문화유산 영교출판',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (463,'bangwon@naver.com','2018-08-29','14:57:27','DK 어린이','[DK 어린이 백과]100 people 세상을 움직이다 예림당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (464,'bangwon@naver.com','2018-05-31','12:21:58','우리 인물 ','[우리 인물 이야기 28](가야금 명인 황병기)딩덩 덩 둥덩 가야금 소리 들어 볼래? 우리교육',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (466,'bangwon@naver.com','2018-06-30','17:19:24','빛나는 유네','[빛나는 유네스코 우리유산 8]수원 화성 - 정조의 꿈을 품은 성곽 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (467,'bangwon@naver.com','2018-06-10','17:50:20','역사 속 우','[역사 속 우리 이야기 달마루 11]내가 진짜 조선의 멋쟁이 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (650,'chunhyang@naver.com','2018-04-22','16:14:57','토토 생각날','[토토 생각날개 24]세계문화유산 양동마을 - 우리의 전통이 살아 숨 쉬는 곳 토토북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (651,'chunhyang@naver.com','2018-12-01','12:56:54','토토 우리문','[토토 우리문화 학교 4]놀자, 노세! 전통 놀이 이야기 토토북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (652,'chunhyang@naver.com','2017-11-19','11:04:55','세상에서 가장','세상에서 가장 쉬운 일, 자원봉사 - 봉사하며 꿈을 찾은 하늘이의 나눔 이야기 토토북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (653,'chunhyang@naver.com','2018-01-23','12:18:42','톡 꼬마 철','[톡 꼬마 철학자 2]장애란 뭘까? 톡',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (654,'chunhyang@naver.com','2018-08-08','12:31:38','톡 꼬마 철','[톡 꼬마 철학자 3]삶과 죽음에 대한 커다란 책 톡',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (655,'chunhyang@naver.com','2018-06-20','15:23:22','어린이를 위','(어린이를 위한)양성평등 이야기 파라주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (656,'chunhyang@naver.com','2017-11-13','17:33:09','마시얼의 27','마시얼의 27일간 경제탐험 - 소설로 읽는 경제 이야기 파라주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (657,'chunhyang@naver.com','2018-01-18','13:29:31','나도 잘하고 ','나도 잘하고 싶다구 - 책보다 무거운 어깨를 짊어진 십대들의 진짜 외침 팜파스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (658,'chunhyang@naver.com','2019-01-19','16:02:20','나란 놈, 너','나란 놈, 너란 녀석 - 열일곱 살, 친구 관계를 생각하다 팜파스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (659,'chunhyang@naver.com','2019-01-24','12:48:25','내가 먼저 ','[내가 먼저 시리즈 4]내가 먼저 조심하는 안전생활 - Safe 푸른날개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (660,'chunhyang@naver.com','2018-07-29','17:24:35','생각이 자라','[생각이 자라는 나무 23]경제교과서, 세상에 딴지걸다 푸른숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (661,'chunhyang@naver.com','2018-05-03','17:48:36','어린이를 위','(어린이를 위한)바람의 딸, 우리 땅에 서다 1 푸른숲주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (662,'chunhyang@naver.com','2018-05-03','15:03:54','어린이를 위','(어린이를 위한)바람의 딸, 우리 땅에 서다 2 푸른숲주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (663,'chunhyang@naver.com','2018-03-03','12:49:27','우리 얼 그','[우리 얼 그림책 2]안녕, 태극기! 푸른숲주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (664,'chunhyang@naver.com','2018-04-01','10:24:03','장바구니는 왜','장바구니는 왜 엄마를 울렸을까? 풀빛',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (665,'chunhyang@naver.com','2018-06-19','09:38:24','피노키오에게도','피노키오에게도 인권이 있을까? - 명작 동화와 함께 읽는 세계인권선언 플러스예감',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (666,'chunhyang@naver.com','2018-05-24','16:39:44','공부하고 놀','[공부하고 놀자 4]착한 설탕 사 오너라 - 공정무역 세계사 여행 학고재',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (667,'chunhyang@naver.com','2018-08-03','09:58:26','학고재 그림','[학고재 그림책 2]노자 할아버지 같이 놀아요! 학고재',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (668,'chunhyang@naver.com','2018-12-22','12:33:38','학고재 쇳대','[학고재 쇳대 3]떡볶이 주세요 - 음식 유래담  학고재',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (669,'chunhyang@naver.com','2018-02-04','17:38:43','열두 살 직','[열두 살 직업체험 시리즈 ]독수리 오남매, 법률가를 만나다! 한겨레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (670,'chunhyang@naver.com','2018-09-14','09:30:25','지구마을 리','[지구마을 리포트 1]아프리카 국경버스 한겨레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (671,'chunhyang@naver.com','2018-11-02','10:30:25','한국 속 지구','한국 속 지구마을 리포트 한겨레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (672,'chunhyang@naver.com','2018-11-01','11:03:53','다문화 백과사','다문화 백과사전 - 혼자보다 우리가 똑똑하다 한권의책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (673,'chunhyang@naver.com','2018-06-28','11:22:50','세계 유명 ','[세계 유명 박물관 여행 시리즈 7]미리 가본 국립민속박물관 한림출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (674,'chunhyang@naver.com','2018-09-19','14:22:45','좌충우돌 선거','좌충우돌 선거운동 - 아이들의 선거, 어른들의 선거 한림출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (676,'chunhyang@naver.com','2018-03-02','11:31:22','열린 마음 ','[열린 마음 다문화 8](즈드라스트부이쩨 러시아) 마법 인형 마트료시카 한솔수북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (677,'chunhyang@naver.com','2018-06-09','13:55:38','열린 마음 ','[열린 마음 다문화 9](너머스떼 네팔) 히말라야 환상 여행 한솔수북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (678,'chunhyang@naver.com','2018-06-20','09:58:45','철학그리다 ','[철학그리다 2. 칸트]칸트 교수의 정신없는 하루 함께읽는책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (680,'chunhyang@naver.com','2018-07-09','11:34:22','청소년을 위한','청소년을 위한 정신 의학 에세이 해냄출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (682,'chunhyang@naver.com','2018-08-03','09:36:59','세모 지식 ','[세모 지식 박물관 4]종이는 힘이 세다  현암사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (683,'chunhyang@naver.com','2018-03-05','16:29:36','인권 지킴이','[인권 지킴이 1]나는 어린이 병사 - 총을 들고 죽어가는 분쟁지역의 아이들 현암사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (684,'chunhyang@naver.com','2018-03-05','15:36:53','인권 지킴이','[인권 지킴이 2]나는 어린이 노동자 - 세계 2억 노동하는 아이들의 이야기 현암사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (258,'gildong@naver.com','2018-04-08','09:35:29','바다로 간 ','[바다로 간 달팽이 1]난 아프지 않아 - 청소년 테마 소설집 북멘토',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (262,'gildong@naver.com','2018-05-24','16:25:25','야누슈 코르착','야누슈 코르착 - 어린이 권리 조약의 아버지 북뱅크',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (290,'gildong@naver.com','2018-10-05','12:38:16','샘터어린이문','[샘터어린이문고 29]그 고래, 번개 샘터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (293,'gildong@naver.com','2018-05-14','09:31:02','아빠랑 은별','(아빠랑 은별이랑)섬진강 그림여행 소년한길',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (297,'gildong@naver.com','2018-05-29','10:21:22','시공 청소년','[시공 청소년 문학 50]개님전 시공사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (300,'gildong@naver.com','2018-05-19','12:15:21','쏙쏙 뽑은 ','[쏙쏙 뽑은 교과서 옛이야기 3]거울 소동 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (304,'bangwon@naver.com','2018-04-04','10:13:49','카르페디엠 ','[카르페디엠 29]원예반 소년들 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (307,'bangwon@naver.com','2018-02-09','14:52:56','톨스토이와 행','톨스토이와 행복한 하루 에디터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (310,'bangwon@naver.com','2018-12-24','15:03:17','날개달린 그','[날개달린 그림책방 12]날아라, 연아 여유당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (313,'bangwon@naver.com','2018-06-10','16:09:19','우리같이 청','[우리같이 청소년문고 8]이제 다시 시작이야 우리같이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (317,'bangwon@naver.com','2018-07-04','09:37:58','우리 땅 우','[우리 땅 우리 아이 3]날아라 현수야 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (320,'bangwon@naver.com','2018-03-14','13:31:22','몬스터 콜스','몬스터 콜스 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (323,'bangwon@naver.com','2018-07-14','15:46:16','톨스토이의 이','톨스토이의 이솝우화 - 톨스토이가 다시 쓴 세계 최초의 고대우화 인디북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (327,'bangwon@naver.com','2018-03-07','10:51:54','작은숲 청소','[작은숲 청소년 1]36.4℃ - 중고등학생이 직접 쓰고 뽑은 학생시 123 작은숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (332,'bangwon@naver.com','2018-10-09','10:10:09','정글짐 그림','[정글짐 그림책 2]별명 그리는 아이 정글짐북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (336,'bangwon@naver.com','2018-03-29','11:42:48','우수문학상 ','[우수문학상 수상 작가선 6]할아버지 말고 할머니 이야기 주니어중앙',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (366,'bangwon@naver.com','2018-03-28','17:14:03','꽃의 요정 ','꽃의 요정  키즈엠',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (368,'bangwon@naver.com','2018-08-29','14:52:06','탐 청소년문','[탐 청소년문학 6]열다섯, 문을 여는 시간  탐',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (372,'bangwon@naver.com','2019-01-14','11:35:26','스스로 읽는','[스스로 읽는 성장 동화 13]스프링 다리 푸른날개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (375,'bangwon@naver.com','2017-12-20','10:19:30','푸른숲 역사','[푸른숲 역사 동화 2]옹주의 결혼식 푸른숲주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (379,'bangwon@naver.com','2018-06-08','11:20:00','푸른도서관 ','[푸른도서관 50]신기루 푸른책들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (382,'bangwon@naver.com','2018-11-03','17:17:04','소녀 성장 ','[소녀 성장 백과 1]꼬마 통역사 풀빛미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (385,'bangwon@naver.com','2017-12-17','17:15:31','메멘토 노라','메멘토 노라 한겨레틴틴',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (388,'bangwon@naver.com','2018-05-30','10:34:51','이팔청춘, 2','이팔청춘, 2막 23장 - 열여섯 살, 중3들의 책과 영화와 세상 이야기 한티재',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (393,'bangwon@naver.com','2017-12-31','17:45:46','꼬마이실의 ','[꼬마이실의 여성 인물 이야기 17](가르침을 통해 희망을 심은)교육자 꼬마이실',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (397,'bangwon@naver.com','2018-06-19','10:09:02','재강이의 좌','(재강이의 좌충우돌)한국사 달통기 1 - 선사 시대부터 고려 시대 노란상상',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (402,'bangwon@naver.com','2018-09-14','17:45:24','통 한국사 1','통 한국사 1. 구석기에서 고려까지 다산에듀(다산북스)',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (405,'bangwon@naver.com','2017-12-13','13:03:26','세상을 바꾼','[세상을 바꾼 큰 걸음 만화 인물 평전 1]레오나르도 다빈치 : 르네상스를 꽃피운 위대한 상상력 돌베개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (432,'bangwon@naver.com','2018-01-19','15:04:22','남도의 기억을','남도의 기억을 걷다 - 노성태의 "시대와 소통하는 인물역사기행" 살림터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (436,'bangwon@naver.com','2018-11-28','09:38:58','생각을 담는','[생각을 담는 역사 5]순간포착! 한국사명장면 1 - 삼국과 고려시대 생각을담는어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (441,'bangwon@naver.com','2018-08-08','09:08:21','스코프 누구','[스코프 누구누구 시리즈 12]박영석, 세계의 지붕이 된 산사나이 스코프',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (445,'bangwon@naver.com','2018-05-16','10:58:36','공부가 되는','[공부가 되는 시리즈 37]공부가 되는 삼국유사 아름다운사람들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (449,'bangwon@naver.com','2018-08-10','13:00:41','아이세움 배','[아이세움 배움터 33]길따라 세계사 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (453,'bangwon@naver.com','2017-05-16','12:57:03','실크로드로 배','실크로드로 배우는 세계역사 시리즈 세트 - 전10권 아카넷주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (457,'bangwon@naver.com','2019-01-16','11:06:34','아! 팔레스타','아! 팔레스타인 1 - 만화로 보는 팔레스타인 역사 여우고개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (461,'bangwon@naver.com','2018-07-24','09:10:41','지식교양 모','[지식교양 모든 3 아프리카]처음 만나는 아프리카 - 거꾸로 보는 검은 대륙의 역사 열다',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (465,'bangwon@naver.com','2018-07-05','09:33:49','어린이를 위','(어린이를 위한)시골의사 박경철의 아름다운 동행 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (494,'bangwon@naver.com','2018-09-07','11:48:09','여행길에서 만','여행길에서 만난 국립 박물관 - 가족과 함께 떠나는 국립박물관 12 풀빛',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (498,'bangwon@naver.com','2018-03-07','13:34:08','한겨레 인물','[한겨레 인물탐구 8]린드그렌 - 삐삐 롱스타킹의 탄생 한겨레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (502,'bangwon@naver.com','2018-03-29','11:59:22','특종 20세기','특종 20세기 한국사 2 - 일제 강점과 독립운동 한솔수북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (506,'bangwon@naver.com','2018-05-02','13:54:28','역사를 읊다,','역사를 읊다, 서사시 대백제 함께읽는책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (509,'bangwon@naver.com','2018-09-05','15:33:45','처음 읽는 인','처음 읽는 인도사 - 다양함이 공존하는 매혹의 아대륙, 인도 휴머니스트',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (514,'bangwon@naver.com','2017-12-13','17:29:00','교과서 속 구','교과서 속 구석구석 세계 명화 - 초등 교과서에서 뽑은 세계 명화 모음 계림북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (518,'bangwon@naver.com','2018-03-14','16:39:02','청소년 문화','[청소년 문화예술교육 1]학교에서 연극하자 - 우리들끼리 대본 보며 연극 만들기 다른',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (523,'bangwon@naver.com','2018-01-03','14:55:07','전통공예그림','[전통공예그림책 나비장석]화각 삼층장 이야기 보림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (527,'bangwon@naver.com','2018-05-19','10:31:56','상상의집 지','[상상의집 지식마당 6]고양이네 미술관 상상의집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (551,'bangwon@naver.com','2017-11-29','11:43:50','길담서원 청','[길담서원 청소년인문학교실-몸]몸, 태곳적부터의 이모티콘 궁리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (555,'bangwon@naver.com','2018-05-24','13:20:58','까짓것! 한번','까짓것! 한번 해보는 거야 - 나만의 방식으로 세상에 출사표를 던진 20대 청년의 50개 직업 도전기 글담출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (561,'bangwon@naver.com','2018-05-12','09:38:55','세더잘10','[세더잘10]성형 수술, 외모지상주의의 끝은? 내인생의책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (565,'bangwon@naver.com','2017-11-23','14:11:32','노란돼지 창','[노란돼지 창작그림책 12]도깨비 살려! - 우리문화 이야기 : 마을과 집안을 지키는 신 노란돼지',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (570,'bangwon@naver.com','2018-03-09','15:29:46','십대를 위한 ','십대를 위한 재미있는 어휘 교과서 2 뜨인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (573,'bangwon@naver.com','2018-04-15','13:04:49','똑똑한 어린이','똑똑한 어린이 어휘 교과서 뜨인돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (577,'bangwon@naver.com','2018-05-04','10:29:11','미세기 교실','[미세기 교실 밖 직업 체험 학교]처음 만나는 직업책 1 미세기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (581,'bangwon@naver.com','2018-06-29','11:54:25','돈의 비밀 -','돈의 비밀 - 돈으로 읽는 세계 경제 이야기 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (584,'bangwon@naver.com','2018-12-19','11:44:57','그들도 나처럼','그들도 나처럼 소중하다 - 대한민국 최초의 인권대사 박경서 그가 들려주는 세계 인권 이야기 북로그컴퍼니',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (613,'chunhyang@naver.com','2019-01-06','13:11:47','처음 만나는 ','처음 만나는 우리 인문학 - 페르소나와 아니마의 갈림길에서 아포리아',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (617,'chunhyang@naver.com','2018-05-18','09:12:22','조금 다른 지','조금 다른 지구마을 여행 - 나를 바꾸고 세상을 배우는 청춘 예담',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (621,'chunhyang@naver.com','2018-05-12','09:01:51','작은 경제학','(작은 경제학자를 위한)자본주의 교과서 - 강수돌 선생님과 함께 떠나는 자본주의 역사 여행 웃는돌고래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (26,'gildong@naver.com','2018-01-19','14:45:18','어른들은 잘 ','어른들은 잘 모르는 아이들의 숨겨진 삶 - 당신 아이를 움직이는 또래 집단의 힘 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (31,'gildong@naver.com','2018-06-24','12:24:04','초등 역사 수','초등 역사 수업의 길잡이 책과함께',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (34,'gildong@naver.com','2018-06-24','10:24:32','푸른 눈, 갈','푸른 눈, 갈색 눈 - 세상을 놀라게 한 차별수업 이야기 한겨레출판',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (38,'gildong@naver.com','2018-05-19','14:42:21','글쓰기 교육 ','글쓰기 교육 이론과 방법 : 이오덕 글쓰기 교육  고인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (42,'gildong@naver.com','2018-07-08','13:51:15','리딩 프라미스','리딩 프라미스 - 아빠와 함께 한 3218일간의 독서 마라톤 문학동네',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (46,'gildong@naver.com','2018-09-14','13:34:16','아이의 미래','(아이의 미래를 바꾸는)슬로리딩 조선북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (49,'gildong@naver.com','2018-11-10','11:55:50','책으로 노는 ','책으로 노는 집 - 책으로 대화하고 소통하는 독서가족 탐방기 푸른지식',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (54,'gildong@naver.com','2018-04-08','14:11:20','토론의 전사 ','토론의 전사 2. 디베이트의 방법을 찾다 해냄에듀',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (57,'gildong@naver.com','2018-10-09','13:26:18','희망을 만드','[희망을 만드는 법 6]마르타와 사라진 물 고래이야기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (61,'gildong@naver.com','2018-08-09','09:52:19','1013 생','[1013 생각하는 지식 1]우주날씨를 말씀드리겠습니다 - 우주 과학자가 들려주는 우주 환경 이야기 꼬마이실',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (90,'gildong@naver.com','2018-02-08','11:44:14','세밀화로 그','[세밀화로 그린 우리 바닷물고기4]잘방잘방 제주바다 물고기 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (94,'gildong@naver.com','2018-12-29','12:27:51','봄나무 과학','[봄나무 과학교실 20]속담속에 숨은 수학 - 단위와 측정 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (98,'gildong@naver.com','2017-12-22','13:04:56','강력추천 세','[강력추천 세계 교양 지도 5]세상에서 가장 재미있는 남극지도 북스토리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (102,'gildong@naver.com','2018-09-02','13:41:55','우리 역사 속','우리 역사 속 수학이야기 - 흥미로운 조상들의 수학을 찾아서 사람의무늬',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (106,'gildong@naver.com','2018-03-24','14:46:30','우주를 누벼라','우주를 누벼라 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (109,'gildong@naver.com','2018-12-24','09:33:11','우리들은 갈릴','우리들은 갈릴레오 - 과학 4총사, 실험실에서 갈릴레오의 두뇌를 훔치다 서해문집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (114,'gildong@naver.com','2018-07-04','14:14:22','아이세움 지','[아이세움 지식그림책 32](달콤달콤 무시무시)설탕을 조심해 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (118,'gildong@naver.com','2018-04-29','11:43:02','분홍공주의 베','분홍공주의 베란다 텃밭 어린이나무생각',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (121,'gildong@naver.com','2018-05-01','10:28:52','녹색연합과 ','[녹색연합과 함께하는 대한민국 깃대종 - 봄]점박이물범, 내년에도 꼭 만나! 웃는돌고래',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (126,'gildong@naver.com','2018-10-06','10:22:22','공책으로 원숭','공책으로 원숭이를 구하자 - 날마다 세상을 바꾸는 500가지 아이디어 주니어김영사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (156,'gildong@naver.com','2018-01-28','11:26:40','공룡과 나 -','공룡과 나 - 흥미롭고 놀라운 비교 효리원',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (159,'gildong@naver.com','2018-06-24','12:03:42','개암청소년문','[개암청소년문학 15]고흐와 함께한 마지막 여름 개암나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (163,'gildong@naver.com','2018-04-08','15:38:44','읽기의 즐거','[읽기의 즐거움 7]내 동생은 렌탈 로봇 개암나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (166,'gildong@naver.com','2018-03-19','10:37:36','모두가 친구','[모두가 친구 20]곰이 된 아빠와 스트레스 선생 고래이야기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (170,'gildong@naver.com','2018-09-24','13:44:37','살아있는 글','[살아있는 글읽기 8]삐삐야 미안해 고인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (174,'gildong@naver.com','2018-01-24','13:53:43','내친구 작은','[내친구 작은거인 35]떴다! 꼼지락 공주네 반 아이들 국민서관',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (178,'gildong@naver.com','2018-08-08','13:24:00','아이 어른 ','[아이 어른 함께읽는 가족동화 1]쌍둥이와 호빵씨 꿈꾸는날개',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (182,'gildong@naver.com','2018-01-01','13:44:41','예술과 심리','[예술과 심리 동화 시리즈 1]말하는 소나무 나한기획',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (185,'gildong@naver.com','2019-01-12','16:02:09','나는 책읽기가','나는 책읽기가 정말 싫어 낮은산',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (188,'gildong@naver.com','2018-07-27','13:50:18','노란우산 읽','[노란우산 읽기책 1]꼬리 두 개 달린 인어이야기 노란우산',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (192,'gildong@naver.com','2018-05-30','09:36:35','첫 키스는 사','첫 키스는 사과 맛이야 1 - 사춘기를 위한 우리나라 대표 성장시 놀',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (218,'gildong@naver.com','2018-09-29','13:36:12','문지아이들 ','[문지아이들 123]내일을 향해 깡통을 차라! 문학과지성사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (221,'gildong@naver.com','2018-05-30','09:19:36','문학동네 동','[문학동네 동시집 22]나만 알래 문학동네',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (225,'gildong@naver.com','2018-09-23','09:49:00','미세기 고학','[미세기 고학년 도서관 7]할아버지의 방 미세기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (228,'gildong@naver.com','2018-08-12','13:14:30','쓰나미의 아이','쓰나미의 아이들 - 재난이 휩쓸고 갈 수 없는 것들에 관한 이야기 바다출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (233,'gildong@naver.com','2018-04-08','13:28:06','바우솔 작은','[바우솔 작은 어린이 15]수요일의 눈물 바우솔',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (236,'gildong@naver.com','2018-08-03','12:22:52','베틀북 철학','[베틀북 철학 동화 15]나는 어린이입니다  베틀북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (240,'gildong@naver.com','2018-06-22','14:50:42','아름다운 청','[아름다운 청소년 7]자유를 향한 머나먼 질주 42.195km 별숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (244,'gildong@naver.com','2018-07-04','11:11:19','보림문학선 ','[보림문학선 9]파란 수염 생쥐 미라이 보림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (247,'gildong@naver.com','2018-03-29','09:28:22','봄나무 문학','[봄나무 문학선 15]그림자 아이들 5. 두려움과 싸우는 아이들 봄나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (252,'gildong@naver.com','2019-01-12','16:21:25','봄봄 어린이','[봄봄 어린이 7]제비야 날아라 봄봄',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (255,'gildong@naver.com','2018-11-04','16:22:15','고래바위 - ','고래바위 - 꿈은 어떻게 이루어지는가 북극곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (468,'bangwon@naver.com','2018-08-08','16:03:40','역사 속 우','[역사 속 우리 이야기 달마루 12]더위야, 썩 물렀거라! 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (469,'bangwon@naver.com','2018-09-02','09:41:06','어우야담 - ','어우야담 - 저잣거리에서 왕실까지, 조선 사람들의 생생한 삶 이야기 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (470,'bangwon@naver.com','2018-03-31','14:24:35','청소년평전 ','[청소년평전 40]미디어 아트의 거장 백남준 자음과모음',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (471,'bangwon@naver.com','2018-10-04','11:58:21','템플 그랜든 ','템플 그랜든 - 자폐를 딛고 세상의 절반을 바꾼 동물학자 작은길',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (472,'bangwon@naver.com','2018-10-04','15:08:42','누구나 알지','[누구나 알지만 아무도 모르는 동서남북 우리 땅 2]일곱 빛깔 독도 이야기 조선북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (473,'bangwon@naver.com','2018-09-03','11:51:05','저학년 한국','[저학년 한국사 첫발 5]탑이 들려주는 이야기 한국사 조선북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (474,'bangwon@naver.com','2018-11-25','11:05:26','사회와 친해','[사회와 친해지는 책 : 역사]옛날 사람들은 어떻게 살았을까 2 - 도자기로 보는 조선 시대 삶과 예술 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (475,'bangwon@naver.com','2018-06-07','09:56:16','창비청소년문','[창비청소년문고 5]식탁 위의 세계사 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (476,'bangwon@naver.com','2018-09-16','12:28:47','창비청소년문','[창비청소년문고 7]살아있는 귀신 - 김시습과 금오신화 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (477,'bangwon@naver.com','2018-12-19','14:51:38','창비청소년문','[창비청소년문고 8]한 폭의 한국사 - 우리 그림 보며 한국사 나들이 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (478,'bangwon@naver.com','2018-07-22','09:49:40','키스 동양의 ','키스 동양의 창을 열다 - 영국 화가가 그린 아시아 1920~1940 책과함께',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (479,'bangwon@naver.com','2018-08-12','14:52:55','고고학 생생','(고고학 생생노트)땅에서 찾고 바다에서 건진 우리 역사 책과함께어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (480,'bangwon@naver.com','2019-01-18','13:54:59','남대문의 봄 ','남대문의 봄 - 숭례문 600년 이야기 책과함께어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (481,'bangwon@naver.com','2018-02-23','16:15:36','할머니, 왜 ','할머니, 왜 하필 열두 동물이에요? 책과함께어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (482,'bangwon@naver.com','2018-07-25','12:08:12','룰루랄라 우','[룰루랄라 우리고전 우리역사 21](겨레의 문화와 전통을 꽃피운 나라)조선이야기1 청년사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (483,'bangwon@naver.com','2018-07-19','12:46:54','룰루랄라 우','[룰루랄라 우리고전 우리역사 22](겨레의 문화와 전통을 꽃피운 나라)조선이야기2 청년사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (484,'bangwon@naver.com','2018-10-07','13:30:36','세상을 바꾼','[세상을 바꾼 작은 씨앗 11]황혜성 우리의 맛을 세상에 알리다 청어람미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (485,'bangwon@naver.com','2018-05-30','09:16:58','세상을 바꾼','[세상을 바꾼 작은 씨앗 9]책바보 한창기 우리 문화의 뿌리 깊은 나무가 되다 청어람미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (486,'bangwon@naver.com','2018-03-24','10:48:58','내가 꿈꾸는','[내가 꿈꾸는 사람 3. 축구선수]메시, 축구는 키로 하는 게 아니야 탐',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (487,'bangwon@naver.com','2018-05-10','15:50:56','역사속으로 ','[역사속으로 숑숑 10]정조 임금님의 암살을 막아라 - 조선 후기 편 토토북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (488,'bangwon@naver.com','2018-03-04','14:32:03','역사속으로 ','[역사속으로 숑숑 9]조선왕조실록을 사수하라 - 조선 중기 편 토토북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (489,'bangwon@naver.com','2018-03-14','12:50:21','옛날옛날에','(옛날옛날에)산성 따라 굽이굽이 - 산성이 들려주는 설화 속 우리 역사 파란자전거',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (490,'bangwon@naver.com','2018-01-11','17:53:55','가자! 역사','[가자! 역사 속으로 3]대포가 된 홍길동, 전쟁의 역사를 배우다 파란자전거',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (491,'bangwon@naver.com','2018-08-19','09:32:48','나도 조선의 ','나도 조선의 백성이라고! - 조선을 지킨 여덟 천민 이야기 파란자전거',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (492,'bangwon@naver.com','2018-07-11','09:27:48','거꾸로 읽는','[거꾸로 읽는 책 35]저항하라! 세상의 벽을 향해 던진 연설 32 푸른나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (493,'bangwon@naver.com','2018-09-28','11:35:00','배움가득 우','[배움가득 우리 문화역사 7]어린이를 위한 한일 외교사 수업 풀과바람',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (495,'bangwon@naver.com','2018-11-20','15:21:29','어린이를 위한','어린이를 위한 지도로 보는 한국사 1 - 구석기시대부터 후삼국시대까지 풀빛미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (496,'bangwon@naver.com','2018-11-20','17:36:09','어린이를 위한','어린이를 위한 지도로 보는 한국사 2 - 고려시대부터 조선시대 중기까지 풀빛미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (497,'bangwon@naver.com','2018-11-20','16:59:44','어린이를 위한','어린이를 위한 지도로 보는 한국사 3 - 조선시대 후기부터 현대까지 풀빛미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (499,'bangwon@naver.com','2018-09-05','17:52:20','한겨레 인물','[한겨레 인물탐구 9]공병우 - 한글을 사랑한 괴짜 의사 한겨레아이들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (500,'bangwon@naver.com','2018-07-09','11:34:31','왕의 목을 친','왕의 목을 친 남자 - 프랑스 혁명의 두 얼굴, 사형집행인의 고백 한권의책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (501,'bangwon@naver.com','2017-11-26','11:37:45','교실 밖 엉','[교실 밖 엉뚱 별난 역사]교실 밖 엉뚱 별난 한국사 한림출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (503,'bangwon@naver.com','2018-06-24','17:58:56','특종 20세기','특종 20세기 한국사 3 - 해방과 한국전쟁 한솔수북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (504,'bangwon@naver.com','2018-10-18','14:28:08','특종 20세기','특종 20세기 한국사 4 - 독재와 산업화 한솔수북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (505,'bangwon@naver.com','2019-01-19','17:08:54','특종 20세기','특종 20세기 한국사 5 - 민주화와 통일로 한솔수북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (507,'bangwon@naver.com','2018-08-12','10:59:20','세계 역사를 ','세계 역사를 바꾼 말 한마디 - 세상을 움직인 인물들에게 듣는다! 해와나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (508,'bangwon@naver.com','2018-06-19','09:01:01','2등을 기록하','2등을 기록하는 역사책 현암사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (510,'bangwon@naver.com','2018-09-26','10:56:59','귀신도 함께 ','귀신도 함께 먹자, 고수레! - 내 아이에게 읽히고 싶은 도란도란 풍속 동화 휴먼어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (511,'bangwon@naver.com','2018-05-04','13:10:41','대한민국 독도','대한민국 독도 교과서 - 어린이가 처음 만나는 독도 이야기 휴이넘',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (512,'bangwon@naver.com','2018-06-29','16:51:09','이야기로 보는','이야기로 보는 탐험 지도책 - 세계를 바꾼 놀라운 발견 휴이넘',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (513,'bangwon@naver.com','2017-12-28','13:05:52','모나리자도 반','모나리자도 반한 서양미술관 - 르네상스에서 20세기 미술까지 거인',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (515,'bangwon@naver.com','2018-02-08','14:01:08','걸작의 탄생','[걸작의 탄생 2]세상에서 가장 유명한 해바라기 국민서관',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (516,'bangwon@naver.com','2018-02-14','16:30:59','쉽게 따라 ','(쉽게 따라 그리는)명화 그림책 그린북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (517,'bangwon@naver.com','2018-10-03','16:28:50','그림과 친해','[그림과 친해지는 명화 톺아보기 2]역사는 왜 명화 속으로 들어갔을까? 낮은산',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (519,'bangwon@naver.com','2018-02-23','11:27:27','아름답다! ','[아름답다! 우리 옛 그림 1. 화훼영모.사군자화]선비의 향기, 그림으로 만나다 다섯수레',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (520,'bangwon@naver.com','2018-11-19','09:36:42','아름답다! ','[아름답다! 우리 옛 그림 2. 산수화]선비의 생각, 산수로 만나다 다섯수레',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (521,'bangwon@naver.com','2018-11-24','09:01:28','그리스로마 ','[그리스로마 명화신화 5]오디세우스 두리아이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (522,'bangwon@naver.com','2018-12-07','10:54:10','꿈을 주는 ','[꿈을 주는 현대인물선 11]현대미술의 시작 마르셀 뒤샹 리젬',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (524,'bangwon@naver.com','2018-05-06','13:12:47','사계절 지식','[사계절 지식소설 4]수상한 화가들 - 즐거운 서양 미술사 시간 여행 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (525,'bangwon@naver.com','2018-09-12','16:47:23','한눈에 반한','[한눈에 반한 미술관]한눈에 반한 민화 미술관 - 까치 호랑이에서 책거리까지 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (526,'bangwon@naver.com','2018-12-26','15:35:53','명화를 남긴 ','명화를 남긴 최고의 화가들 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (528,'bangwon@naver.com','2018-09-05','15:24:28','상수리 호기','[상수리 호기심 도서관 21]영화 아는 만큼 보여요 - 영화의 역사와 제작 과정, 3D영화의 특성까지 상수리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (529,'bangwon@naver.com','2018-07-14','16:16:22','그룬트 할아버','그룬트 할아버지의 7가지 초상화 새터',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (530,'bangwon@naver.com','2018-06-08','09:51:12','모차르트 오마','모차르트 오마주 - 모차르트의 선율, 시와 그림을 만나다 서해문집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (531,'bangwon@naver.com','2018-05-09','15:47:11','미술 속 시간','미술 속 시간여행 소년한길',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (532,'bangwon@naver.com','2017-06-07','16:37:43','미대 나와서 ','미대 나와서 무얼 할까 1 - 살아 있는 12가지 직업 이야기 안그라픽스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (533,'bangwon@naver.com','2018-02-02','14:31:23','미대 나와서 ','미대 나와서 무얼 할까 2 - 살아 있는 12가지 직업 이야기 안그라픽스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (534,'bangwon@naver.com','2018-07-08','10:02:29','자화상전展','자화상전(展) - 거장들의 자화상으로 미술사를 산책하다 어바웃어북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (535,'bangwon@naver.com','2018-11-08','11:16:53','나도 바흐를 ','나도 바흐를 즐길 수 있을까 - 클래식 음악, 천천히 깊이 듣는 즐거움 이랑',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (536,'bangwon@naver.com','2018-05-04','12:15:52','주니어 음악','[주니어 음악동화 1]백조의 호수 - 차이콥스키가 작곡한 발레 음악 주니어북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (537,'bangwon@naver.com','2018-05-24','15:20:00','주니어 음악','[주니어 음악동화 2]아이다 - 베르디가 작곡한 오페라 음악 주니어북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (538,'bangwon@naver.com','2018-03-14','09:01:09','아무도 못 ','[아무도 못 말리는 책읽기 시리즈 7]베토벤이 들려주는 두근두근 오케스트라 책빛',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (539,'bangwon@naver.com','2018-12-14','12:30:45','그림책이 참','[그림책이 참 좋아 9]뒤죽박죽 미술관 책읽는곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (540,'bangwon@naver.com','2018-03-21','15:52:53','그림이 톡, ','그림이 톡, 생각이 아하! - 사고력을 키우는 미술 감상 토토북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (541,'bangwon@naver.com','2018-03-10','12:09:10','예술톡피카','[예술톡]피카소, 게르니카를 그리다 톡',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (542,'bangwon@naver.com','2018-06-08','13:25:49','구석구석 우','[구석구석 우리문화 4]낯설고도 친근한 우리 쇳대 - 소망과 지혜를 담은 우리 자물쇠  현암사 ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (543,'bangwon@naver.com','2018-01-07','16:38:08','우리 그림이 ','우리 그림이 들려주는 사람 이야기  현암사 ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (544,'bangwon@naver.com','2018-03-09','14:16:52','우리 그림이 ','우리 그림이 들려주는 자연 이야기  현암사 ',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (545,'bangwon@naver.com','2017-12-07','17:40:57','청소년을 위','[청소년을 위한 세상읽기 프로젝트 Why Not? 6] 나를 찾습니다 개마고원',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (546,'bangwon@naver.com','2018-07-14','12:11:22','희망을 만드','[희망을 만드는 법 5]나스린의 비밀학교 고래이야기',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (547,'bangwon@naver.com','2018-08-29','16:59:18','청소년이 꼭','[청소년이 꼭 알아야 할 글로벌리더 성공스토리 4]픽사 - 상상을 현실로 만들다 과학동아북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (548,'bangwon@naver.com','2018-08-10','12:31:24','청소년이 꼭','[청소년이 꼭 알아야 할 글로벌리더 성공스토리 3]위키피디아 - 세상의 모든 지식을 담다 과학동아북스',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (549,'bangwon@naver.com','2019-01-06','09:40:59','청소년 벗','[청소년 벗]외면하지 않을 권리 - 교과서에는 없는 세상을 만나다 교육공동체벗',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (550,'bangwon@naver.com','2018-07-19','14:34:00','세계도시파노','[세계도시파노라마 5]올림픽 국민서관',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (552,'bangwon@naver.com','2017-12-18','16:00:05','통 큰 어린','[통 큰 어린이 인문학 시리즈 3]뭐, 돌멩이가 보물이라고? - 고고학자가 들려주는 어린이 고고학 이야기 그린북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (553,'bangwon@naver.com','2018-06-08','10:23:19','10대 너의 ','10대 너의 배움에 주인이 되어라 글담',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (554,'bangwon@naver.com','2019-01-29','10:07:33','착한 생각으로','착한 생각으로 세상을 바꾼 사람들 글담어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (556,'bangwon@naver.com','2018-10-14','14:37:37','너랑 나랑 ','[너랑 나랑 더불어학교 8]어린이가 어린이를 돕는다 - 세계 어린이상 수상자들이 들려주는 인권 활동 이야기 길벗스쿨',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (557,'bangwon@naver.com','2018-04-08','09:03:43','꿈결 청소년','[꿈결 청소년 교양서 시리즈 꿈의비행 1]거북이는 왜 달리기 경주를 했을까? 꿈결',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (558,'bangwon@naver.com','2018-07-01','13:08:26','꿈결 청소년','[꿈결 청소년 교양서 시리즈 꿈의비행 2]십대를 위한 직업 콘서트 꿈결',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (559,'bangwon@naver.com','2018-03-21','15:55:18','다른 게 나쁜','다른 게 나쁜 건 아니잖아요 - SBS스페셜 아름다운 공존을 위한 다문화 이야기 꿈결',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (560,'bangwon@naver.com','2018-11-07','16:11:24','책, 즐겁게 ','책, 즐겁게 읽는 법 - 어린이에게 들려주는 여덟 가지 책 이야기 꿈꾸는꼬리연',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (562,'bangwon@naver.com','2018-08-01','10:00:15','세더잘11','[세더잘11]사형제도, 과연 필요한가? 내인생의책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (563,'bangwon@naver.com','2018-03-18','11:58:38','세더잘8미','[세더잘8]미디어의 힘, 견제해야 할까? 내인생의책',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (564,'bangwon@naver.com','2018-02-23','12:00:22','너머학교 열','[너머학교 열린교실 7]논다는 것 - 오늘 놀아야 내일이 열린다! 너머학교',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (566,'bangwon@naver.com','2017-12-03','15:35:39','생각이 자라','[생각이 자라는 말과 글 1]익은 말? 익은 말! 녹색지팡이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (567,'bangwon@naver.com','2018-03-08','11:30:52','너한테도 생길','너한테도 생길 수 있는 일 - 학교폭력에 용기 있게 맞서기 다른',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (568,'bangwon@naver.com','2018-07-22','15:01:34','I need','[I need 시리즈 8](얘들아, 학교 가자!)별별 학교 지구촌 친구들 다림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (569,'bangwon@naver.com','2017-11-30','10:39:30','십대, 고수답','십대, 고수답게 싸워라 - 내 삶에 태클 거는 분노 해결법 뜨인돌',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (571,'bangwon@naver.com','2019-01-16','16:13:47','신나게 찍고','(신나게 찍고 재밌게 쓰자!)사진 일기 쓰기 뜨인돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (572,'bangwon@naver.com','2018-05-20','16:41:34','속담왕 시리','[속담왕 시리즈 4]속담골 받아쓰기 대회 - 속담골 삼총사 드디어 선생님이 되다! 뜨인돌어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (574,'bangwon@naver.com','2018-11-18','17:30:10','미래생각발전','[미래생각발전소 7]믿음의 불편한 진실 종교 미래아이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (575,'bangwon@naver.com','2018-08-14','15:18:01','청소년을 위','[청소년을 위한 LIVE 경제교실 2]경제기사 X-파일 미래의창',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (576,'bangwon@naver.com','2018-11-07','15:57:38','청소년을 위','[청소년을 위한 LIVE 경제교실 3]대한민국 경제사 미래의창',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (578,'bangwon@naver.com','2018-04-30','11:48:41','평화 발자국','[평화 발자국 10]먼지 없는 방 - 삼성반도체 공장의 비밀 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (579,'bangwon@naver.com','2018-04-30','16:07:21','평화 발자국','[평화 발자국 9]사람 냄새 - 삼성에 없는 단 한 가지 보리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (580,'bangwon@naver.com','2018-02-14','12:03:15','전통문화 그','[전통문화 그림책 솔거나라]엄마꼭지연 보림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (582,'bangwon@naver.com','2018-12-29','09:54:57','부키 전문직','[부키 전문직 리포트 15]사서가 말하는 사서 - 21명의 사서들이 솔직하게 털어놓은 사서의 세계 부키',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (583,'bangwon@naver.com','2018-12-05','12:15:16','어린이 성경','어린이 성경 북극곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (585,'bangwon@naver.com','2018-08-29','12:51:04','14살 마음의','14살 마음의 지도 - 부모님과 함께 하는 청소년 힐링캠프 북멘토',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (586,'bangwon@naver.com','2018-05-09','12:15:36','통하면 아프지','통하면 아프지 않다 - 우리 시대 소통 멘토에게 듣는 고군분투 청춘 고백  북스코프',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (587,'bangwon@naver.com','2018-04-19','17:26:18','십대, 책에서','십대, 책에서 길을 묻다 - 책에서 지혜와 삶, 꿈의 멘토를 만나다 북씽크',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (588,'bangwon@naver.com','2018-12-23','16:10:30','주니어대학 ','[주니어대학 3. 신문방송학]스마트폰이 세상을 바꾼다고? 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (589,'bangwon@naver.com','2018-08-26','13:03:21','사회는 쉽다 ','사회는 쉽다 1 - 왕, 총리, 대통령 중 누가 가장 높을까? : 우리나라와 세계의 민주정치 비룡소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (590,'bangwon@naver.com','2018-10-24','13:20:57','사계절 지식','[사계절 지식소설 8]뭘 해도 괜찮아 -꿈을 찾는 진로의 심리학 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (591,'bangwon@naver.com','2018-07-19','12:59:01','일과사람 1','[일과사람 10 한의사]맥을 짚어 볼까요?  사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (592,'bangwon@naver.com','2018-05-11','17:24:20','일과사람 8','[일과사람 8 초등학교 선생님]얘들아, 학교 가자! 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (593,'bangwon@naver.com','2018-10-21','15:58:07','비정규 씨, ','비정규 씨, 출근하세요? 사계절출판사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (594,'bangwon@naver.com','2018-04-11','09:09:34','나는 알아요','[나는 알아요 6 놀라운 문화]박물관 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (595,'bangwon@naver.com','2018-05-24','17:58:48','나는 알아요','[나는 알아요 7 신나는 생활]집짓기 사파리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (596,'bangwon@naver.com','2018-04-06','17:23:19','산하 지식의','[산하 지식의 숲 10]장애, 너는 누구니? 산하',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (597,'bangwon@naver.com','2018-06-29','11:22:55','산하 지식의','[산하 지식의 숲 11]맛있는 짜장면의 역사 산하',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (598,'bangwon@naver.com','2018-12-24','10:22:09','산하 지식의','[산하 지식의 숲 13]노벨 평화상 산하',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (599,'bangwon@naver.com','2018-11-25','12:46:51','나는 대학에 ','나는 대학에 가지 않았다 - 삶이 길이 되고 꿈이 땀이 된 고졸 청년들의 이유 있는 선택 살림Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (600,'bangwon@naver.com','2017-12-07','17:05:24','말이 세상을 ','말이 세상을 아프게 한다 - 차별과 편견을 허무는 평등한 언어사용 설명서 살림Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (601,'chunhyang@naver.com','2018-03-07','13:52:47','사회적 감수성','사회적 감수성을 키우는 시민 교과서 - 사회 선생님이 들려주는 세금이야기 살림Friends',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (602,'chunhyang@naver.com','2018-03-29','16:08:40','상상의집 지','[상상의집 지식마당 5]세상을 바꾼 착한 부자들 - 함께 사는 세상을 위한 나눔 상상의집',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (603,'chunhyang@naver.com','2018-12-07','15:56:51','상수리 호기','[상수리 호기심 도서관 22]나도 저작권이 있어요! - 김기태 선생님의 교과서 속 저작권 이야기 상수리나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (604,'chunhyang@naver.com','2018-08-01','10:04:50','괜찮아, 이제','괜찮아, 이제 걱정하지마 - 엄마가 쓴 어린이를 위한 심리 치료 편지 생각을담는어린이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (605,'chunhyang@naver.com','2019-01-11','13:15:38','너는 커서 뭐','너는 커서 뭐가 될래? - 10년 후 세상을 바꿀 아이들의 꿈 사전 소란',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (606,'chunhyang@naver.com','2018-12-02','09:57:36','스콜라 꼬마','[스콜라 꼬마지식인 1]이웃집에는 어떤 가족이 살까? 스콜라',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (607,'chunhyang@naver.com','2018-10-21','10:22:40','십대들을 위','[십대들을 위한 인성교과서]진정한 부 아름다운사람들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (608,'chunhyang@naver.com','2018-08-16','09:10:28','십대들을 위','[십대들을 위한 인성교과서]태도 아름다운사람들',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (609,'chunhyang@naver.com','2018-02-23','16:54:53','나의 고전 ','[나의 고전 읽기 19]살기 좋은 세상을 향한 꿈 - 맹자 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (610,'chunhyang@naver.com','2018-08-19','13:12:08','나의 고전 ','[나의 고전 읽기 20]옛사람들의 세상 읽기 - 그리스 신화 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (611,'chunhyang@naver.com','2018-04-19','11:39:16','아이세움 배','[아이세움 배움터 32]주강현의 제주도 이야기 - 어린이 제주 인문서 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (612,'chunhyang@naver.com','2018-09-24','10:08:48','우리알고 세','[우리알고 세계보고 4]사람과 짐을 실어나르는 탈것 아이세움',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (614,'chunhyang@naver.com','2018-08-03','11:07:04','열여덟을 위한','열여덟을 위한 철학캠프 알렙',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (615,'chunhyang@naver.com','2018-07-07','12:44:44','그대들, 어떻','그대들, 어떻게 살 것인가 양철북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (616,'chunhyang@naver.com','2018-05-24','12:00:03','어린이 인문','[어린이 인문 시리즈 6]좋은 정치란 어떤 것일까요? 어린이나무생각',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (618,'chunhyang@naver.com','2018-01-13','12:59:50','아빠, 경영학','아빠, 경영학이 뭐예요? - 아빠가 들려주는 10대를 위한 경영 이야기 예문당',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (619,'chunhyang@naver.com','2018-09-12','11:03:44','우리청소년교','[우리청소년교양 나이태 6]세상을 바꾼 아름다운 용기 - 아이들의 손으로 살 만한 세상 만들기 우리교육',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (620,'chunhyang@naver.com','2018-09-15','12:44:09','중학생토론학교','중학생토론학교 교육과 청소년 - 학교와 배움에 대한 일곱 가지 물음 우리학교',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (622,'chunhyang@naver.com','2018-07-24','13:21:37','행복한 관찰','[행복한 관찰 그림책 1]어슬렁어슬렁 동네 관찰기 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (623,'chunhyang@naver.com','2018-07-24','17:32:30','행복한 관찰','[행복한 관찰 그림책 2]나의 엉뚱한 머리카락 연구 웅진주니어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (624,'chunhyang@naver.com','2018-07-29','12:04:32','Mom - 전','Mom - 전 세계 엄마들의 사생활 윌북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (626,'chunhyang@naver.com','2018-01-18','10:18:06','정여울의 문학','정여울의 문학 멘토링 - 문학의 비밀을 푸는 18개의 놀라운 열쇠 이순',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (627,'chunhyang@naver.com','2018-10-24','14:51:07','국어선생님, ','국어선생님, 잠든 우리말을 깨우다 - 국어사전에서 살려낸 우리말 100 작은숲',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (628,'chunhyang@naver.com','2018-11-29','10:09:04','초등학생이 ','[초등학생이 꼭 만나야 할 민주사회 이야기 8]다양하다는 것 - 우리 엄마의 고향은 필리핀 장수하늘소',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (630,'chunhyang@naver.com','2018-07-13','17:05:38','인성의 기초','[인성의 기초를 잡아주는 처음 인문학동화 3]소크라테스 아저씨네 축구단 주니어김영사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (631,'chunhyang@naver.com','2018-03-28','12:02:59','한눈에 펼쳐','[한눈에 펼쳐 보는 전통문화 8]자연의 빛깔을 담은 우리 옷과 장신구 주니어RHK',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (633,'chunhyang@naver.com','2018-06-08','10:03:47','우리 함께 웃','우리 함께 웃어요! - 아름다운 세상을 위한 행복 나누기 찰리북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (634,'chunhyang@naver.com','2018-02-02','10:35:51','사회와 친해','[사회와 친해지는 책 - 문화]우리 자연유산 이야기 - 소중한 우리나라 천연기념물, 문화 편 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (636,'chunhyang@naver.com','2018-02-28','10:02:36','뚝딱뚝딱 인','[뚝딱뚝딱 인권 짓기 2]우리가 바꿀 수 있어! 책읽는곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (637,'chunhyang@naver.com','2017-12-03','09:24:46','우리문화그림','[우리문화그림책 온고지신 13]김치 특공대 책읽는곰',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (638,'chunhyang@naver.com','2018-07-21','13:01:52','10대를 위','[10대를 위한 책도둑 시리즈 7]10대와 통하는 미디어 - 손석춘 선생님이 들려주는 나를 찾는 미디어 여행 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (640,'chunhyang@naver.com','2018-04-02','13:22:22','길담서원 청','[길담서원 청소년인문학교실-돈]나에게 돈이란 무엇일까? 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (641,'chunhyang@naver.com','2018-12-19','17:10:18','길담서원 청','[길담서원 청소년인문학교실-집]나는 어떤 집에 살아야 행복할까? 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (643,'chunhyang@naver.com','2018-03-24','14:07:29','내일을 부탁해','내일을 부탁해 - 스펙도 빽도 없는 청춘을 위한 일 찾기 프로젝트 청어람미디어',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (644,'chunhyang@naver.com','2018-11-03','14:16:31','가로세로그림','[가로세로그림책 4]시장에 가면 만날 수 있어요 초록개구리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (645,'chunhyang@naver.com','2018-12-24','09:01:15','가로세로그림','[가로세로그림책 5]아지의 머나먼 여행 초록개구리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (647,'chunhyang@naver.com','2018-05-14','10:35:28','유엔아동권리','(유엔아동권리협약으로 알아보는)세계 어린이를 위한 소중한 약속 키다리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (648,'chunhyang@naver.com','2018-08-22','16:12:22','랩으로 인문학','랩으로 인문학 하기 탐',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (649,'chunhyang@naver.com','2018-03-30','12:03:19','춤추는 평화 ','춤추는 평화  탐',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (625,'chunhyang@naver.com','2018-03-14','15:24:48','이순 청소년','[이순 청소년 문고 2]공자와 제자들의 유쾌한 교실 이순',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (629,'chunhyang@naver.com','2018-04-21','13:02:03','다 같이 돌','(다 같이 돌자)직업 한바퀴 주니어김영사',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (632,'chunhyang@naver.com','2018-06-08','09:42:46','한 권으로 ','(한 권으로 보는)그림 스포츠 백과 진선아이',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (635,'chunhyang@naver.com','2018-07-08','15:00:22','사회와 친해','[사회와 친해지는 책 - 자연]아파트 옆 작은 논 창비',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (639,'chunhyang@naver.com','2018-12-23','11:42:39','10대를 위','[10대를 위한 책도둑 시리즈 8]10대와 통하는 성과 사랑 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (642,'chunhyang@naver.com','2018-10-18','12:10:08','사자성어 한국','사자성어 한국말로 번역하기-맑고 쉽게 살려 쓰는 한국말 철수와영희',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (646,'chunhyang@naver.com','2018-10-11','16:05:55','더불어 사는','[더불어 사는 지구 41](어린이 모금가들)좌충우돌 나눔 도전기 초록개구리',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (675,'chunhyang@naver.com','2018-09-13','15:08:28','열린 마음 ','[열린 마음 다문화 10](단야바드 인도) 가네샤 신의 선물 한솔수북',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (679,'chunhyang@naver.com','2018-04-03','14:38:22','공부는 왜하나','공부는 왜하나? 해그림',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (681,'chunhyang@naver.com','2018-03-19','15:59:12','피어라 우리','[피어라 우리 문화 3]한식, 우주를 담은 밥상 해와나무',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (685,'chunhyang@naver.com','2018-05-02','11:00:02','철학에게 미래','철학에게 미래를 묻다 - 미래를 읽는 22가지 생활 속 화두 휴머니스트',null,null);
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (9632946836,'gildong@naver.com','2019-04-17','15:50:18','오늘의 독후감(신데렐라)','신데렐라의 동화이야기',0,'6e9c2e4d-3c56-404e-b9e8-e21818a49928daum_net_20120201_105455_syh1896.jpg');
Insert into MYBTS.TBL_BOARD (ID,B_USERID,B_DATE,B_TIME,B_SUBJECT,B_CONTENT,B_HIT,B_IMAGE) values (3609639468,'bangwon@naver.com','2019-04-17','16:22:09','조선왕조실록','역대 조선의 왕들의 이야기',2,'7e1fd943-a71b-42d5-aecc-b00d847b70b9조선.jpg');
REM INSERTING into MYBTS.TBL_BOOK
SET DEFINE OFF;
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (8,'juhoon12','24875694','열혈자바인가요?','2019-03-15',3.5,'자바를 잘하자');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (2,'gildong','9788975607547','생각중독123','2019-03-14',3.5,'중독중독');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (3,'gildong','9788975607547','생각중독11111111','2019-03-14',5,'중독중독');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (4,'bogo','9788975607547','생각중독2','2019-03-14',4.5,'중독중독');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (5,'gildong','9788975607547','생각중독2','2019-03-14',4.5,'중독중독');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (6,'bogo','9788975607547','생각중독3','2019-03-14',4.5,'중독중독');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (7,'gildong','9788975607547','생각중독3','2019-03-14',4.5,'중독중독');
Insert into MYBTS.TBL_BOOK (B_ID,B_USERID,B_ISBN,B_TITLE,B_DATE,B_STAR,B_TEXT) values (21,'bogo','2487569422','생각하자생각','2019-03-18',3.5,'생각');
REM INSERTING into MYBTS.TBL_BOOKS
SET DEFINE OFF;
Insert into MYBTS.TBL_BOOKS (ID,TB_NAME,TB_COMP,TB_AUTH,TB_PRICE) values (1,'열혈자바','오렌지미디어','윤성우',30000);
Insert into MYBTS.TBL_BOOKS (ID,TB_NAME,TB_COMP,TB_AUTH,TB_PRICE) values (2,'모바일 웹/앱','생능출판','박성진',20000);
REM INSERTING into MYBTS.TBL_DEPT
SET DEFINE OFF;
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0001','신창냉동설비산업','황규정');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0002','한성냉열인슈로(주)','김광영');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0003','신세계종합주방','오동준');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0004','가나다냉동','김봉길');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0005','두리F&E','이준수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0006','소리종합주방','홍성예');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0007','(구)워터365','정경모');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0008','원명보일러총판(의정부)','서승권');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0009','롯데가스보일러(수성롯데)','호세진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0010','안산냉기','배연산');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0011','롯데가스보일러(아산롯데)','차응철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0012','롯데엔지니어링(신광주남부)','허영만');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0013','롯데가스보일러(대전서구롯데)','김준태');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0014','두영산업','김웅겸');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0015','세림상사(중랑롯데)','장선구');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0016','롯데대성가스보일러(신제천롯데)','김현철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0017','진흥자판기','김복자');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0018','일화종합설비(서익산롯데)','이정범');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0019','영진에너지(광주동구롯데)','김선석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0020','L&R테크','조남훈');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0021','롯데SK가스보일러공주지점','송재은');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0022','(주)미래씨앤에이치','김영현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0023','롯데강북서비스','박성철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0024','LG상사(정읍냉기)','차재호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0025','골드자판기','이철균');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0026','(주)티브이푸드','후지타 토시하루');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0027','롯데냉동','문현철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0028','강서롯데','강명원');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0029','경인유통','임희재');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0030','롯데엔지니어링(양천)','백성갑');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0031','목포자판기','박병섭');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0032','금성경기서비스','안영철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0033','진우ENG','이진우');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0034','온달가스텍(경남롯데)','최규철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0035','(주)삼원자판기','박철현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0036','천안북부롯데','배정호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0037','광진냉동','이학수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0038','엘씨밴딩','최선영');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0039','더싼유통','전윤길');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0040','대신보일러(서구롯데)','하익진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0041','대하롯데가스보일러(광주북구롯데)','황정자');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0042','제일상사(북익산롯데)','최세연');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0043','벤도피아','김태우');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0044','조성엔지니어링(대전중구롯데)','정회순');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0045','화명롯데가스보일러(화명롯데)','김영화');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0046','LG자판기','김용묵');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0047','신진엔지니어링(용인롯데)','유행수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0048','제일설비(예산롯데)','김인환');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0049','제주판매(주)','이상형');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0050','정민냉열','오세철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0051','제일보일러(울산울주롯데)','곽문진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0052','안동서비스','장형구');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0053','엘지냉동','김송실');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0054','복산기기(울산중구롯데)','박차환');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0055','청인(동구롯데)','한규식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0056','거명ENG롯데보일러','서동근');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0057','롯데냉동설비(동래)','김상옥');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0058','동부자판기','윤복길');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0059','진우전자','이광재');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0060','남구 롯데보일러','장윤정');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0061','롯데가스보일러동부대리점(동부롯데)','공미희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0062','해태자판기전남지점','김진용');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0063','조은에너지(광진롯데)','정석순');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0064','일호서비스','김일호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0065','명성에이치앤피','신성숙');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0066','씨.엠.브이시스템','박달희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0067','태양전기판넬','성경희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0068','에이스주방냉동백화점','정순태');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0069','남포항롯데','김원종');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0070','롯데가스보일러경산대리점','강용진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0071','미래자판기랜드','김종원');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0072','서대문롯데','임병수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0073','경보플랜트설비','김익중');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0074','롯데보일러(성남수정)','김옥희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0075','롯데사상대리점(사상롯데)','박봉희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0076','월드냉동','신경식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0077','롯데가스보일러(달서롯데)','권영대');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0078','북인천롯데','김미순');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0079','(주)한일엔지니어링','박종필');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0080','(주)미래산업','조석현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0081','롯데가스보일러마산내서롯데(서마산롯데)','이종길');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0082','삼성자판기서비스지정점(군산자판)','탁목곤');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0083','경원자판기','백구현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0084','북부롯데가스보일러(광주서북구롯데)','박기영');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0085','롯데벤슨(춘천)','박재현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0086','롯데냉열기기(서부산냉기)','사공경훈');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0087','문진냉기','나문진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0088','롯데가스보일러서비스센타J(김제롯데)','박형준');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0089','부성벤더','신기식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0090','롯데가스텍(김해롯데)','김용권');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0091','롯데가스보일러(천안남부롯데)','이강섭');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0092','(주)성호','전용식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0093','서원상사','김종석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0094','제일종합상사','이경수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0095','롯데냉동공조(포항)','이정식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0096','삼성자판','박희대');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0097','롯데가스기기(구로)','이기영');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0098','울산남구롯데','이복남');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0099','서비스뱅크','유택근');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0100','싱싱냉동','박강희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0101','태양자판기서비스','허성원');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0102','롯데보일러원주지점(원주남부)','원동빈');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0103','구미롯데','조준형');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0104','정우유통','이정우');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0105','신부산롯데(서사하롯데)','정재곤');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0106','대성자판기','이기열');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0107','텐플러스 시스템','임순희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0108','성보공업사','윤정모');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0109','광역롯데','전미화');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0110','속초롯데','박용광');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0111','삼인ENG(북전주롯데)','김성주');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0112','관악롯데냉열기기(관악)','한승환');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0113','우리냉동','유익');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0114','보일러상사(정읍롯데)','여현식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0115','경북유통','주해룡');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0116','동양주방인테리어','김정곤');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0117','한솔종합상사','이홍수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0118','대복엔지니어링(서안양롯데)','배한근');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0119','미래냉동','오세영');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0120','(주)동양엔지니어링(광주남구롯데)','김기국');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0121','(주)성안이엔지(남구롯데)','강성국');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0122','유성수도상사(동래롯데)','김효진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0123','창원롯데','박준수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0124','대한에너지(거창롯데)','윤석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0125','씽씽냉동','김성표');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0126','(주)한에너지시스템','장사윤');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0127','세원냉동설비수리','정명호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0128','충주대리점','박정용');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0129','계현사','김민수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0130','덕인유통','서동국');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0131','삼성자판서비스','이강춘');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0132','롯데자판기제일상사','김병진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0133','명일엔지니어링(서초강남)','서동일');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0134','롯데가스보일러서부대리점(서부롯데)','김명숙');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0135','계양롯데','강동환');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0136','롯데가스보일러(김천롯데)','문성식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0137','전북롯데냉기(전북냉기)','공태식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0138','삼영냉동산업','이혜숙');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0139','원에이티엠(주)','서현규');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0140','로얄냉동','권영숙');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0141','협신상사','백경목');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0142','삼학ENG(목포롯데)','서병연');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0143','강릉롯데(롯데가스보일러강릉)','이용선');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0144','플러스상사(광주북부)','명종학');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0145','롯데자판기','김옥연');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0146','강북서비스','탁성철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0147','광성에너지(부천롯데)','위용환');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0148','모우종합설비(완도롯데)','윤성남');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0149','일도벤딩','안영덕');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0150','성북보일러(성북롯데)','심공보');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0151','대성종합설비(당진롯데)','박희선');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0152','신일산냉기(신영자동판매기)','황선태');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0153','구리롯데','박창현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0154','롯데가스보일러(안성롯데)','김일태');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0155','태성에너지','이태근');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0156','전북기공','정원조');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0157','롯데가스기기동구지정점(대전동구롯데)','박옥규');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0158','롯데유통','천용성');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0159','남원냉동주방','방명호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0160','리사이클플러스','홍성만');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0161','태양열기(김포롯데)','김미숙');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0162','모악ENG(남전주롯데)','서인호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0163','구미종합아이스크림','조옥래');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0164','(주)두원아이스뱅크','장해은');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0165','원엔지니어링(일산롯데)','이명진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0166','성운이엔지','양회석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0167','둔산롯데','박광석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0168','그린에너텍','박용서');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0169','도연에너지(광주광산롯데)','박진우');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0170','광양롯데가스보일러(광양롯데)','오균석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0171','롯데가스보일러첨단점(광주첨단롯데)','진영호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0172','(주)두손템스','손응호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0173','가인상사','정수임');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0174','코리아냉.난방(군산남부롯데)','이종현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0175','청주롯데보일러','주장섭');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0176','롯데가스보일러 신북구점','김성열');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0177','신순천롯데(롯데가스보일러)','김미희');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0178','대한종합건재','안향자');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0179','하린냉동','김종율');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0180','소리냉기','강성훈');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0181','모든ENG(서전주롯데)','김현준');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0182','롯데가스보일러마산(동마산)','박재문');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0183','하나벤딩(주)','박진구');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0184','중부서비스','민원기');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0185','신영사','이주경');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0186','여수중앙자판','송춘식');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0187','기현쇼케이스','이재창');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0188','현대상사','이채욱');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0189','동구미롯데','김한수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0190','경북냉열','박준영');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0191','(주)거창ENG','최운학');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0192','원주삼성벤딩','최병규');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0193','광진엔지니어링','신찬철');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0194','COOL 냉난방시스템','권상배');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0195','우리냉동','김선옥');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0196','정일상사(남양주롯데)','김상균');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0197','영인냉열상사(춘천)','정인영');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0198','자판기월드','황성욱');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0199','명성냉열기상사','김정호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0200','동일가스상사(제주롯데)','문유진');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0201','새부산롯데(금정롯데)','박민갑');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0202','롯데가스보일러(문막)','최상수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0203','롯데엔지니어링(금천)','정옥균');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0204','아이에스','김인수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0205','거제냉동','홍정배');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0206','센텀냉동','이광수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0207','롯데가스보일러(서산롯데)','이경순');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0208','우리상사','민성필');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0209','일조유통','이진현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0210','제이엘엔지니어링','이종배');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0211','대진상사','정진원');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0212','협승냉열','김미용');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0213','롯데보일러(거제롯데(신규)','김동언');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0214','(주)대정이앤씨','이수정');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0215','신갈롯데','권영기');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0216','명대상사(보령롯데)','이창수');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0217','진주롯데기공냉동서비스','방성원');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0218','썬웨이일등보일러(신남원롯데)','정경호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0219','벤딩테크(동광주자판)','이이형');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0220','롯데가스보일러설비(서수원롯데)','모인환');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0221','우진냉동','심재용');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0222','자판기서비스','권오석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0223','가스보일러A/S센타(안산롯데)','지기훈');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0224','제일기업(연제롯데)','정광휘');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0225','명도상사','유기현');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0226','자판판매(주)','이정숙');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0227','건영기업(신노원롯데)','서동권');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0228','우진정밀(광명롯데)','이호문');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0229','유성ENG(북전주롯데)','홍성경');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0230','부경롯데(남구롯데)','정진호');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0231','부산특판','박종규');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0232','서비스메카','김연기');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0233','광주북서구롯데(광주북서구롯데)','서진석');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0234','제주냉동','강정일');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0235','부평롯데','허빈');
Insert into MYBTS.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D0236','서경냉열','김성근');
REM INSERTING into MYBTS.TBL_EMAIL
SET DEFINE OFF;
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (29,'juhoon12@nate.com','gildong@naver.com','2019-03-29','15:34:04','test1','testst','84ab2ede-9e78-4860-a38d-2f1cfa955fe03.jpg','c629dde6-c89e-4146-aad7-cbbb2f2dfe713.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (30,'juhoon12@nate.com','gildong@naver.com','2019-03-29','15:33:05','송지효와 새','새새새새새새새','f7c2327d-da93-4eb0-bb21-14f02ae9dd573.jpg','7d3d5141-0b8a-4a90-8a19-9575a3b0ba322013-02-14_145922.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (23,'gildong@naver.com','juhoon12@nate.com','2019-03-29','15:39:51','메일 폭탄','fseagaesgdgaeaesaf','8151f814-d821-4e04-ad6f-379184e9510d0000060149_001_20181005230653887.JPG','859f5e80-4826-4875-9472-086ae6b8841820121112_1352691529_29313000_1_59_20121112124505.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (31,'gildong@naver.com','gildong@naver.com','2019-03-29','15:42:20','아무것도 없음','123','51967d0b-b528-435f-96fa-9fa6ec94bbfd20121112_1352691529_29313000_1_59_20121112124505.jpg','c8f37fb9-e2cb-49ae-be30-fd09d4b0fc1720121112_1352691529_29313000_1_59_20121112124505.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (32,'huny6100@naver.com','huny6100@naver.com','2019-03-29','16:34:30','테스트중12','테스트',null,null);
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (28,'gildong@naver.com','gildong@naver.com','2019-03-29','15:41:16','메일 폭탄폭탄','메일폭탄','08fa0d0f-d202-4de2-aaa5-57ddba2308072013-02-14_145922.jpg','6d22c947-c310-4662-9597-3fb4945a087a3.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (26,'juhoon12@nate.com','juhoon12@nate.com','2019-03-29','15:28:45','아이유아이유','dageadfsageadage','9b4b8fd8-9f9e-4e53-b5b9-697b4c624ebf2642_L_1325473161.jpg','819baf7e-4425-4d95-8098-779bb53bad6f0000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (27,'juhoon12@nate.com','juhoon12@nate.com','2019-03-29','11:27:03','메일이다 메일',null,'edbfd707-291a-4b4b-bf29-01c6342253e42642_L_1325473161.jpg','5b2e29df-c59a-4578-99ed-2c2000dbacda0000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (21,'juhoon12@nate.com','gildong@naver.com','2019-03-29','13:23:38','test','testtest','650bb99f-2933-4524-9398-9d2e3f63babc2642_L_1325473161.jpg','c1ef64b9-4bd6-4e1b-b1cb-b4d871328f760000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (42,'huny6100@naver.com','hunysarang12@naver.com','2019-04-01','09:33:52','test','test','1210424b-16a3-4983-8125-50c7f4be40fc2642_L_1325473161.jpg','0c1cfc24-5a6b-4f6d-b54c-de8b0998968e0000060149_001_20181005230653887.JPG');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (43,'huny6100@naver.com','hunysarang12@naver.com','2019-04-01','09:34:14','송지효','송지효',null,'0e7a650d-1ab9-4796-a609-b359ec8dae383.jpg');
Insert into MYBTS.TBL_EMAIL (ID,FROM_EMAIL,TO_EMAIL,S_DATE,S_TIME,S_SUBJECT,S_CONTENT,S_FILE1,S_FILE2) values (41,'huny6100@naver.com','huny6100@naver.com','2019-04-01','09:16:13','오늘은 월요일','월요일입니다',null,null);
REM INSERTING into MYBTS.TBL_EMAIL_MEMBER
SET DEFINE OFF;
Insert into MYBTS.TBL_EMAIL_MEMBER (M_ID,M_USERID,M_PASSWORD,M_MAILADDRESS,M_USERNAME,M_ADDR,M_TEL) values (1,'juhoon12','$2a$04$/ydvNQ1krJG4Pck5XBobMeOaPBl.oAJyZt8BwATW0Y3ib7R1sEex6','juhoon12@nate.com','주훈','전라북도 정읍시','010-6775-6100');
Insert into MYBTS.TBL_EMAIL_MEMBER (M_ID,M_USERID,M_PASSWORD,M_MAILADDRESS,M_USERNAME,M_ADDR,M_TEL) values (2,'gildong','$2a$04$hRrBAknqYvnfLKXudiat8OcsGBohH01mS15WmLmRV.x4ORrkc7B42','gildong@naver.com','홍길동','전라남도 장성군','061-658-7896');
Insert into MYBTS.TBL_EMAIL_MEMBER (M_ID,M_USERID,M_PASSWORD,M_MAILADDRESS,M_USERNAME,M_ADDR,M_TEL) values (22,'huny6100','$2a$04$nMTEXJ8adr8rxAS257X8xO2MKpew2ZN1eradz.o0JoZMtQrhZjaHm','huny6100@naver.com','후니','전라북도 정읍시','010-6775-6100');
REM INSERTING into MYBTS.TBL_FILES
SET DEFINE OFF;
Insert into MYBTS.TBL_FILES (ID,PARENT_ID,FILE_NAME,SAVE_FILE_NAME) values (29,42,'0000147617_001_20181031095013551.jpg','374a7b61-1d2a-4f22-837e-9f8a399b8fc80000147617_001_20181031095013551.jpg');
Insert into MYBTS.TBL_FILES (ID,PARENT_ID,FILE_NAME,SAVE_FILE_NAME) values (30,43,'0000147617_001_20181031095013551.jpg','96d5abc4-c9bc-4f60-ad09-4989fa7b32340000147617_001_20181031095013551.jpg');
REM INSERTING into MYBTS.TBL_HOBBY
SET DEFINE OFF;
REM INSERTING into MYBTS.TBL_MEMBER
SET DEFINE OFF;
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('juhoon12@nate.com','$2a$10$fBz8x/WabUMmXtqNEEKxZuAjqDWHp78/EW2spZ2IDrTci8P6kEV7K','주훈','67756100',null,'전북 정읍시',null,null);
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('chunhyang@naver.com','$2a$10$IDthKZxxFTQemiiM7rfd3eCGYN7HOAb.NroVePF8FUGsihH6G0B76','성춘향','4579658',null,'전북 남원시',null,null);
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('bangwon@naver.com','$2a$10$cvm7b7GkEhz55W0JM9nK5.PaEz2O4PQAlO2Jkiva51Bfa00rUjxJG','이방원','0635678945',null,'전북 전주시',null,null);
Insert into MYBTS.TBL_MEMBER (M_USERID,M_PASSWORD,M_NAME,M_TEL,M_CITY,M_ADDR,M_PHOTO,M_PHOTO_PATH) values ('gildong@naver.com','$2a$10$/MuRsRzjro3EL5RdiB3f5.JklX5wMxI7v/b6cpWV8truL.dMtnUp2','홍길동','123456987',null,'전남 장성군',null,null);
REM INSERTING into MYBTS.TBL_MEMO
SET DEFINE OFF;
Insert into MYBTS.TBL_MEMO (ID,M_AUTH,M_DATE,M_SUBJECT,M_TEXT) values (42,'gildong','2019-03-13','강이니','강이니');
Insert into MYBTS.TBL_MEMO (ID,M_AUTH,M_DATE,M_SUBJECT,M_TEXT) values (43,'gildong','2019-03-13','강이니','강이니');
REM INSERTING into MYBTS.TBL_MENU
SET DEFINE OFF;
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0001     ',null,'홈','/');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0002     ',null,'게시판','board');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0003     ',null,'관리자','admin');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0004     ','D0003     ','시스템보기','system');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0005     ','D0003     ','회원보기','member');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0006     ','D0003     ','메뉴생성','menu');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0007     ',null,'메모장','#');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0008     ','D0007     ','메모장2','memo1');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0009     ','D0007     ','메모장3','memo2');
Insert into MYBTS.TBL_MENU (MENU_ID,MENU_P_ID,MENU_TITLE,MENU_HREF) values ('D0010     ','D0007     ','메모장4','memo3');
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
Insert into MYBTS.TBL_STUDENT (ST_NUM,ST_NAME,ST_GRADE,ST_TEL) values ('00001','홍길동','1 ','010-5789-5413');
Insert into MYBTS.TBL_STUDENT (ST_NUM,ST_NAME,ST_GRADE,ST_TEL) values ('00005','이순신','3 ','010-5678-9862');
Insert into MYBTS.TBL_STUDENT (ST_NUM,ST_NAME,ST_GRADE,ST_TEL) values ('00004','강감찬','2 ','010-6514-2478');
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
