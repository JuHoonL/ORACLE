--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-25-2019   
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
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (42,'2019-01-03','이성계','오늘은','리얼 피곤하다... 잠온다');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (41,'2019-01-03','이방원','오늘은','리얼 피곤하다 ...잠온다');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (43,'2019-01-03','홍익점','밀수루트','목화를 밀수하자 추우니깐');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (1,'2018-12-28','홍길동','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (2,'2018-12-28','성춘향','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (3,'2018-12-28','장보고','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (4,'2018-12-28','이순신','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (5,'2018-12-28','이몽룡','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (6,'2018-12-28','성춘향','게시판 시작','오늘은 자바를 이용해서 게시판을 만든다.');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (21,'2019-01-02','홍길동','기해년 새해','새해 복 많이 받으세요');
Insert into BBSUSER.TBL_BBS_MAIN (B_ID,B_DATE,B_AUTH,B_SUBJECT,B_TEXT) values (22,'2019-01-02','장보고','기해년 새해','새해 복 많이 받으세요');
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
