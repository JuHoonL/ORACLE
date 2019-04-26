--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-25-2019   
--------------------------------------------------------
DROP TABLE "MYMEM"."TBL_DEPT" cascade constraints;
DROP TABLE "MYMEM"."TBL_IOLIST" cascade constraints;
DROP TABLE "MYMEM"."TBL_MYTABLE" cascade constraints;
DROP TABLE "MYMEM"."TBL_PRIMARY" cascade constraints;
DROP TABLE "MYMEM"."TBL_PRODUCT" cascade constraints;
DROP TABLE "MYMEM"."TBL_SCORE" cascade constraints;
DROP TABLE "MYMEM"."TBL_STUDENT" cascade constraints;
DROP TABLE "MYMEM"."TBL_SUBJECT" cascade constraints;
--------------------------------------------------------
--  DDL for Table TBL_DEPT
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_DEPT" 
   (	"D_CODE" CHAR(6 BYTE), 
	"D_NAME" NVARCHAR2(50), 
	"D_CEO" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Table TBL_IOLIST
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_IOLIST" 
   (	"IO_ID" NUMBER, 
	"IO_DATE" CHAR(10 BYTE), 
	"IO_CNAME" NVARCHAR2(50), 
	"IO_INOUT" NVARCHAR2(5), 
	"IO_QUAN" NUMBER, 
	"IO_PRICE" NUMBER, 
	"IO_TOTAL" NUMBER, 
	"IO_DCODE" CHAR(6 BYTE), 
	"IO_PCODE" CHAR(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Table TBL_MYTABLE
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_MYTABLE" 
   (	"P_ID" NUMBER, 
	"P_NAME" NVARCHAR2(50), 
	"P_TEL" NVARCHAR2(50), 
	"P_KOR" NUMBER(3,0), 
	"P_ENG" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Table TBL_PRIMARY
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_PRIMARY" 
   (	"P_ID" NUMBER, 
	"P_NAME" NVARCHAR2(50), 
	"P_TEL" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Table TBL_PRODUCT
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_PRODUCT" 
   (	"P_CODE" CHAR(9 BYTE), 
	"P_NAME" NVARCHAR2(50), 
	"P_IPRICE" NUMBER, 
	"P_OPRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Table TBL_SCORE
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_SCORE" 
   (	"G_ID" NUMBER, 
	"G_SUBJECT" NVARCHAR2(10), 
	"G_SCORE" NUMBER, 
	"G_STNUM" CHAR(5 BYTE), 
	"G_BCODE" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Table TBL_STUDENT
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_STUDENT" 
   (	"ST_NUM" CHAR(5 BYTE), 
	"ST_NAME" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Table TBL_SUBJECT
--------------------------------------------------------

  CREATE TABLE "MYMEM"."TBL_SUBJECT" 
   (	"SB_NUM" CHAR(5 BYTE), 
	"SB_NAME" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
REM INSERTING into MYMEM.TBL_DEPT
SET DEFINE OFF;
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00001','(구)워터365','정경모');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00002','(주)거창ENG','최운학');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00003','(주)대정이앤씨','이수정');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00004','(주)동양엔지니어링(광주남구롯데)','김기국');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00005','(주)두손템스','손응호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00006','(주)두원아이스뱅크','장해은');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00007','(주)미래산업','조석현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00008','(주)미래씨앤에이치','김영현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00009','(주)삼원자판기','박철현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00010','(주)성안이엔지(남구롯데)','강성국');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00011','(주)성호','전용식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00012','(주)티브이푸드','후지타 토시하루');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00013','(주)한에너지시스템','장사윤');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00014','(주)한일엔지니어링','박종필');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00015','COOL 냉난방시스템','권상배');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00016','L&R테크','조남훈');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00017','LG상사(정읍냉기)','차재호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00018','LG자판기','김용묵');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00019','가나다냉동','김봉길');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00020','가스보일러A/S센타(안산롯데)','지기훈');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00021','가인상사','정수임');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00022','강릉롯데(롯데가스보일러강릉)','이용선');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00023','강북서비스','탁성철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00024','강서롯데','강명원');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00025','거명ENG롯데보일러','서동근');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00026','거제냉동','홍정배');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00027','건영기업(신노원롯데)','서동권');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00028','경보플랜트설비','김익중');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00029','경북냉열','박준영');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00030','경북유통','주해룡');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00031','경원자판기','백구현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00032','경인유통','임희재');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00033','계양롯데','강동환');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00034','계현사','김민수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00035','골드자판기','이철균');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00036','관악롯데냉열기기(관악)','한승환');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00037','광성에너지(부천롯데)','위용환');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00038','광양롯데가스보일러(광양롯데)','오균석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00039','광역롯데','전미화');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00040','광주북서구롯데(광주북서구롯데)','서진석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00041','광진냉동','이학수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00042','광진엔지니어링','신찬철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00043','구리롯데','박창현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00044','구미롯데','조준형');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00045','구미종합아이스크림','조옥래');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00046','그린에너텍','박용서');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00047','금성경기서비스','안영철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00048','기현쇼케이스','이재창');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00049','남구 롯데보일러','장윤정');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00050','남원냉동주방','방명호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00051','남포항롯데','김원종');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00052','대복엔지니어링(서안양롯데)','배한근');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00053','대성자판기','이기열');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00054','대성종합설비(당진롯데)','박희선');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00055','대신보일러(서구롯데)','하익진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00056','대진상사','정진원');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00057','대하롯데가스보일러(광주북구롯데)','황정자');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00058','대한에너지(거창롯데)','윤석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00059','대한종합건재','안향자');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00060','더싼유통','전윤길');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00061','덕인유통','서동국');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00062','도연에너지(광주광산롯데)','박진우');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00063','동구미롯데','김한수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00064','동부자판기','윤복길');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00065','동양주방인테리어','김정곤');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00066','동일가스상사(제주롯데)','문유진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00067','두리F&E','이준수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00068','두영산업','김웅겸');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00069','둔산롯데','박광석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00070','로얄냉동','권영숙');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00071','롯데SK가스보일러공주지점','송재은');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00072','롯데가스기기(구로)','이기영');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00073','롯데가스기기동구지정점(대전동구롯데)','박옥규');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00074','롯데가스보일러 신북구점','김성열');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00075','롯데가스보일러(김천롯데)','문성식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00076','롯데가스보일러(달서롯데)','권영대');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00077','롯데가스보일러(대전서구롯데)','김준태');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00078','롯데가스보일러(문막)','최상수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00079','롯데가스보일러(서산롯데)','이경순');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00080','롯데가스보일러(수성롯데)','호세진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00081','롯데가스보일러(아산롯데)','차응철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00082','롯데가스보일러(안성롯데)','김일태');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00083','롯데가스보일러(천안남부롯데)','이강섭');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00084','롯데가스보일러경산대리점','강용진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00085','롯데가스보일러동부대리점(동부롯데)','공미희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00086','롯데가스보일러마산(동마산)','박재문');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00087','롯데가스보일러마산내서롯데(서마산롯데)','이종길');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00088','롯데가스보일러서부대리점(서부롯데)','김명숙');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00089','롯데가스보일러서비스센타J(김제롯데)','박형준');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00090','롯데가스보일러설비(서수원롯데)','모인환');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00091','롯데가스보일러첨단점(광주첨단롯데)','진영호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00092','롯데가스텍(김해롯데)','김용권');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00093','롯데강북서비스','박성철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00094','롯데냉동','문현철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00095','롯데냉동공조(포항)','이정식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00096','롯데냉동설비(동래)','김상옥');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00097','롯데냉열기기(서부산냉기)','사공경훈');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00098','롯데대성가스보일러(신제천롯데)','김현철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00099','롯데벤슨(춘천)','박재현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00100','롯데보일러(거제롯데(신규)','김동언');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00101','롯데보일러(성남수정)','김옥희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00102','롯데보일러원주지점(원주남부)','원동빈');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00103','롯데사상대리점(사상롯데)','박봉희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00104','롯데엔지니어링(금천)','정옥균');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00105','롯데엔지니어링(신광주남부)','허영만');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00106','롯데엔지니어링(양천)','백성갑');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00107','롯데유통','천용성');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00108','롯데자판기','김옥연');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00109','롯데자판기제일상사','김병진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00110','리사이클플러스','홍성만');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00111','명대상사(보령롯데)','이창수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00112','명도상사','유기현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00113','명성냉열기상사','김정호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00114','명성에이치앤피','신성숙');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00115','명일엔지니어링(서초강남)','서동일');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00116','모든ENG(서전주롯데)','김현준');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00117','모악ENG(남전주롯데)','서인호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00118','모우종합설비(완도롯데)','윤성남');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00119','목포자판기','박병섭');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00120','문진냉기','나문진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00121','미래냉동','오세영');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00122','미래자판기랜드','김종원');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00123','벤도피아','김태우');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00124','벤딩테크(동광주자판)','이이형');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00125','보일러상사(정읍롯데)','여현식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00126','복산기기(울산중구롯데)','박차환');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00127','부경롯데(남구롯데)','정진호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00128','부산특판','박종규');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00129','부성벤더','신기식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00130','부평롯데','허빈');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00131','북부롯데가스보일러(광주서북구롯데)','박기영');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00132','북인천롯데','김미순');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00133','삼성자판','박희대');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00134','삼성자판기서비스지정점(군산자판)','탁목곤');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00135','삼성자판서비스','이강춘');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00136','삼영냉동산업','이혜숙');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00137','삼인ENG(북전주롯데)','김성주');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00138','삼학ENG(목포롯데)','서병연');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00139','새부산롯데(금정롯데)','박민갑');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00140','서경냉열','김성근');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00141','서대문롯데','임병수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00142','서비스메카','김연기');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00143','서비스뱅크','유택근');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00144','서원상사','김종석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00145','성보공업사','윤정모');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00146','성북보일러(성북롯데)','심공보');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00147','성운이엔지','양회석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00148','세림상사(중랑롯데)','장선구');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00149','세원냉동설비수리','정명호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00150','센텀냉동','이광수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00151','소리냉기','강성훈');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00152','소리종합주방','홍성예');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00153','속초롯데','박용광');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00154','신갈롯데','권영기');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00155','신부산롯데(서사하롯데)','정재곤');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00156','신세계종합주방','오동준');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00157','신순천롯데(롯데가스보일러)','김미희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00158','신영사','이주경');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00159','신일산냉기(신영자동판매기)','황선태');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00160','신진엔지니어링(용인롯데)','유행수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00161','신창냉동설비산업','황규정');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00162','싱싱냉동','박강희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00163','썬웨이일등보일러(신남원롯데)','정경호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00164','씨.엠.브이시스템','박달희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00165','씽씽냉동','김성표');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00166','아이에스','김인수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00167','안동서비스','장형구');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00168','안산냉기','배연산');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00169','에이스주방냉동백화점','정순태');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00170','엘씨밴딩','최선영');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00171','엘지냉동','김송실');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00172','여수중앙자판','송춘식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00173','영인냉열상사(춘천)','정인영');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00174','영진에너지(광주동구롯데)','김선석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00175','온달가스텍(경남롯데)','최규철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00176','우리냉동','김선옥');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00177','우리냉동','유익');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00178','우리상사','민성필');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00179','우진냉동','심재용');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00180','우진정밀(광명롯데)','이호문');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00181','울산남구롯데','이복남');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00182','원명보일러총판(의정부)','서승권');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00183','원에이티엠(주)','서현규');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00184','원엔지니어링(일산롯데)','이명진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00185','원주삼성벤딩','최병규');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00186','월드냉동','신경식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00187','유성ENG(북전주롯데)','홍성경');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00188','유성수도상사(동래롯데)','김효진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00189','일도벤딩','안영덕');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00190','일조유통','이진현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00191','일호서비스','김일호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00192','일화종합설비(서익산롯데)','이정범');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00193','자판기서비스','권오석');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00194','자판기월드','황성욱');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00195','자판판매(주)','이정숙');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00196','전북기공','정원조');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00197','전북롯데냉기(전북냉기)','공태식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00198','정민냉열','오세철');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00199','정우유통','이정우');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00200','정일상사(남양주롯데)','김상균');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00201','제이엘엔지니어링','이종배');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00202','제일기업(연제롯데)','정광휘');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00203','제일보일러(울산울주롯데)','곽문진');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00204','제일상사(북익산롯데)','최세연');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00205','제일설비(예산롯데)','김인환');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00206','제일종합상사','이경수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00207','제주냉동','강정일');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00208','제주판매(주)','이상형');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00209','조성엔지니어링(대전중구롯데)','정회순');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00210','조은에너지(광진롯데)','정석순');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00211','중부서비스','민원기');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00212','진우ENG','이진우');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00213','진우전자','이광재');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00214','진주롯데기공냉동서비스','방성원');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00215','진흥자판기','김복자');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00216','창원롯데','박준수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00217','천안북부롯데','배정호');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00218','청인(동구롯데)','한규식');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00219','청주롯데보일러','주장섭');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00220','충주대리점','박정용');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00221','코리아냉.난방(군산남부롯데)','이종현');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00222','태성에너지','이태근');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00223','태양열기(김포롯데)','김미숙');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00224','태양자판기서비스','허성원');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00225','태양전기판넬','성경희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00226','텐플러스 시스템','임순희');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00227','플러스상사(광주북부)','명종학');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00228','하나벤딩(주)','박진구');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00229','하린냉동','김종율');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00230','한성냉열인슈로(주)','김광영');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00231','한솔종합상사','이홍수');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00232','해태자판기전남지점','김진용');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00233','현대상사','이채욱');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00234','협승냉열','김미용');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00235','협신상사','백경목');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00236','화명롯데가스보일러(화명롯데)','김영화');
REM INSERTING into MYMEM.TBL_IOLIST
SET DEFINE OFF;
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (2,'2018-01-02','(신)땅콩꽈배기','매입',66,497,32802,'D00197','P00000037');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (3,'2018-01-02','멀티비타 캔','매입',89,245,21805,'D00214','P00000167');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (4,'2018-01-02','석기공룡알','매입',94,295,27730,'D00164','P00000215');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (5,'2018-01-03',' 위    즐(커피)','매입',87,2745,238815,'D00033','P00000019');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (6,'2018-01-04','투니스','매입',94,0,0,'D00018','P00000355');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (7,'2018-01-06','옥수수수염차','매입',66,622,41052,'D00053','P00000268');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (8,'2018-01-07','우산-7000','매입',100,1885,188500,'D00111','P00000273');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (9,'2018-01-07','농협-제주감귤(180)','매입',84,491,41244,'D00136','P00000115');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (10,'2018-01-07','1000도도한나초검은깨','매입',78,591,46098,'D00183','P00000050');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (13,'2018-01-10','7+8칫솔','매입',93,0,0,'D00163','P00000085');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (14,'2018-01-10','봉지커피','매입',73,8240,601520,'D00070','P00000195');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (15,'2018-01-11','프론티어','매입',89,1844,164116,'D00077','P00000368');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (16,'2018-01-12','코닥 알카 AA','매입',73,409,29857,'D00115','P00000331');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (17,'2018-01-12',' 마제스티(호두)','매입',78,2196,171288,'D00160','P00000005');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (18,'2018-01-12','농협-복분자(180)','매입',68,655,44540,'D00070','P00000113');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (19,'2018-01-15','아이셔마법천자문','매입',79,311,24569,'D00235','P00000241');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (20,'2018-01-15','700 고소미','매입',64,436,27904,'D00068','P00000086');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (21,'2018-01-16','밴드스타킹','매입',60,647,38820,'D00205','P00000184');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (22,'2018-01-17','버지니아슈퍼슬림','매입',56,2065,115640,'D00101','P00000185');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (23,'2018-01-17','(신)ABC쵸콜렛','매입',88,887,78056,'D00234','P00000033');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (24,'2018-01-18','일회용밴드','매입',50,245,12250,'D00102','P00000283');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (25,'2018-01-19','팔리아멘트원','매입',77,1844,141988,'D00226','P00000359');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (26,'2018-01-19','헤이즐넛커피믹스','매입',54,286,15444,'D00200','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (31,'2018-01-24',' 빙고(밀크맛)','매입',58,327,18966,'D00172','P00000007');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (32,'2018-01-24','통크','매입',78,436,34008,'D00221','P00000354');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (33,'2018-01-26','5000모자','매입',72,2049,147528,'D00208','P00000076');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (34,'2018-01-27','2%부족할때DBH복숭아 500㎖펫','매입',97,614,59558,'D00173','P00000068');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (35,'2018-01-27','레종블루','매입',52,0,0,'D00198','P00000146');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (40,'2018-02-03','대일밴드','매입',100,245,24500,'D00145','P00000123');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (41,'2018-02-04','1000바','매입',87,655,56985,'D00219','P00000051');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (42,'2018-02-04','오라떼크림소다','매입',89,300,26700,'D00194','P00000260');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (43,'2018-02-05','칫솔','매입',73,409,29857,'D00124','P00000315');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (44,'2018-02-05','쵸코하임','매입',81,1311,106191,'D00219','P00000312');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (45,'2018-02-07','스위스헤이즐넛초콜릿','매입',93,655,60915,'D00203','P00000228');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (46,'2018-02-07',' 빙하시대(파인)','매입',78,384,29952,'D00103','P00000009');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (47,'2018-02-08',' 조안나바','매입',71,1647,116937,'D00182','P00000021');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (48,'2018-02-09','자기야홍삼을왜마셔?','매입',54,327,17658,'D00090','P00000286');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (49,'2018-02-09','산소수','매입',100,655,65500,'D00074','P00000207');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (68,'2018-02-19',' 델리어트','매입',88,2745,241560,'D00148','P00000003');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (69,'2018-02-19','딸기맛우유','매입',71,491,34861,'D00138','P00000140');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (70,'2018-02-19','오리온웨하스 딸기맛','매입',69,311,21459,'D00098','P00000265');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (71,'2018-02-20','6000카드','매입',88,2049,180312,'D00167','P00000084');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (72,'2018-02-21','오란씨-오렌지맛','매입',69,327,22563,'D00138','P00000261');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (73,'2018-02-23','데미소다오렌지패트','매입',55,655,36025,'D00215','P00000134');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (74,'2018-02-24','(신)ABC쵸콜렛','매입',90,887,79830,'D00039','P00000033');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (75,'2018-02-25','1000오잉','매입',82,650,53300,'D00113','P00000053');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (76,'2018-02-26','말보로미디엄','매입',84,1844,154896,'D00048','P00000159');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (77,'2018-03-01','땅콩그래','매입',95,655,62225,'D00084','P00000142');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (78,'2018-03-01','농협-홍삼(180)','매입',89,573,50997,'D00039','P00000118');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (79,'2018-03-01','방한모','매입',90,7377,663930,'D00186','P00000182');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (80,'2018-03-01',' 고 드 름(블루)','매입',76,384,29184,'D00066','P00000001');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (81,'2018-03-02','비타 파워','매입',100,204,20400,'D00179','P00000199');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (82,'2018-03-03','페레로로셰','매입',91,5778,525798,'D00192','P00000361');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (83,'2018-03-03','솔잎꿀차','매입',89,491,43699,'D00022','P00000225');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (84,'2018-03-04','프리클스오리지널','매입',54,1803,97362,'D00152','P00000371');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (85,'2018-03-05','보솜이대형','매입',73,901,65773,'D00153','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (86,'2018-03-05','화이브미니병','매입',73,311,22703,'D00076','P00000385');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (87,'2018-03-05','칸타타(원두커피)','매입',50,819,40950,'D00001','P00000325');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (88,'2018-03-07','1500 몽셀','매입',55,976,53680,'D00184','P00000059');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (89,'2018-03-07','헤이즐넛커피믹스','매입',81,286,23166,'D00132','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (90,'2018-03-10','구름위에-대일','매입',64,2622,167808,'D00019','P00000100');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (91,'2018-03-11','참ing(크리미버터)','매입',98,983,96334,'D00137','P00000302');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (92,'2018-03-12','뉴크리넥스 수앤수 캡60매','매입',62,2407,149234,'D00072','P00000120');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (108,'2018-03-22','매일검은콩','매입',59,409,24131,'D00139','P00000161');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (109,'2018-03-22','아몬드','매입',93,586,54498,'D00227','P00000239');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (110,'2018-03-24','초록매실 500ML','매입',72,655,47160,'D00014','P00000307');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (111,'2018-03-24','이온에이드캔','매입',82,344,28208,'D00167','P00000280');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (112,'2018-03-24','제이(j)','매입',69,1844,127236,'D00157','P00000291');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (113,'2018-03-26','오다리','매입',83,286,23738,'D00174','P00000258');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (114,'2018-03-26','데미소다애플패트','매입',80,655,52400,'D00124','P00000133');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (115,'2018-03-26','맥스웰싱글카페캔','매입',85,245,20825,'D00001','P00000163');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (116,'2018-03-27','화이브미니병','매입',99,311,30789,'D00173','P00000385');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (117,'2018-03-28','참ing(버터레몬)','매입',97,983,95351,'D00219','P00000301');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (118,'2018-04-01','포천쌀막걸리 1.2L','매입',53,901,47753,'D00197','P00000365');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (119,'2018-04-02','버터구이진미45g','매입',100,896,89600,'D00171','P00000189');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (120,'2018-04-02','3000드림카카오56%','매입',77,1775,136675,'D00007','P00000072');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (121,'2018-04-03','쵸코하임','매입',88,1311,115368,'D00074','P00000312');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (122,'2018-04-04','후지CN120','매입',79,1475,116525,'D00227','P00000390');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (123,'2018-04-05','1800후레쉬베리','매입',76,1121,85196,'D00016','P00000067');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (124,'2018-04-05','초코틴틴','매입',50,655,32750,'D00174','P00000309');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (125,'2018-04-05','버지니아슈퍼슬림원','매입',61,2065,125965,'D00087','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (126,'2018-04-06',' 클래스(딸기)','매입',84,2196,184464,'D00006','P00000027');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (127,'2018-04-07','후레쉬믹스','매입',72,573,41256,'D00193','P00000389');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (128,'2018-04-08','새우깡','매입',75,386,28950,'D00169','P00000210');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (129,'2018-04-09','워싱캐쥬얼A','매입',93,4918,457374,'D00020','P00000276');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (130,'2018-04-10','2%부족할때pet(레몬맛)','매입',98,491,48118,'D00155','P00000069');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (131,'2018-04-11','말보로필터플러스','매입',99,1844,182556,'D00071','P00000160');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (160,'2018-05-03',' 설레임커피쉐이크','매입',57,655,37335,'D00056','P00000010');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (161,'2018-05-03','무농약초코칩쿠키','매입',81,1639,132759,'D00202','P00000172');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (162,'2018-05-04','소보로','매입',62,655,40610,'D00074','P00000223');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (163,'2018-05-05','하기스매직팬티특대(여)','매입',75,1704,127800,'D00108','P00000373');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (164,'2018-05-05','5000화투','매입',51,860,43860,'D00020','P00000077');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (165,'2018-05-05','얼음물','매입',89,409,36401,'D00112','P00000247');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (166,'2018-05-05','보그aromeI','매입',58,1844,106952,'D00008','P00000192');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (167,'2018-05-06','미녀는 석류를 좋아해180㎖캔','매입',62,327,20274,'D00149','P00000176');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (168,'2018-05-07','코코팜 포도','매입',82,368,30176,'D00141','P00000341');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (169,'2018-05-08','셀렘원','매입',65,1844,119860,'D00124','P00000220');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (170,'2018-05-09','오늘의차(옥수수)','매입',65,614,39910,'D00078','P00000256');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (171,'2018-05-09','헤이즐넛커피믹스','매입',97,286,27742,'D00044','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (172,'2018-05-10','쥬시후레쉬묶음','매입',85,737,62645,'D00173','P00000297');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (173,'2018-05-10','500 투유','매입',76,295,22420,'D00067','P00000075');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (174,'2018-05-11','(신)새우깡','매입',70,411,28770,'D00126','P00000039');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (175,'2018-05-11','스타벅스 프라프치노커피','매입',58,1803,104574,'D00059','P00000230');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (176,'2018-05-11',' 링 키 바','매입',74,1647,121878,'D00036','P00000004');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (177,'2018-05-11','프렌치카페카라멜마끼야또','매입',85,901,76585,'D00062','P00000367');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (178,'2018-05-12','1800오뜨옐로우','매입',76,1172,89072,'D00023','P00000066');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (179,'2018-05-12','알새우칩','매입',70,322,22540,'D00104','P00000242');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (180,'2018-05-13','썬넛트멸치아몬드 35g','매입',66,737,48642,'D00060','P00000235');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (181,'2018-05-16','카카오76%','매입',66,622,41052,'D00057','P00000317');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (182,'2018-05-17','블루마운틴','매입',67,491,32897,'D00218','P00000198');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (183,'2018-05-17','1200 ABC쵸코','매입',82,709,58138,'D00093','P00000057');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (184,'2018-05-19','미닛메이드알로에플러스','매입',86,622,53492,'D00166','P00000179');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (185,'2018-05-20','판타롱스타킹','매입',73,512,37376,'D00017','P00000358');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (186,'2018-05-20','멀티비타 캔','매입',98,245,24010,'D00028','P00000167');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (187,'2018-05-21',' 한 떨 기','매입',52,549,28548,'D00166','P00000032');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (215,'2018-06-09','보솜이대형','매입',60,901,54060,'D00037','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (216,'2018-06-10','건면세대-소고기','매입',74,651,48174,'D00026','P00000092');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (217,'2018-06-10','초코틴틴','매입',96,655,62880,'D00021','P00000309');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (218,'2018-06-11','즉석 인스탁스','매입',56,7377,413112,'D00149','P00000299');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (219,'2018-06-12','오라떼크림소다','매입',54,573,30942,'D00195','P00000260');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (220,'2018-06-13','환타오렌지캔','매입',71,368,26128,'D00035','P00000388');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (221,'2018-06-13','생녹차(패트)','매입',65,491,31915,'D00229','P00000212');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (222,'2018-06-14','히야 오렌지 300㎖캐릭터펫','매입',78,409,31902,'D00118','P00000392');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (244,'2018-06-28','암바사캔','매입',57,352,20064,'D00012','P00000243');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (245,'2018-07-01','(신)자갈치','매입',68,386,26248,'D00094','P00000045');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (246,'2018-07-02','해바라기쵸코볼','매입',58,591,34278,'D00134','P00000378');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (247,'2018-07-03','1000초코칩쿠키','매입',89,622,55358,'D00233','P00000055');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (248,'2018-07-03','프론티어','매입',62,1844,114328,'D00031','P00000368');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (249,'2018-07-05','영지골드','매입',87,180,15660,'D00024','P00000255');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (250,'2018-07-05','빠다코코낫','매입',75,413,30975,'D00090','P00000202');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (284,'2018-07-28','왕고래밥','매입',59,622,36698,'D00147','P00000269');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (285,'2018-08-01','디스플러스(갑)','매입',54,1549,83646,'D00177','P00000137');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (286,'2018-08-01','매직스-중날','매입',67,2704,181168,'D00131','P00000162');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (287,'2018-08-02','순두유견과','매입',61,614,37454,'D00234','P00000226');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (288,'2018-08-02','선글라스25000','매입',73,1885,137605,'D00200','P00000219');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (289,'2018-08-02','키세스쿠키앤','매입',95,1758,167010,'D00185','P00000349');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (290,'2018-08-03','큰집식혜','매입',52,272,14144,'D00031','P00000344');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (291,'2018-08-03','야채크래커','매입',95,413,39235,'D00230','P00000245');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (292,'2018-08-03','프리미엄 토마토','매입',93,450,41850,'D00070','P00000370');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (293,'2018-08-03','데미소다그레이프캔','매입',79,341,26939,'D00151','P00000131');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (294,'2018-08-03','카프리선(오렌지)','매입',82,286,23452,'D00042','P00000324');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (295,'2018-08-04','펩시콜라 500㎖펫','매입',79,450,35550,'D00025','P00000362');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (296,'2018-08-04','국희땅콩샌드','매입',87,1180,102660,'D00125','P00000103');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (297,'2018-08-04','디스(갑)','매입',60,1475,88500,'D00096','P00000136');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (298,'2018-08-04','육개장사발면','매입',82,426,34932,'D00080','P00000279');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (299,'2018-08-05','순두유녹차','매입',58,614,35612,'D00030','P00000227');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (300,'2018-08-05','22000모자','매입',99,9016,892584,'D00150','P00000071');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (301,'2018-08-08','바로카페8804751701023','매입',90,491,44190,'D00189','P00000181');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (340,'2018-09-02','환타오렌지','매입',86,622,53492,'D00221','P00000387');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (341,'2018-09-02',' 스크류','매입',90,327,29430,'D00027','P00000012');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (342,'2018-09-02','(신)신라면큰사발','매입',99,532,52668,'D00059','P00000041');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (343,'2018-09-03','자유시간','매입',63,327,20601,'D00180','P00000287');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (344,'2018-09-03','1500 쵸코칩','매입',80,976,78080,'D00146','P00000060');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (345,'2018-09-04','허밍타임멘솔','매입',69,1696,117024,'D00116','P00000379');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (346,'2018-09-05','에쎄맨솔','매입',86,1844,158584,'D00205','P00000250');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (347,'2018-09-06','뽀또치즈','매입',62,1967,121954,'D00187','P00000206');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (348,'2018-09-06','마일드세븐슈퍼라이트','매입',93,1844,171492,'D00007','P00000154');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (349,'2018-09-06','보그aromeI','매입',71,1844,130924,'D00094','P00000192');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (350,'2018-09-06','컵라면 소','매입',65,819,53235,'D00032','P00000330');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (351,'2018-09-07','광동위생천','매입',72,221,15912,'D00106','P00000097');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (352,'2018-09-07','(신)알새우칠리새우맛','매입',95,386,36670,'D00163','P00000042');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (353,'2018-09-08','칩포테토짭짤(대)','매입',67,586,39262,'D00127','P00000314');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (354,'2018-09-08','700 다이제비스킷','매입',91,436,39676,'D00042','P00000087');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (355,'2018-09-08','데미소다레몬캔','매입',89,341,30349,'D00068','P00000132');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (356,'2018-09-09','누드빼빼로','매입',79,413,32627,'D00143','P00000119');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (357,'2018-09-09',' 카페프레소','매입',60,655,39300,'D00017','P00000024');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (358,'2018-09-09','말보로라이트','매입',75,1844,138300,'D00099','P00000157');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (359,'2018-09-12','1000바','매입',63,655,41265,'D00088','P00000051');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (360,'2018-09-12','(신)쫄병스낵','매입',98,386,37828,'D00026','P00000046');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (361,'2018-09-12','노래테이프','매입',77,1147,88319,'D00176','P00000111');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (362,'2018-09-13','엔츠','매입',72,1844,132768,'D00103','P00000253');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (363,'2018-09-14','나쵸-살사','매입',58,622,36076,'D00099','P00000109');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (364,'2018-09-14','에이스','매입',86,1311,112746,'D00133','P00000252');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (365,'2018-09-16','카푸치노컵','매입',58,614,35612,'D00075','P00000323');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (366,'2018-09-17','맥심 오리지날 20입','매입',74,1803,133422,'D00098','P00000165');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (367,'2018-09-18','카스타드','매입',78,1183,92274,'D00128','P00000316');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (368,'2018-09-19','키세스쿠키앤','매입',59,1758,103722,'D00143','P00000349');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (369,'2018-09-19',' 월드콘(바닐라)','매입',60,655,39300,'D00205','P00000018');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (370,'2018-09-20','16000모자','매입',58,6557,380306,'D00133','P00000064');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (371,'2018-09-21','삼각대 중','매입',86,13934,1198324,'D00024','P00000208');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (372,'2018-09-22',' 조안나바','매입',57,1647,93879,'D00065','P00000021');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (404,'2018-10-07',' 주물러(개구리)','매입',51,327,16677,'D00007','P00000022');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (405,'2018-10-07','건면세대-김치','매입',77,651,50127,'D00184','P00000091');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (406,'2018-10-08','참ing(크리미버터)','매입',86,983,84538,'D00227','P00000302');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (407,'2018-10-08','뻥소리','매입',68,1639,111452,'D00064','P00000204');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (408,'2018-10-08','인디고','매입',94,1844,173336,'D00046','P00000281');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (409,'2018-10-09','목장갑','매입',71,409,29039,'D00162','P00000170');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (410,'2018-10-10','500목캔디','매입',69,295,20355,'D00057','P00000080');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (411,'2018-10-11','투인러브 모카(커피)','매입',79,587,46373,'D00186','P00000356');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (412,'2018-10-14','오징어 버터구이 40g','매입',91,919,83629,'D00109','P00000267');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (413,'2018-10-16','홍삼꿀','매입',99,491,48609,'D00201','P00000384');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (414,'2018-10-18',' 주물러(콜.배)','매입',98,274,26852,'D00142','P00000023');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (415,'2018-10-18','트윅스싱글','매입',83,524,43492,'D00054','P00000357');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (416,'2018-10-18','순두유견과','매입',57,614,34998,'D00074','P00000226');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (417,'2018-10-18','블랙빈테라피','매입',99,341,33759,'D00118','P00000197');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (418,'2018-10-19','500바','매입',84,327,27468,'D00093','P00000081');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (419,'2018-10-20','코코팜 포도','매입',80,368,29440,'D00194','P00000341');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (420,'2018-10-20','조청유과(대)','매입',55,1465,80575,'D00209','P00000294');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (421,'2018-10-22','건면세대-김치','매입',71,651,46221,'D00036','P00000091');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (422,'2018-10-23','스타벅스 프라프치노커피','매입',69,1803,124407,'D00231','P00000230');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (423,'2018-10-24','클라우드','매입',67,2213,148271,'D00162','P00000345');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (424,'2018-10-25','농협-알로에(180)','매입',82,573,46986,'D00143','P00000114');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (425,'2018-10-25','심플(갑)','매입',68,1696,115328,'D00183','P00000233');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (426,'2018-10-26','귀다리벙거지','매입',85,6557,557345,'D00213','P00000104');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (427,'2018-10-27','코닥K123LA-1(신)','매입',81,2459,199179,'D00097','P00000334');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (428,'2018-10-28','16000모자','매입',91,6557,596687,'D00120','P00000064');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (429,'2018-10-28','버지니아슈퍼슬림원','매입',57,2065,117705,'D00008','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (430,'2018-10-29',' 빙하시대(커피)','매입',90,384,34560,'D00086','P00000008');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (431,'2018-10-29','킨사이다제로','매입',60,368,22080,'D00089','P00000351');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (432,'2018-11-01',' 메 타 콘(딸기)','매입',98,549,53802,'D00228','P00000006');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (433,'2018-11-01','1000썬칩','매입',86,591,50826,'D00235','P00000052');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (434,'2018-11-02','던힐(맨솔)','매입',58,1844,106952,'D00129','P00000126');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (435,'2018-11-02','코닥 알카 AA','매입',50,409,20450,'D00075','P00000331');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (436,'2018-11-03','신라면큰사발면','매입',99,555,54945,'D00205','P00000231');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (437,'2018-11-03','인디고','매입',87,1844,160428,'D00200','P00000281');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (438,'2018-11-03','봉지커피','매입',56,8240,461440,'D00210','P00000195');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (439,'2018-11-05','13000모자','매입',68,5327,362236,'D00155','P00000058');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (477,'2018-12-16','디스플러스(갑)','매입',98,1549,151802,'D00139','P00000137');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (478,'2018-12-16','500가나','매입',66,295,19470,'D00132','P00000078');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (479,'2018-12-17','오란씨-파인','매입',69,327,22563,'D00159','P00000262');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (480,'2018-12-20','미니폴','매입',88,311,27368,'D00211','P00000178');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (481,'2018-12-22','킨사이다','매입',72,450,32400,'D00174','P00000350');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (482,'2018-12-22',' 와(바닐라)','매입',84,524,44016,'D00123','P00000016');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (483,'2018-12-23','500 돌아온왕꿈틀이','매입',69,311,21459,'D00158','P00000074');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (484,'2018-12-23','팬시라이너','매입',86,1721,148006,'D00211','P00000360');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (485,'2018-12-24','던힐프로스트','매입',65,1434,93210,'D00182','P00000130');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (486,'2018-12-25','선글라스10000','매입',81,1885,152685,'D00146','P00000217');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (487,'2018-12-27','라이코펜새우깡','매입',87,515,44805,'D00032','P00000144');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (488,'2018-12-27','1000해바라기초코볼','매입',93,591,54963,'D00202','P00000056');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (489,'2018-12-27','즉석  P700','매입',61,9016,549976,'D00035','P00000298');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (490,'2018-12-28','쌀과자','매입',96,491,47136,'D00040','P00000234');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (491,'2018-12-29','여행셋트','매입',69,1639,113091,'D00186','P00000254');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (1,'2018-01-01',' 옥동자(초코)','매출',51,500,25500,'D00172','P00000014');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (11,'2018-01-09',' 프리마또','매출',91,1000,91000,'D00071','P00000031');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (12,'2018-01-09','프링글스오리지널소','매출',86,1500,129000,'D00059','P00000372');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (27,'2018-01-23','환타오렌지','매출',87,1500,130500,'D00123','P00000387');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (28,'2018-01-23','하이트맥주캔','매출',74,2000,148000,'D00137','P00000376');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (29,'2018-01-24','우비-아동','매출',58,1500,87000,'D00097','P00000271');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (30,'2018-01-24','맥스웰카푸치노캔','매출',81,700,56700,'D00043','P00000164');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (36,'2018-01-28','멸균딸기','매출',97,700,67900,'D00092','P00000169');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (37,'2018-01-29','마늘빵','매출',60,2500,150000,'D00119','P00000149');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (38,'2018-02-02',' 더위사냥(오렌지)','매출',95,700,66500,'D00207','P00000002');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (39,'2018-02-03','버터와플','매출',66,1500,99000,'D00187','P00000191');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (50,'2018-02-09','에쎄(순)','매출',68,2500,170000,'D00082','P00000249');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (51,'2018-02-09','일회용휴지','매출',98,500,49000,'D00163','P00000284');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (52,'2018-02-10','하이콜라겐','매출',51,1500,76500,'D00052','P00000375');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (53,'2018-02-11','코닥일회용(유)','매출',75,12000,900000,'D00047','P00000337');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (54,'2018-02-11','코닥KL2CR5-1','매출',58,12000,696000,'D00083','P00000336');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (55,'2018-02-11','오란씨소다 복숭아캔','매출',55,800,44000,'D00230','P00000263');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (56,'2018-02-13','카카오76%','매출',50,1000,50000,'D00212','P00000317');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (57,'2018-02-14','카푸치노병','매출',92,2500,230000,'D00148','P00000322');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (58,'2018-02-14','히야오렌지','매출',84,1000,84000,'D00053','P00000393');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (59,'2018-02-15','콜드 포도240','매출',71,1200,85200,'D00119','P00000342');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (60,'2018-02-15','칸타타(원두커피)','매출',95,1800,171000,'D00175','P00000325');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (61,'2018-02-15','프리모','매출',97,1500,145500,'D00066','P00000369');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (62,'2018-02-15','멀티비타 병','매출',63,700,44100,'D00231','P00000166');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (63,'2018-02-16','쥬시후레쉬묶음','매출',52,1500,78000,'D00026','P00000297');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (64,'2018-02-16','촉촉한초코칩','매출',59,1500,88500,'D00059','P00000311');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (65,'2018-02-17','알새우칩','매출',50,500,25000,'D00039','P00000242');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (66,'2018-02-18','멸균딸기','매출',67,700,46900,'D00081','P00000169');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (67,'2018-02-18','마일드세븐[박스]','매출',81,2500,202500,'D00129','P00000152');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (93,'2018-03-12','2000목캔디','매출',62,2000,124000,'D00048','P00000070');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (94,'2018-03-12','1500애니타임','매출',84,1500,126000,'D00204','P00000062');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (95,'2018-03-13','하늘보리','매출',90,1500,135000,'D00049','P00000374');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (96,'2018-03-14','헤이즐넛원두','매출',57,1000,57000,'D00129','P00000381');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (97,'2018-03-14','컵라면 대','매출',61,1500,91500,'D00215','P00000329');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (98,'2018-03-14','우산(소)-고급','매출',68,10000,680000,'D00222','P00000272');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (99,'2018-03-14','(신)새우탕큰사발','매출',76,900,68400,'D00104','P00000040');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (100,'2018-03-16','카페모카컵','매출',63,1500,94500,'D00196','P00000319');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (101,'2018-03-16','키세스','매출',70,3000,210000,'D00079','P00000347');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (102,'2018-03-16','무농약현미건빵','매출',68,3000,204000,'D00128','P00000173');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (103,'2018-03-16','오데뜨','매출',50,2000,100000,'D00145','P00000259');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (104,'2018-03-18','비타 파워','매출',85,700,59500,'D00195','P00000199');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (105,'2018-03-18','보솜이대형','매출',53,2000,106000,'D00121','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (106,'2018-03-19','엄마손파이','매출',72,1500,108000,'D00174','P00000248');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (107,'2018-03-19','소라형과자','매출',69,1500,103500,'D00011','P00000222');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (132,'2018-04-12','500투니스매콤','매출',99,500,49500,'D00048','P00000082');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (133,'2018-04-14','홈런볼초코(소)','매출',73,1000,73000,'D00073','P00000383');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (134,'2018-04-14','코카콜라500ml','매출',60,1500,90000,'D00196','P00000340');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (135,'2018-04-16','네스티','매출',87,1500,130500,'D00203','P00000110');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (136,'2018-04-16','m&m''s 피넛페크백','매출',90,2000,180000,'D00146','P00000090');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (137,'2018-04-18','말보로라이트','매출',76,2500,190000,'D00130','P00000157');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (138,'2018-04-18','유자꿀차','매출',69,1200,82800,'D00020','P00000277');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (139,'2018-04-18',' 링 키 바','매출',97,3000,291000,'D00226','P00000004');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (140,'2018-04-18',' 투게더(大)','매출',57,5000,285000,'D00181','P00000028');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (141,'2018-04-20','해바라기쵸코볼','매출',79,700,55300,'D00144','P00000378');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (142,'2018-04-20','핫쵸코','매출',62,1500,93000,'D00004','P00000377');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (143,'2018-04-21','m&m''s 피넛페크백','매출',87,2000,174000,'D00164','P00000090');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (144,'2018-04-22','구름위에-중날','매출',60,4500,270000,'D00138','P00000101');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (145,'2018-04-22','타임라이트','매출',95,2300,218500,'D00176','P00000352');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (146,'2018-04-23','코닥100/36','매출',78,4000,312000,'D00176','P00000332');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (147,'2018-04-24','키세스아몬드','매출',63,3000,189000,'D00068','P00000348');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (148,'2018-04-24','인디언밥','매출',50,500,25000,'D00195','P00000282');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (149,'2018-04-25',' 커피동자','매출',95,500,47500,'D00211','P00000025');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (150,'2018-04-26','썬크스트오렌지에이드350','매출',68,1500,102000,'D00010','P00000236');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (151,'2018-04-26','건면세대-김치','매출',90,1100,99000,'D00080','P00000091');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (152,'2018-04-27',' 와(바닐라&커피)','매출',70,1000,70000,'D00128','P00000015');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (153,'2018-04-28','참이슬(포켓용)PET 200ML','매출',95,1500,142500,'D00004','P00000305');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (154,'2018-04-28','500바','매출',69,500,34500,'D00046','P00000081');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (155,'2018-05-01','심플(갑)','매출',69,2300,158700,'D00057','P00000233');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (156,'2018-05-01','다원녹차','매출',56,1500,84000,'D00077','P00000121');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (157,'2018-05-01','선글라스10000','매출',95,10000,950000,'D00177','P00000217');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (158,'2018-05-02','비타파워 210㎖병(박스)','매출',59,1300,76700,'D00004','P00000200');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (159,'2018-05-02','소라','매출',54,1500,81000,'D00083','P00000221');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (188,'2018-05-21','목장갑','매출',70,1000,70000,'D00107','P00000170');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (189,'2018-05-22','텐더롤','매출',93,1800,167400,'D00049','P00000353');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (190,'2018-05-23','500 고래밥볶음양념','매출',69,500,34500,'D00198','P00000073');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (191,'2018-05-24','6000모자','매출',58,6000,348000,'D00055','P00000083');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (192,'2018-05-24','꼬깔(고소)','매출',65,500,32500,'D00191','P00000108');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (193,'2018-05-24','에쎄원','매출',78,2500,195000,'D00149','P00000251');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (194,'2018-05-26','버지니아슈퍼슬림원','매출',66,2800,184800,'D00129','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (195,'2018-05-27','스타벅스 프라프치노커피','매출',100,3800,380000,'D00085','P00000230');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (196,'2018-05-27','고구마깡','매출',56,500,28000,'D00134','P00000094');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (197,'2018-05-27','더원(0.5)','매출',79,2500,197500,'D00053','P00000125');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (198,'2018-05-28','(신)k400/36','매출',79,4000,316000,'D00012','P00000034');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (199,'2018-05-28','킨사이다제로','매출',99,800,79200,'D00097','P00000351');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (200,'2018-06-01','마일드세븐원','매출',81,2500,202500,'D00144','P00000155');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (201,'2018-06-03','말보로미디엄','매출',77,2500,192500,'D00089','P00000159');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (202,'2018-06-03','1500더블후레쉬자몽','매출',60,1500,90000,'D00225','P00000061');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (203,'2018-06-03','자일리톨3+','매출',77,1500,115500,'D00113','P00000289');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (204,'2018-06-04','광동진광탕','매출',53,700,37100,'D00206','P00000098');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (205,'2018-06-05','커피나','매출',91,2000,182000,'D00232','P00000328');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (206,'2018-06-05','히야오렌지','매출',55,1000,55000,'D00055','P00000393');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (207,'2018-06-05','새우탕면','매출',67,1000,67000,'D00161','P00000211');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (208,'2018-06-05','오리온초코칩쿠키','매출',66,700,46200,'D00188','P00000266');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (209,'2018-06-05','삼다수녹차','매출',53,1500,79500,'D00172','P00000209');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (210,'2018-06-05','농협-복분자(180)','매출',97,1000,97000,'D00001','P00000113');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (211,'2018-06-06','코닥일회용(유)','매출',65,12000,780000,'D00087','P00000337');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (212,'2018-06-07','빵또아','매출',67,1000,67000,'D00020','P00000203');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (213,'2018-06-07','고래밥','매출',89,500,44500,'D00126','P00000096');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (214,'2018-06-08','매일검은콩','매출',80,900,72000,'D00069','P00000161');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (223,'2018-06-14','코닥200/24(구)','매출',68,3000,204000,'D00178','P00000333');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (224,'2018-06-16','석류사랑초(델몬트)','매출',60,1100,66000,'D00091','P00000216');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (225,'2018-06-16','즉석 인스탁스','매출',50,13000,650000,'D00205','P00000299');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (226,'2018-06-17','(신)신라면큰사발','매출',59,900,53100,'D00009','P00000041');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (227,'2018-06-17','보솜이대형','매출',52,2000,104000,'D00230','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (228,'2018-06-18','초코틴틴','매출',54,1000,54000,'D00094','P00000309');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (229,'2018-06-19','바로까페헤이즐넛','매출',78,1500,117000,'D00071','P00000180');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (230,'2018-06-19','애니데이일반24','매출',93,3000,279000,'D00002','P00000244');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (231,'2018-06-20','김치사발면','매출',54,800,43200,'D00137','P00000106');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (232,'2018-06-20',' 셀렉션','매출',61,5000,305000,'D00102','P00000011');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (233,'2018-06-21','백옥콘','매출',75,1200,90000,'D00018','P00000183');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (234,'2018-06-22','(신)양파링','매출',70,800,56000,'D00068','P00000044');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (235,'2018-06-22','라면','매출',99,2500,247500,'D00203','P00000143');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (236,'2018-06-23','마일드쎄븐(LSS)ONE','매출',72,2500,180000,'D00012','P00000156');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (237,'2018-06-23','입안가득초코칩','매출',94,1500,141000,'D00217','P00000285');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (238,'2018-06-23','로크럭스','매출',99,2500,247500,'D00041','P00000148');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (239,'2018-06-23','칩스인컵','매출',100,1500,150000,'D00224','P00000313');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (240,'2018-06-24','마이쮸(딸기)','매출',94,500,47000,'D00071','P00000150');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (241,'2018-06-25','키세스','매출',74,1000,74000,'D00216','P00000347');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (242,'2018-06-25','던힐발란스','매출',75,2500,187500,'D00024','P00000129');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (243,'2018-06-28','17차','매출',93,1800,167400,'D00190','P00000065');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (251,'2018-07-06','생수','매출',87,1000,87000,'D00236','P00000213');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (252,'2018-07-08','페레로로셰','매출',52,9000,468000,'D00170','P00000361');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (253,'2018-07-09','땅콩강정','매출',64,2000,128000,'D00231','P00000141');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (254,'2018-07-09','(신)알새우칩','매출',71,600,42600,'D00226','P00000043');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (255,'2018-07-09','환타오렌지','매출',78,1500,117000,'D00050','P00000387');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (256,'2018-07-12','스윙칩','매출',78,2000,156000,'D00133','P00000229');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (257,'2018-07-12','초코픽','매출',73,800,58400,'D00102','P00000310');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (258,'2018-07-13','깜두','매출',73,1200,87600,'D00012','P00000107');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (259,'2018-07-14','좋은느낌울날소형18P','매출',64,5500,352000,'D00135','P00000296');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (260,'2018-07-14',' 에너보틀','매출',51,1000,51000,'D00095','P00000013');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (261,'2018-07-15','1000이구동성베이컨','매출',61,1000,61000,'D00058','P00000054');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (262,'2018-07-17','코카콜라 1.5PET','매출',90,2000,180000,'D00145','P00000339');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (263,'2018-07-18','로얄디','매출',86,800,68800,'D00140','P00000147');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (264,'2018-07-18','유자꿀차','매출',51,1200,61200,'D00110','P00000277');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (265,'2018-07-18','버지니아울트라','매출',94,2800,263200,'D00047','P00000187');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (266,'2018-07-19','계란(3개입)','매출',72,1000,72000,'D00081','P00000093');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (267,'2018-07-19','좋은느낌 울날중형18P','매출',71,5500,390500,'D00061','P00000295');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (268,'2018-07-20','(신)신라면큰사발','매출',93,900,83700,'D00090','P00000041');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (269,'2018-07-20','카페라떼캔(모카)','매출',79,1000,79000,'D00076','P00000318');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (270,'2018-07-20','무농약현미칩쿠키','매출',97,2500,242500,'D00210','P00000174');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (271,'2018-07-20','8000모자','매출',72,8000,576000,'D00013','P00000088');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (272,'2018-07-21','카스타드','매출',73,2000,146000,'D00060','P00000316');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (273,'2018-07-21','화이트엔젤큐티','매출',89,1500,133500,'D00201','P00000386');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (274,'2018-07-22','웅진고칼슘오렌지','매출',82,1800,147600,'D00172','P00000275');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (275,'2018-07-22',' 와일드(바닐라)','매출',61,500,30500,'D00055','P00000017');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (276,'2018-07-22','짱구는 못말려(딸기)','매출',61,1200,73200,'D00191','P00000300');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (277,'2018-07-25','마일드세븐라이트(갑)','매출',95,2500,237500,'D00149','P00000153');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (278,'2018-07-25','오다리','매출',70,600,42000,'D00133','P00000258');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (279,'2018-07-25','마일드세븐(갑)','매출',77,2500,192500,'D00114','P00000151');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (280,'2018-07-26','6000모자','매출',83,6000,498000,'D00056','P00000083');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (281,'2018-07-26','농협-한라봉(175)','매출',72,700,50400,'D00072','P00000116');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (282,'2018-07-28','얼음물','매출',79,1000,79000,'D00048','P00000247');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (283,'2018-07-28','던힐라이트(4월)','매출',91,2500,227500,'D00233','P00000127');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (302,'2018-08-08','버터구이오징어','매출',70,3000,210000,'D00161','P00000188');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (303,'2018-08-08','참오징어','매출',70,3000,210000,'D00006','P00000304');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (304,'2018-08-10','클라우드1mg','매출',82,3000,246000,'D00234','P00000346');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (305,'2018-08-11','휴대폰 119','매출',92,3000,276000,'D00184','P00000391');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (306,'2018-08-11','미니쉘(딸)','매출',85,600,51000,'D00100','P00000177');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (307,'2018-08-12','(신)바나나킥','매출',51,600,30600,'D00220','P00000038');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (308,'2018-08-12','농협-복분자(180)','매출',83,1000,83000,'D00057','P00000113');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (309,'2018-08-12','쵸코하임','매출',90,2000,180000,'D00230','P00000312');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (310,'2018-08-13','참쌀선과','매출',83,1800,149400,'D00034','P00000303');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (311,'2018-08-13','빅파이','매출',70,1800,126000,'D00003','P00000201');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (312,'2018-08-15','레쓰비마일드 175㎖캔','매출',59,600,35400,'D00164','P00000145');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (313,'2018-08-15','자일리톨1000껌','매출',57,1000,57000,'D00156','P00000288');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (314,'2018-08-15','허쉬너겟아몬드','매출',82,500,41000,'D00201','P00000380');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (315,'2018-08-15','포카칩','매출',90,2000,180000,'D00063','P00000366');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (316,'2018-08-15','코닥200/24(구)','매출',86,3000,258000,'D00029','P00000333');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (317,'2018-08-16','샴푸린스','매출',80,300,24000,'D00181','P00000214');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (318,'2018-08-17','선글라스20000','매출',75,20000,1500000,'D00019','P00000218');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (319,'2018-08-17','(신)코닥KL2CR5-1','매출',90,12000,1080000,'D00002','P00000047');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (320,'2018-08-17','1000 다이제초코','매출',93,1000,93000,'D00204','P00000049');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (321,'2018-08-18',' 위즐(캐러멜콘)','매출',53,5000,265000,'D00061','P00000020');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (322,'2018-08-18','마늘빵','매출',93,2500,232500,'D00225','P00000149');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (323,'2018-08-18','양파링','매출',94,700,65800,'D00135','P00000246');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (324,'2018-08-20','(신)허쉬드링크','매출',50,800,40000,'D00169','P00000048');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (325,'2018-08-21','오늘의차(옥수수)','매출',95,1500,142500,'D00230','P00000256');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (326,'2018-08-22','다이제샌드위치','매출',52,1000,52000,'D00185','P00000122');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (327,'2018-08-22',' 쿠키앤크림','매출',53,4000,212000,'D00051','P00000026');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (328,'2018-08-23','버지니아슈퍼슬림원','매출',83,2800,232400,'D00109','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (329,'2018-08-24','대추꿀차','매출',97,1200,116400,'D00084','P00000124');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (330,'2018-08-24','PREMIER','매출',59,2500,147500,'D00042','P00000089');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (331,'2018-08-24','농협-한라봉(180)','매출',61,1000,61000,'D00067','P00000117');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (332,'2018-08-24','블루마운틴','매출',84,1500,126000,'D00152','P00000198');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (333,'2018-08-25','헤이즐넛커피믹스','매출',97,1000,97000,'D00169','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (334,'2018-08-27','미녀는 석류를 좋아해','매출',95,1800,171000,'D00001','P00000175');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (335,'2018-08-27','말보로맨솔','매출',64,2500,160000,'D00143','P00000158');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (336,'2018-08-28','500눈초코송이','매출',54,500,27000,'D00182','P00000079');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (337,'2018-08-28','1500칙촉','매출',75,1500,112500,'D00002','P00000063');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (338,'2018-08-28','쿠우-포도','매출',59,1500,88500,'D00161','P00000343');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (339,'2018-09-01','(신)고구마깡','매출',66,600,39600,'D00147','P00000035');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (373,'2018-09-22','메이플스토리체리','매출',55,1800,99000,'D00069','P00000168');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (374,'2018-09-23',' 티     코','매출',85,4000,340000,'D00080','P00000029');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (375,'2018-09-23','캡슐엑스퍼트포도','매출',85,1000,85000,'D00115','P00000327');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (376,'2018-09-23','씨리얼','매출',85,700,59500,'D00162','P00000238');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (377,'2018-09-23','썬키스트레몬에이드240','매출',50,800,40000,'D00015','P00000237');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (378,'2018-09-23','포도.배코코 240㎖캔','매출',83,1000,83000,'D00088','P00000364');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (379,'2018-09-24','유자차','매출',89,1500,133500,'D00123','P00000278');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (380,'2018-09-25','(신)고구마깡','매출',72,600,43200,'D00168','P00000035');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (381,'2018-09-25','허쉬너겟아몬드','매출',60,500,30000,'D00123','P00000380');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (382,'2018-09-25','고구마형과자','매출',97,1500,145500,'D00081','P00000095');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (383,'2018-09-25','캡슐엑스퍼트포도','매출',72,1000,72000,'D00176','P00000327');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (384,'2018-09-26','도레미미니초콜렛','매출',95,1200,114000,'D00046','P00000135');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (385,'2018-09-27','조미쥐지포','매출',96,2500,240000,'D00224','P00000293');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (386,'2018-09-27','따봉오렌지캔','매출',90,800,72000,'D00067','P00000139');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (387,'2018-09-28','천하장사(소)','매출',93,500,46500,'D00062','P00000306');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (388,'2018-09-28','던힐(맨솔)','매출',53,2500,132500,'D00038','P00000126');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (389,'2018-09-28','요플레(홈)','매출',86,1500,129000,'D00033','P00000270');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (390,'2018-09-28','디지털CRV3','매출',57,18000,1026000,'D00122','P00000138');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (391,'2018-09-28','아미노업제로','매출',94,800,75200,'D00209','P00000240');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (392,'2018-10-01','고구마깡','매출',99,500,49500,'D00102','P00000094');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (393,'2018-10-01','뻥튀기','매출',96,1200,115200,'D00210','P00000205');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (394,'2018-10-02','불고기맛한마리오징어','매출',97,3000,291000,'D00044','P00000196');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (395,'2018-10-03','구름위에-대날','매출',57,5000,285000,'D00105','P00000099');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (396,'2018-10-03','700 다이제비스킷','매출',66,700,46200,'D00199','P00000087');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (397,'2018-10-03','신생녹차','매출',79,1300,102700,'D00069','P00000232');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (398,'2018-10-04','귀마개','매출',95,3000,285000,'D00002','P00000105');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (399,'2018-10-04','코닥KCR2-1','매출',51,7000,357000,'D00182','P00000335');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (400,'2018-10-05','오늘의차(혼합)','매출',82,1500,123000,'D00236','P00000257');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (401,'2018-10-05','던힐라이트-2','매출',62,2500,155000,'D00091','P00000128');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (402,'2018-10-06','농협-복분자(175)','매출',63,700,44100,'D00005','P00000112');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (403,'2018-10-06','제주감귤180','매출',55,1000,55000,'D00182','P00000292');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (440,'2018-11-08','솔의 눈 240㎖캔','매출',50,1000,50000,'D00154','P00000224');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (441,'2018-11-08','구이쥐치포','매출',70,1500,105000,'D00057','P00000102');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (442,'2018-11-09','휴대폰 119','매출',59,3000,177000,'D00111','P00000391');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (443,'2018-11-10','홈런볼초코(소)','매출',50,1000,50000,'D00233','P00000383');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (444,'2018-11-11','오란씨포도','매출',90,800,72000,'D00021','P00000264');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (445,'2018-11-13','자일리톨휘바','매출',75,5000,375000,'D00141','P00000290');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (446,'2018-11-13','1000도도한나초검은깨','매출',77,1000,77000,'D00155','P00000050');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (447,'2018-11-14','컵라면 대','매출',81,1500,121500,'D00075','P00000329');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (448,'2018-11-15','(신)구이쥐치포','매출',80,1500,120000,'D00077','P00000036');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (449,'2018-11-17','캡슐엑스퍼트사과','매출',97,1000,97000,'D00042','P00000326');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (450,'2018-11-17','네스티','매출',100,1500,150000,'D00028','P00000110');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (451,'2018-11-17','솔잎꿀차','매출',55,1200,66000,'D00196','P00000225');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (452,'2018-11-20','후지CN120','매출',82,2500,205000,'D00046','P00000390');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (453,'2018-11-20','생녹차(패트)','매출',62,1300,80600,'D00001','P00000212');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (454,'2018-11-20','(신)알새우칩','매출',100,600,60000,'D00223','P00000043');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (455,'2018-11-20','카푸치노','매출',62,1500,93000,'D00032','P00000321');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (456,'2018-11-21','초코송이','매출',67,500,33500,'D00141','P00000308');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (457,'2018-11-23',' 팥 빙 수','매출',73,1500,109500,'D00006','P00000030');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (458,'2018-11-23','카페카프치노컵','매출',57,1500,85500,'D00158','P00000320');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (459,'2018-11-23','버지니아울트라','매출',93,2800,260400,'D00136','P00000187');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (460,'2018-11-23','(신)구이쥐치포','매출',93,1500,139500,'D00117','P00000036');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (461,'2018-11-25','본드','매출',95,1000,95000,'D00077','P00000194');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (462,'2018-11-28','미녀는 석류를 좋아해','매출',59,1800,106200,'D00140','P00000175');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (463,'2018-11-28','키세스','매출',78,1000,78000,'D00138','P00000347');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (464,'2018-12-01','우산-자동','매출',68,15000,1020000,'D00160','P00000274');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (465,'2018-12-02','1500더블후레쉬자몽','매출',74,1500,111000,'D00045','P00000061');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (466,'2018-12-02','마일드세븐원','매출',86,2500,215000,'D00229','P00000155');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (467,'2018-12-04','비타 파워','매출',55,1200,66000,'D00106','P00000199');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (468,'2018-12-04','편지봉투(100매)','매출',54,1500,81000,'D00131','P00000363');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (469,'2018-12-08','버터링','매출',85,1000,85000,'D00105','P00000190');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (470,'2018-12-08','편지봉투(100매)','매출',87,1500,130500,'D00020','P00000363');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (471,'2018-12-09','쌀과자','매출',93,1200,111600,'D00165','P00000234');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (472,'2018-12-09','코사우유500','매출',88,1000,88000,'D00087','P00000338');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (473,'2018-12-09','5000화투','매출',92,5000,460000,'D00172','P00000077');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (474,'2018-12-11','허쉬너겟아몬드','매출',77,500,38500,'D00121','P00000380');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (475,'2018-12-11','못말리는신짱','매출',89,1500,133500,'D00147','P00000171');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (476,'2018-12-13','나쵸-살사','매출',77,1000,77000,'D00168','P00000109');
REM INSERTING into MYMEM.TBL_MYTABLE
SET DEFINE OFF;
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (1,'홍길동','010-2487-9856',84,89);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (2,'이몽룡','010-3487-9856',56,89);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (3,'성춘향','010-4487-9856',83,72);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (4,'이성계','010-5487-9856',76,69);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (5,'이방원','010-6487-9856',97,52);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (6,'장보고','010-7487-9856',82,70);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (7,'임꺽정','010-8487-9856',74,76);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (8,'이순신','010-9487-9856',96,87);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (9,'전몽준','010-1487-9856',73,81);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (10,'안중근','010-1087-9856',53,55);
REM INSERTING into MYMEM.TBL_PRIMARY
SET DEFINE OFF;
Insert into MYMEM.TBL_PRIMARY (P_ID,P_NAME,P_TEL) values (0,'홍길동','0001');
Insert into MYMEM.TBL_PRIMARY (P_ID,P_NAME,P_TEL) values (49783,'성춘향','0002');
Insert into MYMEM.TBL_PRIMARY (P_ID,P_NAME,P_TEL) values (44523,'성춘향','0002');
REM INSERTING into MYMEM.TBL_PRODUCT
SET DEFINE OFF;
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000001',' 고 드 름(블루)',384,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000002',' 더위사냥(오렌지)',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000003',' 델리어트',2745,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000004',' 링 키 바',1647,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000005',' 마제스티(호두)',2196,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000006',' 메 타 콘(딸기)',549,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000007',' 빙고(밀크맛)',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000008',' 빙하시대(커피)',384,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000009',' 빙하시대(파인)',384,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000010',' 설레임커피쉐이크',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000011',' 셀렉션',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000012',' 스크류',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000013',' 에너보틀',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000014',' 옥동자(초코)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000015',' 와(바닐라&커피)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000016',' 와(바닐라)',524,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000017',' 와일드(바닐라)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000018',' 월드콘(바닐라)',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000019',' 위    즐(커피)',2745,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000020',' 위즐(캐러멜콘)',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000021',' 조안나바',1647,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000022',' 주물러(개구리)',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000023',' 주물러(콜.배)',274,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000024',' 카페프레소',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000025',' 커피동자',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000026',' 쿠키앤크림',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000027',' 클래스(딸기)',2196,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000028',' 투게더(大)',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000029',' 티     코',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000030',' 팥 빙 수',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000031',' 프리마또',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000032',' 한 떨 기',549,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000033','(신)ABC쵸콜렛',887,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000034','(신)k400/36',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000035','(신)고구마깡',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000036','(신)구이쥐치포',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000037','(신)땅콩꽈배기',497,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000038','(신)바나나킥',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000039','(신)새우깡',411,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000040','(신)새우탕큰사발',null,900);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000041','(신)신라면큰사발',532,900);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000042','(신)알새우칠리새우맛',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000043','(신)알새우칩',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000044','(신)양파링',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000045','(신)자갈치',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000046','(신)쫄병스낵',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000047','(신)코닥KL2CR5-1',null,12000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000048','(신)허쉬드링크',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000049','1000 다이제초코',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000050','1000도도한나초검은깨',591,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000051','1000바',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000052','1000썬칩',591,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000053','1000오잉',650,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000054','1000이구동성베이컨',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000055','1000초코칩쿠키',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000056','1000해바라기초코볼',591,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000057','1200 ABC쵸코',709,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000058','13000모자',5327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000059','1500 몽셀',976,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000060','1500 쵸코칩',976,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000061','1500더블후레쉬자몽',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000062','1500애니타임',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000063','1500칙촉',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000064','16000모자',6557,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000065','17차',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000066','1800오뜨옐로우',1172,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000067','1800후레쉬베리',1121,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000068','2%부족할때DBH복숭아 500㎖펫',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000069','2%부족할때pet(레몬맛)',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000070','2000목캔디',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000071','22000모자',9016,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000072','3000드림카카오56%',1775,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000073','500 고래밥볶음양념',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000074','500 돌아온왕꿈틀이',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000075','500 투유',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000076','5000모자',2049,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000077','5000화투',860,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000078','500가나',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000079','500눈초코송이',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000080','500목캔디',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000081','500바',327,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000082','500투니스매콤',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000083','6000모자',null,6000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000084','6000카드',2049,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000085','7+8칫솔',0,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000086','700 고소미',436,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000087','700 다이제비스킷',436,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000088','8000모자',null,8000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000089','PREMIER',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000090','m&m''s 피넛페크백',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000091','건면세대-김치',651,1100);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000092','건면세대-소고기',651,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000093','계란(3개입)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000094','고구마깡',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000095','고구마형과자',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000096','고래밥',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000097','광동위생천',221,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000098','광동진광탕',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000099','구름위에-대날',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000100','구름위에-대일',2622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000101','구름위에-중날',null,4500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000102','구이쥐치포',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000103','국희땅콩샌드',1180,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000104','귀다리벙거지',6557,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000105','귀마개',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000106','김치사발면',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000107','깜두',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000108','꼬깔(고소)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000109','나쵸-살사',622,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000110','네스티',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000111','노래테이프',1147,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000112','농협-복분자(175)',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000113','농협-복분자(180)',655,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000114','농협-알로에(180)',573,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000115','농협-제주감귤(180)',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000116','농협-한라봉(175)',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000117','농협-한라봉(180)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000118','농협-홍삼(180)',573,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000119','누드빼빼로',413,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000120','뉴크리넥스 수앤수 캡60매',2407,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000121','다원녹차',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000122','다이제샌드위치',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000123','대일밴드',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000124','대추꿀차',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000125','더원(0.5)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000126','던힐(맨솔)',1844,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000127','던힐라이트(4월)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000128','던힐라이트-2',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000129','던힐발란스',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000130','던힐프로스트',1434,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000131','데미소다그레이프캔',341,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000132','데미소다레몬캔',341,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000133','데미소다애플패트',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000134','데미소다오렌지패트',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000135','도레미미니초콜렛',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000136','디스(갑)',1475,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000137','디스플러스(갑)',1549,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000138','디지털CRV3',null,18000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000139','따봉오렌지캔',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000140','딸기맛우유',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000141','땅콩강정',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000142','땅콩그래',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000143','라면',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000144','라이코펜새우깡',515,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000145','레쓰비마일드 175㎖캔',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000146','레종블루',0,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000147','로얄디',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000148','로크럭스',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000149','마늘빵',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000150','마이쮸(딸기)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000151','마일드세븐(갑)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000152','마일드세븐[박스]',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000153','마일드세븐라이트(갑)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000154','마일드세븐슈퍼라이트',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000155','마일드세븐원',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000156','마일드쎄븐(LSS)ONE',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000157','말보로라이트',1844,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000158','말보로맨솔',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000159','말보로미디엄',1844,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000160','말보로필터플러스',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000161','매일검은콩',409,900);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000162','매직스-중날',2704,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000163','맥스웰싱글카페캔',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000164','맥스웰카푸치노캔',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000165','맥심 오리지날 20입',1803,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000166','멀티비타 병',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000167','멀티비타 캔',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000168','메이플스토리체리',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000169','멸균딸기',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000170','목장갑',409,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000171','못말리는신짱',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000172','무농약초코칩쿠키',1639,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000173','무농약현미건빵',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000174','무농약현미칩쿠키',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000175','미녀는 석류를 좋아해',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000176','미녀는 석류를 좋아해180㎖캔',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000177','미니쉘(딸)',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000178','미니폴',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000179','미닛메이드알로에플러스',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000180','바로까페헤이즐넛',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000181','바로카페8804751701023',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000182','방한모',7377,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000183','백옥콘',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000184','밴드스타킹',647,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000185','버지니아슈퍼슬림',2065,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000186','버지니아슈퍼슬림원',2065,2800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000187','버지니아울트라',null,2800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000188','버터구이오징어',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000189','버터구이진미45g',896,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000190','버터링',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000191','버터와플',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000192','보그aromeI',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000193','보솜이대형',901,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000194','본드',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000195','봉지커피',8240,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000196','불고기맛한마리오징어',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000197','블랙빈테라피',341,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000198','블루마운틴',491,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000199','비타 파워',204,950);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000200','비타파워 210㎖병(박스)',null,1300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000201','빅파이',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000202','빠다코코낫',413,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000203','빵또아',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000204','뻥소리',1639,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000205','뻥튀기',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000206','뽀또치즈',1967,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000207','산소수',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000208','삼각대 중',13934,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000209','삼다수녹차',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000210','새우깡',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000211','새우탕면',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000212','생녹차(패트)',491,1300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000213','생수',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000214','샴푸린스',null,300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000215','석기공룡알',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000216','석류사랑초(델몬트)',null,1100);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000217','선글라스10000',1885,10000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000218','선글라스20000',null,20000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000219','선글라스25000',1885,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000220','셀렘원',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000221','소라',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000222','소라형과자',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000223','소보로',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000224','솔의 눈 240㎖캔',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000225','솔잎꿀차',491,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000226','순두유견과',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000227','순두유녹차',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000228','스위스헤이즐넛초콜릿',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000229','스윙칩',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000230','스타벅스 프라프치노커피',1803,3800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000231','신라면큰사발면',555,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000232','신생녹차',null,1300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000233','심플(갑)',1696,2300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000234','쌀과자',491,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000235','썬넛트멸치아몬드 35g',737,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000236','썬크스트오렌지에이드350',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000237','썬키스트레몬에이드240',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000238','씨리얼',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000239','아몬드',586,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000240','아미노업제로',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000241','아이셔마법천자문',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000242','알새우칩',322,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000243','암바사캔',352,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000244','애니데이일반24',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000245','야채크래커',413,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000246','양파링',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000247','얼음물',409,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000248','엄마손파이',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000249','에쎄(순)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000250','에쎄맨솔',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000251','에쎄원',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000252','에이스',1311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000253','엔츠',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000254','여행셋트',1639,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000255','영지골드',180,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000256','오늘의차(옥수수)',614,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000257','오늘의차(혼합)',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000258','오다리',286,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000259','오데뜨',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000260','오라떼크림소다',436.5,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000261','오란씨-오렌지맛',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000262','오란씨-파인',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000263','오란씨소다 복숭아캔',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000264','오란씨포도',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000265','오리온웨하스 딸기맛',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000266','오리온초코칩쿠키',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000267','오징어 버터구이 40g',919,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000268','옥수수수염차',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000269','왕고래밥',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000270','요플레(홈)',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000271','우비-아동',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000272','우산(소)-고급',null,10000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000273','우산-7000',1885,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000274','우산-자동',null,15000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000275','웅진고칼슘오렌지',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000276','워싱캐쥬얼A',4918,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000277','유자꿀차',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000278','유자차',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000279','육개장사발면',426,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000280','이온에이드캔',344,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000281','인디고',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000282','인디언밥',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000283','일회용밴드',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000284','일회용휴지',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000285','입안가득초코칩',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000286','자기야홍삼을왜마셔?',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000287','자유시간',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000288','자일리톨1000껌',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000289','자일리톨3+',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000290','자일리톨휘바',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000291','제이(j)',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000292','제주감귤180',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000293','조미쥐지포',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000294','조청유과(대)',1465,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000295','좋은느낌 울날중형18P',null,5500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000296','좋은느낌울날소형18P',null,5500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000297','쥬시후레쉬묶음',737,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000298','즉석  P700',9016,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000299','즉석 인스탁스',7377,13000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000300','짱구는 못말려(딸기)',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000301','참ing(버터레몬)',983,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000302','참ing(크리미버터)',983,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000303','참쌀선과',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000304','참오징어',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000305','참이슬(포켓용)PET 200ML',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000306','천하장사(소)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000307','초록매실 500ML',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000308','초코송이',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000309','초코틴틴',655,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000310','초코픽',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000311','촉촉한초코칩',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000312','쵸코하임',1311,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000313','칩스인컵',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000314','칩포테토짭짤(대)',586,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000315','칫솔',409,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000316','카스타드',1183,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000317','카카오76%',622,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000318','카페라떼캔(모카)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000319','카페모카컵',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000320','카페카프치노컵',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000321','카푸치노',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000322','카푸치노병',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000323','카푸치노컵',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000324','카프리선(오렌지)',286,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000325','칸타타(원두커피)',819,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000326','캡슐엑스퍼트사과',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000327','캡슐엑스퍼트포도',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000328','커피나',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000329','컵라면 대',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000330','컵라면 소',819,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000331','코닥 알카 AA',409,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000332','코닥100/36',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000333','코닥200/24(구)',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000334','코닥K123LA-1(신)',2459,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000335','코닥KCR2-1',null,7000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000336','코닥KL2CR5-1',null,12000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000337','코닥일회용(유)',null,12000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000338','코사우유500',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000339','코카콜라 1.5PET',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000340','코카콜라500ml',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000341','코코팜 포도',368,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000342','콜드 포도240',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000343','쿠우-포도',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000344','큰집식혜',272,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000345','클라우드',2213,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000346','클라우드1mg',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000347','키세스',null,1666.66666666666);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000348','키세스아몬드',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000349','키세스쿠키앤',1758,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000350','킨사이다',450,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000351','킨사이다제로',368,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000352','타임라이트',null,2300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000353','텐더롤',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000354','통크',436,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000355','투니스',0,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000356','투인러브 모카(커피)',587,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000357','트윅스싱글',524,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000358','판타롱스타킹',512,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000359','팔리아멘트원',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000360','팬시라이너',1721,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000361','페레로로셰',5778,9000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000362','펩시콜라 500㎖펫',450,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000363','편지봉투(100매)',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000364','포도.배코코 240㎖캔',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000365','포천쌀막걸리 1.2L',901,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000366','포카칩',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000367','프렌치카페카라멜마끼야또',901,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000368','프론티어',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000369','프리모',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000370','프리미엄 토마토',450,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000371','프리클스오리지널',1803,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000372','프링글스오리지널소',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000373','하기스매직팬티특대(여)',1704,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000374','하늘보리',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000375','하이콜라겐',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000376','하이트맥주캔',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000377','핫쵸코',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000378','해바라기쵸코볼',591,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000379','허밍타임멘솔',1696,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000380','허쉬너겟아몬드',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000381','헤이즐넛원두',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000382','헤이즐넛커피믹스',286,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000383','홈런볼초코(소)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000384','홍삼꿀',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000385','화이브미니병',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000386','화이트엔젤큐티',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000387','환타오렌지',622,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000388','환타오렌지캔',368,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000389','후레쉬믹스',573,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000390','후지CN120',1475,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000391','휴대폰 119',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000392','히야 오렌지 300㎖캐릭터펫',409,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000393','히야오렌지',null,1000);
REM INSERTING into MYMEM.TBL_SCORE
SET DEFINE OFF;
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (103,'과학',88,'S0001','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (178,'국어',67,'S0001','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (228,'수학',100,'S0001','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (379,'영어',100,'S0001','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (476,'미술',70,'S0001','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (532,'국사',91,'S0001','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (34,'과학',61,'S0002','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (56,'미술',58,'S0002','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (66,'수학',76,'S0002','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (214,'국사',63,'S0002','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (274,'영어',96,'S0002','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (573,'국어',84,'S0002','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (12,'미술',73,'S0003','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (40,'과학',84,'S0003','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (134,'영어',96,'S0003','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (156,'국어',85,'S0003','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (242,'수학',66,'S0003','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (352,'국사',59,'S0003','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (3,'국사',90,'S0004','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (290,'국어',95,'S0004','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (353,'수학',94,'S0004','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (380,'과학',56,'S0004','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (530,'영어',74,'S0004','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (544,'미술',82,'S0004','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (54,'과학',59,'S0005','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (175,'미술',54,'S0005','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (285,'국사',52,'S0005','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (472,'수학',99,'S0005','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (542,'국어',74,'S0005','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (563,'영어',76,'S0005','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (39,'수학',82,'S0006','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (171,'국사',76,'S0006','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (294,'영어',61,'S0006','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (347,'미술',68,'S0006','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (552,'과학',54,'S0006','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (598,'국어',72,'S0006','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (13,'과학',83,'S0007','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (148,'국사',69,'S0007','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (398,'국어',77,'S0007','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (415,'미술',75,'S0007','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (536,'수학',79,'S0007','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (548,'영어',95,'S0007','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (107,'과학',92,'S0008','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (207,'국어',91,'S0008','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (232,'영어',100,'S0008','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (261,'미술',67,'S0008','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (432,'수학',86,'S0008','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (451,'국사',54,'S0008','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (196,'영어',91,'S0009','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (238,'국어',91,'S0009','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (309,'수학',72,'S0009','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (323,'과학',56,'S0009','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (397,'미술',67,'S0009','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (458,'국사',53,'S0009','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (59,'영어',74,'S0010','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (262,'수학',64,'S0010','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (312,'과학',69,'S0010','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (337,'국사',52,'S0010','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (427,'미술',81,'S0010','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (579,'국어',85,'S0010','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (72,'과학',95,'S0011','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (176,'미술',97,'S0011','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (182,'영어',86,'S0011','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (248,'국어',56,'S0011','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (335,'수학',89,'S0011','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (392,'국사',79,'S0011','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (96,'국어',86,'S0012','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (272,'수학',67,'S0012','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (328,'국사',72,'S0012','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (428,'영어',81,'S0012','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (498,'과학',63,'S0012','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (517,'미술',95,'S0012','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (37,'수학',95,'S0013','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (151,'국어',64,'S0013','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (345,'영어',90,'S0013','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (369,'국사',68,'S0013','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (393,'과학',90,'S0013','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (399,'미술',59,'S0013','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (15,'영어',81,'S0014','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (277,'미술',82,'S0014','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (289,'과학',97,'S0014','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (306,'국사',98,'S0014','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (401,'수학',56,'S0014','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (471,'국어',71,'S0014','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (1,'과학',86,'S0015','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (95,'국사',70,'S0015','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (147,'수학',99,'S0015','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (381,'영어',95,'S0015','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (396,'미술',70,'S0015','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (516,'국어',82,'S0015','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (183,'수학',51,'S0016','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (190,'국사',77,'S0016','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (237,'과학',97,'S0016','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (404,'국어',51,'S0016','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (443,'미술',100,'S0016','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (513,'영어',56,'S0016','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (80,'국사',59,'S0017','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (105,'영어',71,'S0017','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (141,'수학',65,'S0017','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (194,'미술',74,'S0017','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (316,'국어',57,'S0017','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (430,'과학',72,'S0017','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (44,'미술',61,'S0018','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (90,'영어',96,'S0018','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (122,'수학',55,'S0018','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (343,'과학',83,'S0018','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (440,'국어',76,'S0018','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (510,'국사',98,'S0018','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (117,'영어',99,'S0019','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (189,'수학',52,'S0019','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (286,'미술',73,'S0019','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (505,'국사',59,'S0019','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (521,'과학',95,'S0019','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (577,'국어',84,'S0019','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (210,'영어',75,'S0020','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (255,'수학',91,'S0020','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (336,'국사',58,'S0020','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (364,'미술',81,'S0020','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (416,'과학',59,'S0020','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (433,'국어',52,'S0020','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (100,'영어',58,'S0021','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (106,'과학',100,'S0021','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (325,'국어',69,'S0021','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (366,'미술',89,'S0021','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (492,'국사',91,'S0021','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (511,'수학',73,'S0021','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (197,'미술',59,'S0022','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (243,'국사',60,'S0022','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (322,'영어',65,'S0022','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (326,'수학',77,'S0022','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (527,'국어',89,'S0022','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (562,'과학',90,'S0022','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (7,'과학',55,'S0023','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (139,'영어',83,'S0023','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (142,'국사',67,'S0023','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (270,'미술',51,'S0023','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (515,'수학',95,'S0023','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (42,'수학',56,'S0024','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (160,'미술',81,'S0024','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (177,'국어',73,'S0024','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (342,'국사',66,'S0024','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (22,'수학',65,'S0025','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (130,'국어',68,'S0025','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (372,'과학',61,'S0025','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (465,'영어',87,'S0025','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (49,'과학',75,'S0026','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (97,'미술',92,'S0026','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (113,'수학',70,'S0026','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (531,'영어',52,'S0026','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (4,'국어',52,'S0027','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (386,'과학',60,'S0027','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (402,'미술',90,'S0027','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (538,'국사',66,'S0027','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (98,'국어',59,'S0028','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (332,'수학',89,'S0028','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (371,'국사',67,'S0028','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (464,'미술',68,'S0028','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (116,'국사',83,'S0029','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (165,'국어',51,'S0029','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (236,'미술',57,'S0029','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (481,'영어',66,'S0029','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (172,'국사',65,'S0030','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (198,'수학',66,'S0030','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (420,'미술',94,'S0030','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (537,'영어',61,'S0030','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (557,'국어',76,'S0030','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (186,'영어',95,'S0031','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (221,'과학',83,'S0031','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (499,'미술',56,'S0031','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (501,'국사',83,'S0031','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (304,'과학',100,'S0032','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (315,'수학',55,'S0032','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (412,'국사',91,'S0032','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (450,'국어',77,'S0032','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (188,'과학',93,'S0033','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (200,'국어',72,'S0033','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (565,'영어',63,'S0033','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (591,'미술',50,'S0033','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (17,'과학',81,'S0034','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (193,'국사',88,'S0034','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (258,'수학',94,'S0034','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (376,'미술',71,'S0034','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (57,'미술',69,'S0035','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (264,'영어',85,'S0035','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (320,'국사',81,'S0035','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (528,'수학',75,'S0035','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (9,'과학',81,'S0036','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (32,'영어',80,'S0036','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (152,'수학',54,'S0036','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (509,'국사',58,'S0036','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (48,'영어',62,'S0037','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (69,'과학',70,'S0037','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (184,'국사',74,'S0037','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (469,'수학',73,'S0037','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (76,'영어',88,'S0038','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (191,'국어',66,'S0038','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (295,'수학',73,'S0038','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (560,'과학',95,'S0038','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (70,'수학',78,'S0039','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (168,'국사',56,'S0039','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (442,'미술',73,'S0039','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (491,'국어',51,'S0039','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (93,'국사',57,'S0040','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (108,'미술',56,'S0040','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (163,'영어',77,'S0040','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (357,'국어',55,'S0040','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (18,'국어',59,'S0041','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (73,'영어',53,'S0041','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (374,'국사',57,'S0041','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (558,'미술',97,'S0041','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (77,'영어',82,'S0042','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (120,'과학',95,'S0042','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (149,'국어',61,'S0042','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (455,'수학',91,'S0042','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (496,'국사',98,'S0042','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (209,'미술',63,'S0043','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (410,'국사',72,'S0043','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (529,'수학',76,'S0043','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (576,'국어',87,'S0043','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (121,'미술',75,'S0044','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (140,'국어',72,'S0044','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (284,'영어',94,'S0044','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (424,'과학',90,'S0044','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (219,'수학',80,'S0045','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (426,'국사',57,'S0045','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (480,'미술',87,'S0045','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (504,'영어',99,'S0045','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (257,'영어',52,'S0046','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (378,'국어',62,'S0046','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (585,'미술',78,'S0046','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (592,'수학',58,'S0046','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (281,'영어',75,'S0047','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (339,'국사',72,'S0047','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (417,'국어',50,'S0047','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (518,'과학',82,'S0047','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (5,'과학',60,'S0048','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (170,'미술',54,'S0048','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (407,'수학',64,'S0048','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (567,'국어',96,'S0048','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (27,'국어',90,'S0049','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (132,'수학',74,'S0049','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (296,'국사',66,'S0049','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (553,'영어',55,'S0049','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (203,'국어',58,'S0050','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (260,'국사',83,'S0050','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (305,'수학',89,'S0050','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (484,'영어',72,'S0050','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (166,'국사',59,'S0051','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (362,'국어',59,'S0051','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (425,'미술',80,'S0051','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (434,'영어',85,'S0051','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (593,'수학',89,'S0051','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (61,'과학',81,'S0052','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (91,'국사',68,'S0052','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (135,'영어',63,'S0052','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (384,'국어',93,'S0052','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (444,'수학',85,'S0052','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (506,'미술',79,'S0052','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (204,'국사',70,'S0053','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (249,'영어',62,'S0053','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (276,'과학',63,'S0053','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (279,'수학',86,'S0053','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (299,'미술',99,'S0053','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (502,'국어',99,'S0053','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (14,'국어',58,'S0054','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (101,'수학',72,'S0054','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (216,'미술',95,'S0054','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (409,'국사',61,'S0054','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (421,'과학',69,'S0054','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (561,'영어',70,'S0054','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (174,'국어',81,'S0055','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (288,'국사',90,'S0055','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (341,'과학',53,'S0055','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (382,'미술',86,'S0055','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (468,'수학',66,'S0055','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (584,'영어',77,'S0055','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (118,'국어',54,'S0056','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (131,'국사',99,'S0056','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (169,'영어',94,'S0056','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (235,'미술',68,'S0056','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (292,'수학',77,'S0056','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (367,'과학',100,'S0056','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (159,'영어',57,'S0057','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (246,'국어',92,'S0057','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (324,'과학',97,'S0057','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (437,'수학',64,'S0057','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (445,'미술',60,'S0057','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (566,'국사',88,'S0057','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (88,'미술',87,'S0058','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (133,'국어',92,'S0058','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (301,'수학',66,'S0058','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (456,'국사',89,'S0058','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (474,'영어',77,'S0058','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (508,'과학',97,'S0058','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (2,'수학',53,'S0059','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (28,'국사',89,'S0059','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (212,'과학',66,'S0059','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (375,'국어',54,'S0059','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (385,'영어',54,'S0059','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (459,'미술',69,'S0059','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (29,'영어',87,'S0060','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (205,'미술',70,'S0060','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (223,'과학',58,'S0060','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (446,'국어',76,'S0060','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (555,'국사',100,'S0060','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (600,'수학',86,'S0060','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (41,'국어',57,'S0061','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (154,'과학',87,'S0061','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (482,'수학',51,'S0061','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (523,'미술',52,'S0061','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (535,'국사',93,'S0061','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (547,'영어',54,'S0061','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (94,'수학',50,'S0062','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (220,'미술',96,'S0062','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (319,'영어',80,'S0062','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (405,'과학',76,'S0062','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (507,'국어',55,'S0062','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (522,'국사',82,'S0062','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (65,'국사',75,'S0063','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (126,'미술',65,'S0063','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (213,'과학',96,'S0063','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (333,'영어',91,'S0063','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (495,'수학',96,'S0063','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (582,'국어',83,'S0063','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (82,'영어',55,'S0064','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (115,'국어',73,'S0064','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (167,'국사',95,'S0064','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (267,'수학',74,'S0064','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (313,'미술',70,'S0064','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (485,'과학',59,'S0064','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (50,'미술',68,'S0065','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (74,'수학',87,'S0065','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (146,'영어',61,'S0065','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (252,'과학',98,'S0065','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (387,'국사',58,'S0065','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (575,'국어',69,'S0065','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (67,'국사',99,'S0066','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (327,'국어',62,'S0066','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (351,'과학',72,'S0066','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (448,'수학',95,'S0066','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (478,'영어',80,'S0066','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (494,'미술',81,'S0066','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (137,'영어',74,'S0067','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (231,'국어',58,'S0067','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (239,'미술',82,'S0067','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (308,'수학',87,'S0067','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (435,'과학',91,'S0067','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (559,'국사',50,'S0067','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (51,'수학',97,'S0068','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (143,'미술',90,'S0068','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (293,'국사',51,'S0068','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (365,'과학',68,'S0068','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (533,'영어',75,'S0068','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (581,'국어',99,'S0068','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (109,'국어',94,'S0069','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (161,'미술',90,'S0069','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (317,'국사',59,'S0069','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (370,'영어',98,'S0069','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (439,'수학',71,'S0069','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (453,'과학',56,'S0069','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (127,'과학',89,'S0070','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (179,'국사',84,'S0070','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (227,'수학',85,'S0070','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (350,'영어',83,'S0070','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (589,'국어',89,'S0070','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (594,'미술',79,'S0070','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (136,'수학',98,'S0071','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (247,'과학',51,'S0071','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (303,'국사',67,'S0071','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (429,'미술',54,'S0071','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (463,'국어',71,'S0071','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (597,'영어',81,'S0071','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (457,'과학',58,'S0072','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (479,'미술',74,'S0072','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (490,'영어',64,'S0072','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (545,'수학',52,'S0072','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (569,'국사',82,'S0072','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (596,'국어',61,'S0072','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (229,'국어',69,'S0073','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (348,'수학',66,'S0073','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (431,'미술',87,'S0073','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (441,'과학',93,'S0073','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (475,'영어',56,'S0073','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (534,'국사',62,'S0073','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (225,'미술',82,'S0074','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (233,'영어',89,'S0074','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (360,'과학',85,'S0074','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (413,'수학',71,'S0074','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (520,'국어',58,'S0074','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (123,'국사',54,'S0075','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (263,'영어',66,'S0075','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (414,'과학',73,'S0075','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (587,'수학',95,'S0075','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (125,'국사',84,'S0076','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (129,'미술',69,'S0076','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (187,'수학',54,'S0076','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (318,'국어',56,'S0076','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (52,'영어',100,'S0077','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (241,'국어',68,'S0077','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (266,'과학',58,'S0077','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (512,'국사',90,'S0077','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (43,'국사',95,'S0078','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (153,'수학',62,'S0078','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (253,'국어',73,'S0078','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (487,'영어',100,'S0078','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (23,'국사',58,'S0079','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (138,'영어',94,'S0079','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (334,'수학',50,'S0079','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (568,'미술',53,'S0079','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (144,'미술',73,'S0080','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (280,'국어',66,'S0080','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (541,'국사',63,'S0080','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (549,'수학',61,'S0080','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (8,'과학',90,'S0081','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (16,'미술',68,'S0081','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (206,'국어',63,'S0081','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (462,'영어',82,'S0081','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (6,'과학',50,'S0082','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (180,'수학',63,'S0082','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (224,'국어',83,'S0082','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (564,'미술',78,'S0082','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (35,'과학',71,'S0083','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (244,'수학',86,'S0083','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (291,'미술',99,'S0083','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (408,'영어',69,'S0083','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (590,'국어',95,'S0083','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (436,'과학',96,'S0084','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (452,'미술',100,'S0084','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (525,'국사',83,'S0084','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (543,'수학',70,'S0084','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (45,'미술',87,'S0085','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (81,'수학',83,'S0085','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (349,'과학',63,'S0085','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (514,'국어',72,'S0085','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (58,'국어',65,'S0086','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (64,'수학',70,'S0086','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (99,'국사',96,'S0086','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (419,'미술',50,'S0086','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (36,'국사',76,'S0087','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (269,'과학',70,'S0087','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (580,'영어',57,'S0087','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (588,'미술',50,'S0087','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (85,'영어',94,'S0088','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (128,'수학',72,'S0088','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (438,'국어',90,'S0088','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (572,'과학',96,'S0088','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (173,'국사',57,'S0089','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (218,'수학',96,'S0089','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (340,'국어',67,'S0089','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (550,'미술',76,'S0089','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (26,'국사',65,'S0090','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (111,'미술',94,'S0090','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (208,'수학',91,'S0090','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (411,'영어',54,'S0090','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (145,'국어',71,'S0091','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (321,'영어',99,'S0091','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (391,'국사',62,'S0091','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (578,'미술',69,'S0091','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (46,'수학',66,'S0092','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (164,'국어',59,'S0092','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (283,'국사',99,'S0092','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (586,'과학',81,'S0092','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (62,'영어',89,'S0093','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (222,'국어',79,'S0093','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (470,'국사',92,'S0093','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (473,'미술',91,'S0093','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (25,'수학',85,'S0094','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (185,'영어',85,'S0094','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (256,'국어',64,'S0094','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (346,'과학',72,'S0094','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (24,'수학',68,'S0095','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (314,'국사',84,'S0095','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (395,'영어',52,'S0095','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (423,'미술',75,'S0095','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (11,'국어',65,'S0096','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (112,'수학',80,'S0096','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (298,'미술',76,'S0096','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (383,'영어',51,'S0096','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (454,'과학',76,'S0096','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (271,'국사',63,'S0097','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (300,'수학',71,'S0097','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (361,'국어',82,'S0097','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (390,'과학',51,'S0097','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (158,'수학',61,'S0098','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (245,'미술',92,'S0098','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (418,'국사',77,'S0098','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (556,'영어',87,'S0098','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (60,'영어',80,'S0099','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (226,'국어',85,'S0099','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (368,'미술',71,'S0099','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (477,'과학',97,'S0099','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (329,'국어',51,'S0100','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (344,'수학',62,'S0100','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (489,'미술',96,'S0100','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (571,'국사',82,'S0100','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (388,'국어',50,'S0023','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (86,'영어',74,'S0024','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (250,'과학',65,'S0024','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (84,'국사',80,'S0025','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (400,'미술',93,'S0025','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (71,'국어',73,'S0026','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (389,'국사',59,'S0026','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (217,'영어',59,'S0027','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (583,'수학',64,'S0027','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (338,'영어',73,'S0028','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (488,'과학',90,'S0028','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (211,'과학',67,'S0029','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (519,'수학',96,'S0029','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (358,'과학',70,'S0030','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (155,'국어',51,'S0031','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (497,'수학',60,'S0031','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (114,'미술',60,'S0032','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (394,'영어',69,'S0032','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (162,'국사',74,'S0033','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (503,'수학',93,'S0033','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (79,'영어',61,'S0034','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (310,'국어',52,'S0034','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (251,'과학',79,'S0035','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (461,'국어',84,'S0035','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (19,'미술',52,'S0036','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (466,'국어',86,'S0036','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (68,'미술',51,'S0037','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (422,'국어',81,'S0037','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (78,'국사',61,'S0038','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (539,'미술',87,'S0038','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (273,'영어',53,'S0039','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (551,'과학',52,'S0039','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (157,'수학',75,'S0040','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (460,'과학',54,'S0040','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (230,'수학',100,'S0041','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (595,'과학',57,'S0041','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (192,'미술',87,'S0042','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (38,'영어',70,'S0043','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (467,'과학',81,'S0043','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (47,'수학',60,'S0044','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (181,'국사',52,'S0044','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (201,'국어',93,'S0045','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (447,'과학',92,'S0045','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (63,'과학',78,'S0046','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (540,'국사',100,'S0046','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (297,'수학',80,'S0047','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (500,'미술',58,'S0047','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (30,'영어',95,'S0048','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (546,'국사',63,'S0048','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (89,'과학',62,'S0049','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (406,'미술',62,'S0049','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (240,'과학',92,'S0050','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (355,'미술',79,'S0050','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (275,'과학',98,'S0051','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (373,'국사',57,'S0074','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (110,'미술',95,'S0075','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (359,'국어',72,'S0075','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (124,'영어',93,'S0076','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (202,'과학',64,'S0076','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (195,'수학',61,'S0077','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (403,'미술',77,'S0077','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (119,'과학',62,'S0078','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (254,'미술',54,'S0078','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (87,'국어',58,'S0079','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (524,'과학',75,'S0079','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (331,'영어',75,'S0080','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (554,'과학',54,'S0080','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (31,'수학',100,'S0081','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (574,'국사',98,'S0081','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (215,'국사',68,'S0082','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (570,'영어',83,'S0082','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (259,'국사',59,'S0083','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (268,'영어',58,'S0084','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (493,'국어',80,'S0084','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (21,'국사',65,'S0085','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (278,'영어',74,'S0085','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (33,'과학',72,'S0086','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (75,'영어',53,'S0086','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (20,'수학',74,'S0087','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (363,'국어',80,'S0087','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (53,'국사',96,'S0088','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (265,'미술',63,'S0088','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (10,'과학',54,'S0089','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (311,'영어',79,'S0089','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (92,'국어',91,'S0090','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (282,'과학',84,'S0090','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (307,'수학',100,'S0091','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (526,'과학',65,'S0091','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (150,'미술',50,'S0092','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (483,'영어',71,'S0092','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (104,'과학',89,'S0093','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (486,'수학',92,'S0093','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (199,'국사',63,'S0094','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (449,'미술',59,'S0094','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (356,'국어',72,'S0095','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (599,'과학',62,'S0095','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (234,'국사',76,'S0096','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (102,'영어',52,'S0097','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (330,'미술',69,'S0097','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (83,'과학',53,'S0098','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (354,'국어',54,'S0098','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (55,'국사',50,'S0099','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (287,'수학',72,'S0099','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (302,'과학',91,'S0100','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (377,'영어',50,'S0100','B0002');
REM INSERTING into MYMEM.TBL_STUDENT
SET DEFINE OFF;
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0001','갈한수');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0002','강이찬');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0003','개원훈');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0004','경시현');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0005','공동영');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0006','기대연');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0007','기원호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0008','기은성');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0009','나한율');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0010','남동예');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0011','낭시우');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0012','내세원');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0013','뇌성수');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0014','단수혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0015','담성민');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0016','담원준');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0017','담장호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0018','독고예준');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0019','돈송혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0020','돈재현');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0021','두동환');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0022','두채훈');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0023','명윤일');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0024','모재원');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0025','문은진');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0026','박수혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0027','방윤후');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0028','방채호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0029','배세준');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0030','배채호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0031','변재호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0032','복재민');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0033','복준완');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0034','비현호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0035','빈성희');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0036','사성준');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0037','사원혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0038','사원호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0039','삼윤후');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0040','삼찬후');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0041','석서훈');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0042','성성율');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0043','소대권');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0044','소윤수');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0045','순대영');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0046','신찬영');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0047','심장호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0048','아동은');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0049','야유신');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0050','양동인');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0051','양은성');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0052','어민기');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0053','엄은진');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0054','여동은');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0055','여민국');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0056','연연재');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0057','옥원준');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0058','옥채훈');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0059','옹효성');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0060','운윤태');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0061','원성빈');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0062','유민국');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0063','유성율');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0064','유준호');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0065','은채혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0066','은현준');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0067','이윤진');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0068','전동원');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0069','점재민');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0070','제갈동연');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0071','제동희');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0072','제민기');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0073','제영후');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0074','제유상');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0075','지승현');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0076','진대원');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0077','진대윤');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0078','진동혜');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0079','진승우');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0080','진승일');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0081','진승환');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0082','초시민');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0083','초원혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0084','초재현');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0085','최장현');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0086','춘대권');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0087','춘인규');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0088','춘찬영');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0089','판한수');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0090','평윤섭');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0091','풍동해');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0092','피태영');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0093','필영후');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0094','하재찬');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0095','함민서');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0096','해송혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0097','허시후');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0098','황원혁');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0099','흥동현');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0100','흥은성');
REM INSERTING into MYMEM.TBL_SUBJECT
SET DEFINE OFF;
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0001','국어');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0002','영어');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0003','수학');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0004','과학');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0005','국사');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0006','미술');
--------------------------------------------------------
--  DDL for Index SYS_C007081
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007081" ON "MYMEM"."TBL_DEPT" ("D_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Index SYS_C007079
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007079" ON "MYMEM"."TBL_IOLIST" ("IO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Index SYS_C007111
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007111" ON "MYMEM"."TBL_MYTABLE" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Index SYS_C007108
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007108" ON "MYMEM"."TBL_PRIMARY" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Index SYS_C007083
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007083" ON "MYMEM"."TBL_PRODUCT" ("P_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Index SYS_C007098
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007098" ON "MYMEM"."TBL_SCORE" ("G_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Index SYS_C007104
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007104" ON "MYMEM"."TBL_STUDENT" ("ST_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  DDL for Index SYS_C007106
--------------------------------------------------------

  CREATE UNIQUE INDEX "MYMEM"."SYS_C007106" ON "MYMEM"."TBL_SUBJECT" ("SB_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1" ;
--------------------------------------------------------
--  Constraints for Table TBL_DEPT
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_DEPT" ADD PRIMARY KEY ("D_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_DEPT" MODIFY ("D_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_IOLIST
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_IOLIST" ADD PRIMARY KEY ("IO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_IOLIST" MODIFY ("IO_INOUT" NOT NULL ENABLE);
  ALTER TABLE "MYMEM"."TBL_IOLIST" MODIFY ("IO_CNAME" NOT NULL ENABLE);
  ALTER TABLE "MYMEM"."TBL_IOLIST" MODIFY ("IO_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MYTABLE
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_MYTABLE" ADD PRIMARY KEY ("P_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_MYTABLE" MODIFY ("P_TEL" NOT NULL ENABLE);
  ALTER TABLE "MYMEM"."TBL_MYTABLE" MODIFY ("P_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_PRIMARY
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_PRIMARY" ADD PRIMARY KEY ("P_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_PRIMARY" MODIFY ("P_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_PRODUCT
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_PRODUCT" ADD PRIMARY KEY ("P_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_PRODUCT" MODIFY ("P_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_SCORE
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_SCORE" ADD PRIMARY KEY ("G_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_SCORE" MODIFY ("G_SUBJECT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_STUDENT
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_STUDENT" ADD PRIMARY KEY ("ST_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_STUDENT" MODIFY ("ST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_SUBJECT
--------------------------------------------------------

  ALTER TABLE "MYMEM"."TBL_SUBJECT" ADD PRIMARY KEY ("SB_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTBL1"  ENABLE;
  ALTER TABLE "MYMEM"."TBL_SUBJECT" MODIFY ("SB_NAME" NOT NULL ENABLE);
