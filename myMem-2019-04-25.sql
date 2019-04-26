--------------------------------------------------------
--  ������ ������ - �����-4��-25-2019   
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
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00001','(��)����365','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00002','(��)��âENG','�ֿ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00003','(��)�����̾ؾ�','�̼���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00004','(��)���翣���Ͼ(���ֳ����Ե�)','��ⱹ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00005','(��)�μ��۽�','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00006','(��)�ο����̽���ũ','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00007','(��)�̷����','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00008','(��)�̷����ؿ���ġ','�迵��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00009','(��)������Ǳ�','��ö��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00010','(��)�����̿���(�����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00011','(��)��ȣ','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00012','(��)Ƽ����Ǫ��','����Ÿ ����Ϸ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00013','(��)�ѿ������ý���','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00014','(��)���Ͽ����Ͼ','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00015','COOL �ó���ý���','�ǻ��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00016','L&R��ũ','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00017','LG���(�����ñ�)','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00018','LG���Ǳ�','��빬');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00019','�����ٳõ�','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00020','�������Ϸ�A/S��Ÿ(�Ȼ�Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00021','���λ��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00022','�����Ե�(�Ե��������Ϸ�����)','�̿뼱');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00023','���ϼ���','Ź��ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00024','�����Ե�','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00025','�Ÿ�ENG�Ե����Ϸ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00026','�����õ�','ȫ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00027','�ǿ����(�ų���Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00028','�溸�÷�Ʈ����','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00029','��ϳÿ�','���ؿ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00030','�������','���ط�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00031','������Ǳ�','�鱸��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00032','��������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00033','���Ե�','����ȯ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00034','������','��μ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00035','������Ǳ�','��ö��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00036','���ǷԵ��ÿ����(����)','�ѽ�ȯ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00037','����������(��õ�Ե�)','����ȯ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00038','����Ե��������Ϸ�(����Ե�)','���ռ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00039','�����Ե�','����ȭ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00040','���ֺϼ����Ե�(���ֺϼ����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00041','�����õ�','���м�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00042','���������Ͼ','����ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00043','�����Ե�','��â��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00044','���̷Ե�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00045','�������վ��̽�ũ��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00046','�׸�������','�ڿ뼭');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00047','�ݼ���⼭��','�ȿ�ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00048','���������̽�','����â');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00049','���� �Ե����Ϸ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00050','�����õ��ֹ�','���ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00051','�����׷Ե�','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00052','�뺹�����Ͼ(���Ⱦ�Ե�)','���ѱ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00053','�뼺���Ǳ�','�̱⿭');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00054','�뼺���ռ���(�����Ե�)','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00055','��ź��Ϸ�(�����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00056','�������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00057','���ϷԵ��������Ϸ�(���ֺϱ��Ե�)','Ȳ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00058','���ѿ�����(��â�Ե�)','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00059','�������հ���','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00060','��������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00061','��������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00062','����������(���ֱ���Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00063','�����̷Ե�','���Ѽ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00064','�������Ǳ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00065','�����ֹ����׸���','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00066','���ϰ������(���ַԵ�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00067','�θ�F&E','���ؼ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00068','�ο����','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00069','�л�Ե�','�ڱ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00070','�ξ�õ�','�ǿ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00071','�Ե�SK�������Ϸ���������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00072','�Ե��������(����)','�̱⿵');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00073','�Ե�������⵿��������(���������Ե�)','�ڿ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00074','�Ե��������Ϸ� �źϱ���','�輺��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00075','�Ե��������Ϸ�(��õ�Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00076','�Ե��������Ϸ�(�޼��Ե�)','�ǿ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00077','�Ե��������Ϸ�(���������Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00078','�Ե��������Ϸ�(����)','�ֻ��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00079','�Ե��������Ϸ�(����Ե�)','�̰��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00080','�Ե��������Ϸ�(�����Ե�)','ȣ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00081','�Ե��������Ϸ�(�ƻ�Ե�)','����ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00082','�Ե��������Ϸ�(�ȼ��Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00083','�Ե��������Ϸ�(õ�ȳ��ηԵ�)','�̰���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00084','�Ե��������Ϸ����븮��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00085','�Ե��������Ϸ����δ븮��(���ηԵ�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00086','�Ե��������Ϸ�����(������)','���繮');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00087','�Ե��������Ϸ����곻���Ե�(������Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00088','�Ե��������Ϸ����δ븮��(���ηԵ�)','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00089','�Ե��������Ϸ����񽺼�ŸJ(�����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00090','�Ե��������Ϸ�����(�������Ե�)','����ȯ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00091','�Ե��������Ϸ�÷����(����÷�ܷԵ�)','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00092','�Ե�������(���طԵ�)','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00093','�Ե����ϼ���','�ڼ�ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00094','�Ե��õ�','����ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00095','�Ե��õ�����(����)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00096','�Ե��õ�����(����)','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00097','�Ե��ÿ����(���λ�ñ�)','�������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00098','�Ե��뼺�������Ϸ�(����õ�Ե�)','����ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00099','�Ե�����(��õ)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00100','�Ե����Ϸ�(�����Ե�(�ű�)','�赿��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00101','�Ե����Ϸ�(��������)','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00102','�Ե����Ϸ���������(���ֳ���)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00103','�Ե����븮��(���Ե�)','�ں���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00104','�Ե������Ͼ(��õ)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00105','�Ե������Ͼ(�ű��ֳ���)','�㿵��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00106','�Ե������Ͼ(��õ)','�鼺��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00107','�Ե�����','õ�뼺');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00108','�Ե����Ǳ�','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00109','�Ե����Ǳ����ϻ��','�躴��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00110','������Ŭ�÷���','ȫ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00111','�����(���ɷԵ�)','��â��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00112','�����','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00113','���ÿ�����','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00114','������ġ����','�ż���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00115','���Ͽ����Ͼ(���ʰ���)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00116','���ENG(�����ַԵ�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00117','���ENG(�����ַԵ�)','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00118','������ռ���(�ϵ��Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00119','�������Ǳ�','�ں���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00120','�����ñ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00121','�̷��õ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00122','�̷����Ǳⷣ��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00123','�����Ǿ�','���¿�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00124','������ũ(����������)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00125','���Ϸ����(�����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00126','������(����߱��Ե�)','����ȯ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00127','�ΰ�Ե�(�����Ե�)','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00128','�λ�Ư��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00129','�μ�����','�ű��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00130','����Ե�','���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00131','�ϺηԵ��������Ϸ�(���ּ��ϱ��Ե�)','�ڱ⿵');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00132','����õ�Ե�','��̼�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00133','�Ｚ����','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00134','�Ｚ���Ǳ⼭��������(��������)','Ź���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00135','�Ｚ���Ǽ���','�̰���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00136','�￵�õ����','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00137','����ENG(�����ַԵ�)','�輺��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00138','����ENG(�����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00139','���λ�Ե�(�����Ե�)','�ڹΰ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00140','����ÿ�','�輺��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00141','���빮�Ե�','�Ӻ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00142','���񽺸�ī','�迬��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00143','���񽺹�ũ','���ñ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00144','�������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00145','����������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00146','���Ϻ��Ϸ�(���ϷԵ�)','�ɰ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00147','�����̿���','��ȸ��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00148','�������(�߶��Ե�)','�弱��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00149','�����õ��������','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00150','���ҳõ�','�̱���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00151','�Ҹ��ñ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00152','�Ҹ������ֹ�','ȫ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00153','���ʷԵ�','�ڿ뱤');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00154','�Ű��Ե�','�ǿ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00155','�źλ�Ե�(�����ϷԵ�)','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00156','�ż��������ֹ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00157','�ż�õ�Ե�(�Ե��������Ϸ�)','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00158','�ſ���','���ְ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00159','���ϻ�ñ�(�ſ��ڵ��Ǹű�)','Ȳ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00160','���������Ͼ(���ηԵ�)','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00161','��â�õ�������','Ȳ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00162','�̳̽õ�','�ڰ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00163','������ϵ�Ϸ�(�ų����Ե�)','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00164','��.��.���̽ý���','�ڴ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00165','�žųõ�','�輺ǥ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00166','���̿���','���μ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00167','�ȵ�����','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00168','�Ȼ�ñ�','�迬��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00169','���̽��ֹ�õ���ȭ��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00170','�������','�ּ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00171','�����õ�','��۽�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00172','�����߾�����','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00173','���γÿ����(��õ)','���ο�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00174','����������(���ֵ����Ե�)','�輱��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00175','�´ް�����(�泲�Ե�)','�ֱ�ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00176','�츮�õ�','�輱��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00177','�츮�õ�','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00178','�츮���','�μ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00179','�����õ�','�����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00180','��������(����Ե�)','��ȣ��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00181','��곲���Ե�','�̺���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00182','�����Ϸ�����(������)','���±�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00183','������Ƽ��(��)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00184','�������Ͼ(�ϻ�Ե�)','�̸���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00185','���ֻＺ����','�ֺ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00186','����õ�','�Ű��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00187','����ENG(�����ַԵ�)','ȫ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00188','�����������(�����Ե�)','��ȿ��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00189','�ϵ�����','�ȿ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00190','��������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00191','��ȣ����','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00192','��ȭ���ռ���(���ͻ�Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00193','���Ǳ⼭��','�ǿ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00194','���Ǳ����','Ȳ����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00195','�����Ǹ�(��)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00196','���ϱ��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00197','���ϷԵ��ñ�(���ϳñ�)','���½�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00198','���γÿ�','����ö');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00199','��������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00200','���ϻ��(�����ַԵ�)','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00201','���̿������Ͼ','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00202','���ϱ��(�����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00203','���Ϻ��Ϸ�(�����ַԵ�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00204','���ϻ��(���ͻ�Ե�)','�ּ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00205','���ϼ���(����Ե�)','����ȯ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00206','�������ջ��','�̰��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00207','���ֳõ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00208','�����Ǹ�(��)','�̻���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00209','���������Ͼ(�����߱��Ե�)','��ȸ��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00210','����������(�����Ե�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00211','�ߺμ���','�ο���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00212','����ENG','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00213','��������','�̱���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00214','���ַԵ�����õ�����','�漺��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00215','�������Ǳ�','�躹��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00216','â���Ե�','���ؼ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00217','õ�ȺϺηԵ�','����ȣ');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00218','û��(�����Ե�)','�ѱԽ�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00219','û�ַԵ����Ϸ�','���強');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00220','���ִ븮��','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00221','�ڸ��Ƴ�.����(���곲�ηԵ�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00222','�¼�������','���±�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00223','�¾翭��(�����Ե�)','��̼�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00224','�¾����Ǳ⼭��','�㼺��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00225','�¾������ǳ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00226','���÷��� �ý���','�Ӽ���');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00227','�÷������(���ֺϺ�)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00228','�ϳ�����(��)','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00229','�ϸ��õ�','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00230','�Ѽ��ÿ��ν���(��)','�豤��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00231','�Ѽ����ջ��','��ȫ��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00232','�������Ǳ���������','������');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00233','������','��ä��');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00234','���³ÿ�','��̿�');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00235','���Ż��','����');
Insert into MYMEM.TBL_DEPT (D_CODE,D_NAME,D_CEO) values ('D00236','ȭ��Ե��������Ϸ�(ȭ��Ե�)','�迵ȭ');
REM INSERTING into MYMEM.TBL_IOLIST
SET DEFINE OFF;
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (2,'2018-01-02','(��)����ʹ��','����',66,497,32802,'D00197','P00000037');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (3,'2018-01-02','��Ƽ��Ÿ ĵ','����',89,245,21805,'D00214','P00000167');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (4,'2018-01-02','��������','����',94,295,27730,'D00164','P00000215');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (5,'2018-01-03',' ��    ��(Ŀ��)','����',87,2745,238815,'D00033','P00000019');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (6,'2018-01-04','���Ͻ�','����',94,0,0,'D00018','P00000355');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (7,'2018-01-06','������������','����',66,622,41052,'D00053','P00000268');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (8,'2018-01-07','���-7000','����',100,1885,188500,'D00111','P00000273');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (9,'2018-01-07','����-���ְ���(180)','����',84,491,41244,'D00136','P00000115');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (10,'2018-01-07','1000�����ѳ��ʰ�����','����',78,591,46098,'D00183','P00000050');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (13,'2018-01-10','7+8ĩ��','����',93,0,0,'D00163','P00000085');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (14,'2018-01-10','����Ŀ��','����',73,8240,601520,'D00070','P00000195');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (15,'2018-01-11','����Ƽ��','����',89,1844,164116,'D00077','P00000368');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (16,'2018-01-12','�ڴ� ��ī AA','����',73,409,29857,'D00115','P00000331');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (17,'2018-01-12',' ������Ƽ(ȣ��)','����',78,2196,171288,'D00160','P00000005');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (18,'2018-01-12','����-������(180)','����',68,655,44540,'D00070','P00000113');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (19,'2018-01-15','���̼Ÿ���õ�ڹ�','����',79,311,24569,'D00235','P00000241');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (20,'2018-01-15','700 ��ҹ�','����',64,436,27904,'D00068','P00000086');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (21,'2018-01-16','��彺Ÿŷ','����',60,647,38820,'D00205','P00000184');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (22,'2018-01-17','�����Ͼƽ��۽���','����',56,2065,115640,'D00101','P00000185');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (23,'2018-01-17','(��)ABC���ݷ�','����',88,887,78056,'D00234','P00000033');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (24,'2018-01-18','��ȸ����','����',50,245,12250,'D00102','P00000283');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (25,'2018-01-19','�ȸ��Ƹ�Ʈ��','����',77,1844,141988,'D00226','P00000359');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (26,'2018-01-19','�������Ŀ�ǹͽ�','����',54,286,15444,'D00200','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (31,'2018-01-24',' ����(��ũ��)','����',58,327,18966,'D00172','P00000007');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (32,'2018-01-24','��ũ','����',78,436,34008,'D00221','P00000354');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (33,'2018-01-26','5000����','����',72,2049,147528,'D00208','P00000076');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (34,'2018-01-27','2%�����Ҷ�DBH������ 500����','����',97,614,59558,'D00173','P00000068');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (35,'2018-01-27','�������','����',52,0,0,'D00198','P00000146');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (40,'2018-02-03','���Ϲ��','����',100,245,24500,'D00145','P00000123');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (41,'2018-02-04','1000��','����',87,655,56985,'D00219','P00000051');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (42,'2018-02-04','����ũ���Ҵ�','����',89,300,26700,'D00194','P00000260');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (43,'2018-02-05','ĩ��','����',73,409,29857,'D00124','P00000315');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (44,'2018-02-05','��������','����',81,1311,106191,'D00219','P00000312');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (45,'2018-02-07','����������������ݸ�','����',93,655,60915,'D00203','P00000228');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (46,'2018-02-07',' ���Ͻô�(����)','����',78,384,29952,'D00103','P00000009');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (47,'2018-02-08',' ���ȳ���','����',71,1647,116937,'D00182','P00000021');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (48,'2018-02-09','�ڱ��ȫ�����ָ���?','����',54,327,17658,'D00090','P00000286');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (49,'2018-02-09','��Ҽ�','����',100,655,65500,'D00074','P00000207');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (68,'2018-02-19',' ������Ʈ','����',88,2745,241560,'D00148','P00000003');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (69,'2018-02-19','���������','����',71,491,34861,'D00138','P00000140');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (70,'2018-02-19','�����¿��Ͻ� �����','����',69,311,21459,'D00098','P00000265');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (71,'2018-02-20','6000ī��','����',88,2049,180312,'D00167','P00000084');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (72,'2018-02-21','������-��������','����',69,327,22563,'D00138','P00000261');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (73,'2018-02-23','���̼Ҵٿ�������Ʈ','����',55,655,36025,'D00215','P00000134');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (74,'2018-02-24','(��)ABC���ݷ�','����',90,887,79830,'D00039','P00000033');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (75,'2018-02-25','1000����','����',82,650,53300,'D00113','P00000053');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (76,'2018-02-26','�����ι̵��','����',84,1844,154896,'D00048','P00000159');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (77,'2018-03-01','����׷�','����',95,655,62225,'D00084','P00000142');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (78,'2018-03-01','����-ȫ��(180)','����',89,573,50997,'D00039','P00000118');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (79,'2018-03-01','���Ѹ�','����',90,7377,663930,'D00186','P00000182');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (80,'2018-03-01',' �� �� ��(���)','����',76,384,29184,'D00066','P00000001');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (81,'2018-03-02','��Ÿ �Ŀ�','����',100,204,20400,'D00179','P00000199');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (82,'2018-03-03','�䷹�ημ�','����',91,5778,525798,'D00192','P00000361');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (83,'2018-03-03','���ٲ���','����',89,491,43699,'D00022','P00000225');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (84,'2018-03-04','����Ŭ����������','����',54,1803,97362,'D00152','P00000371');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (85,'2018-03-05','�����̴���','����',73,901,65773,'D00153','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (86,'2018-03-05','ȭ�̺�̴Ϻ�','����',73,311,22703,'D00076','P00000385');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (87,'2018-03-05','ĭŸŸ(����Ŀ��)','����',50,819,40950,'D00001','P00000325');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (88,'2018-03-07','1500 ����','����',55,976,53680,'D00184','P00000059');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (89,'2018-03-07','�������Ŀ�ǹͽ�','����',81,286,23166,'D00132','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (90,'2018-03-10','��������-����','����',64,2622,167808,'D00019','P00000100');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (91,'2018-03-11','��ing(ũ���̹���)','����',98,983,96334,'D00137','P00000302');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (92,'2018-03-12','��ũ���ؽ� ���ؼ� ĸ60��','����',62,2407,149234,'D00072','P00000120');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (108,'2018-03-22','���ϰ�����','����',59,409,24131,'D00139','P00000161');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (109,'2018-03-22','�Ƹ��','����',93,586,54498,'D00227','P00000239');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (110,'2018-03-24','�ʷϸŽ� 500ML','����',72,655,47160,'D00014','P00000307');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (111,'2018-03-24','�̿¿��̵�ĵ','����',82,344,28208,'D00167','P00000280');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (112,'2018-03-24','����(j)','����',69,1844,127236,'D00157','P00000291');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (113,'2018-03-26','���ٸ�','����',83,286,23738,'D00174','P00000258');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (114,'2018-03-26','���̼Ҵپ�����Ʈ','����',80,655,52400,'D00124','P00000133');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (115,'2018-03-26','�ƽ����̱�ī��ĵ','����',85,245,20825,'D00001','P00000163');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (116,'2018-03-27','ȭ�̺�̴Ϻ�','����',99,311,30789,'D00173','P00000385');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (117,'2018-03-28','��ing(���ͷ���)','����',97,983,95351,'D00219','P00000301');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (118,'2018-04-01','��õ�Ҹ��ɸ� 1.2L','����',53,901,47753,'D00197','P00000365');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (119,'2018-04-02','���ͱ�������45g','����',100,896,89600,'D00171','P00000189');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (120,'2018-04-02','3000�帲īī��56%','����',77,1775,136675,'D00007','P00000072');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (121,'2018-04-03','��������','����',88,1311,115368,'D00074','P00000312');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (122,'2018-04-04','����CN120','����',79,1475,116525,'D00227','P00000390');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (123,'2018-04-05','1800�ķ�������','����',76,1121,85196,'D00016','P00000067');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (124,'2018-04-05','����ƾƾ','����',50,655,32750,'D00174','P00000309');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (125,'2018-04-05','�����Ͼƽ��۽�����','����',61,2065,125965,'D00087','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (126,'2018-04-06',' Ŭ����(����)','����',84,2196,184464,'D00006','P00000027');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (127,'2018-04-07','�ķ����ͽ�','����',72,573,41256,'D00193','P00000389');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (128,'2018-04-08','�����','����',75,386,28950,'D00169','P00000210');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (129,'2018-04-09','����ĳ���A','����',93,4918,457374,'D00020','P00000276');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (130,'2018-04-10','2%�����Ҷ�pet(�����)','����',98,491,48118,'D00155','P00000069');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (131,'2018-04-11','�����������÷���','����',99,1844,182556,'D00071','P00000160');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (160,'2018-05-03',' ������Ŀ�ǽ���ũ','����',57,655,37335,'D00056','P00000010');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (161,'2018-05-03','���������Ĩ��Ű','����',81,1639,132759,'D00202','P00000172');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (162,'2018-05-04','�Һ���','����',62,655,40610,'D00074','P00000223');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (163,'2018-05-05','�ϱ⽺������ƼƯ��(��)','����',75,1704,127800,'D00108','P00000373');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (164,'2018-05-05','5000ȭ��','����',51,860,43860,'D00020','P00000077');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (165,'2018-05-05','������','����',89,409,36401,'D00112','P00000247');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (166,'2018-05-05','����aromeI','����',58,1844,106952,'D00008','P00000192');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (167,'2018-05-06','�̳�� ������ ������180��ĵ','����',62,327,20274,'D00149','P00000176');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (168,'2018-05-07','������ ����','����',82,368,30176,'D00141','P00000341');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (169,'2018-05-08','������','����',65,1844,119860,'D00124','P00000220');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (170,'2018-05-09','��������(������)','����',65,614,39910,'D00078','P00000256');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (171,'2018-05-09','�������Ŀ�ǹͽ�','����',97,286,27742,'D00044','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (172,'2018-05-10','����ķ�������','����',85,737,62645,'D00173','P00000297');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (173,'2018-05-10','500 ����','����',76,295,22420,'D00067','P00000075');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (174,'2018-05-11','(��)�����','����',70,411,28770,'D00126','P00000039');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (175,'2018-05-11','��Ÿ���� ������ġ��Ŀ��','����',58,1803,104574,'D00059','P00000230');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (176,'2018-05-11',' �� Ű ��','����',74,1647,121878,'D00036','P00000004');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (177,'2018-05-11','����ġī��ī��Ḷ���߶�','����',85,901,76585,'D00062','P00000367');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (178,'2018-05-12','1800���߿��ο�','����',76,1172,89072,'D00023','P00000066');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (179,'2018-05-12','�˻���Ĩ','����',70,322,22540,'D00104','P00000242');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (180,'2018-05-13','���Ʈ��ġ�Ƹ�� 35g','����',66,737,48642,'D00060','P00000235');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (181,'2018-05-16','īī��76%','����',66,622,41052,'D00057','P00000317');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (182,'2018-05-17','��縶��ƾ','����',67,491,32897,'D00218','P00000198');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (183,'2018-05-17','1200 ABC����','����',82,709,58138,'D00093','P00000057');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (184,'2018-05-19','�̴ָ��̵�˷ο��÷���','����',86,622,53492,'D00166','P00000179');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (185,'2018-05-20','��Ÿ�ս�Ÿŷ','����',73,512,37376,'D00017','P00000358');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (186,'2018-05-20','��Ƽ��Ÿ ĵ','����',98,245,24010,'D00028','P00000167');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (187,'2018-05-21',' �� �� ��','����',52,549,28548,'D00166','P00000032');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (215,'2018-06-09','�����̴���','����',60,901,54060,'D00037','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (216,'2018-06-10','�Ǹ鼼��-�Ұ��','����',74,651,48174,'D00026','P00000092');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (217,'2018-06-10','����ƾƾ','����',96,655,62880,'D00021','P00000309');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (218,'2018-06-11','�Ｎ �ν�Ź��','����',56,7377,413112,'D00149','P00000299');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (219,'2018-06-12','����ũ���Ҵ�','����',54,573,30942,'D00195','P00000260');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (220,'2018-06-13','ȯŸ������ĵ','����',71,368,26128,'D00035','P00000388');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (221,'2018-06-13','������(��Ʈ)','����',65,491,31915,'D00229','P00000212');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (222,'2018-06-14','���� ������ 300��ĳ������','����',78,409,31902,'D00118','P00000392');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (244,'2018-06-28','�Ϲٻ�ĵ','����',57,352,20064,'D00012','P00000243');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (245,'2018-07-01','(��)�ڰ�ġ','����',68,386,26248,'D00094','P00000045');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (246,'2018-07-02','�عٶ�����ں�','����',58,591,34278,'D00134','P00000378');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (247,'2018-07-03','1000����Ĩ��Ű','����',89,622,55358,'D00233','P00000055');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (248,'2018-07-03','����Ƽ��','����',62,1844,114328,'D00031','P00000368');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (249,'2018-07-05','�������','����',87,180,15660,'D00024','P00000255');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (250,'2018-07-05','�������ڳ�','����',75,413,30975,'D00090','P00000202');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (284,'2018-07-28','�հ���','����',59,622,36698,'D00147','P00000269');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (285,'2018-08-01','���÷���(��)','����',54,1549,83646,'D00177','P00000137');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (286,'2018-08-01','������-�߳�','����',67,2704,181168,'D00131','P00000162');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (287,'2018-08-02','�������߰�','����',61,614,37454,'D00234','P00000226');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (288,'2018-08-02','���۶�25000','����',73,1885,137605,'D00200','P00000219');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (289,'2018-08-02','Ű������Ű��','����',95,1758,167010,'D00185','P00000349');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (290,'2018-08-03','ū������','����',52,272,14144,'D00031','P00000344');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (291,'2018-08-03','��äũ��Ŀ','����',95,413,39235,'D00230','P00000245');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (292,'2018-08-03','�����̾� �丶��','����',93,450,41850,'D00070','P00000370');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (293,'2018-08-03','���̼Ҵٱ׷�����ĵ','����',79,341,26939,'D00151','P00000131');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (294,'2018-08-03','ī������(������)','����',82,286,23452,'D00042','P00000324');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (295,'2018-08-04','����ݶ� 500����','����',79,450,35550,'D00025','P00000362');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (296,'2018-08-04','���������','����',87,1180,102660,'D00125','P00000103');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (297,'2018-08-04','��(��)','����',60,1475,88500,'D00096','P00000136');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (298,'2018-08-04','�������߸�','����',82,426,34932,'D00080','P00000279');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (299,'2018-08-05','����������','����',58,614,35612,'D00030','P00000227');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (300,'2018-08-05','22000����','����',99,9016,892584,'D00150','P00000071');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (301,'2018-08-08','�ٷ�ī��8804751701023','����',90,491,44190,'D00189','P00000181');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (340,'2018-09-02','ȯŸ������','����',86,622,53492,'D00221','P00000387');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (341,'2018-09-02',' ��ũ��','����',90,327,29430,'D00027','P00000012');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (342,'2018-09-02','(��)�Ŷ��ū���','����',99,532,52668,'D00059','P00000041');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (343,'2018-09-03','�����ð�','����',63,327,20601,'D00180','P00000287');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (344,'2018-09-03','1500 ����Ĩ','����',80,976,78080,'D00146','P00000060');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (345,'2018-09-04','���Ÿ�Ӹ��','����',69,1696,117024,'D00116','P00000379');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (346,'2018-09-05','����Ǽ�','����',86,1844,158584,'D00205','P00000250');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (347,'2018-09-06','�Ƕ�ġ��','����',62,1967,121954,'D00187','P00000206');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (348,'2018-09-06','���ϵ弼�콴�۶���Ʈ','����',93,1844,171492,'D00007','P00000154');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (349,'2018-09-06','����aromeI','����',71,1844,130924,'D00094','P00000192');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (350,'2018-09-06','�Ŷ�� ��','����',65,819,53235,'D00032','P00000330');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (351,'2018-09-07','��������õ','����',72,221,15912,'D00106','P00000097');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (352,'2018-09-07','(��)�˻���ĥ�������','����',95,386,36670,'D00163','P00000042');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (353,'2018-09-08','Ĩ������¬©(��)','����',67,586,39262,'D00127','P00000314');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (354,'2018-09-08','700 ��������Ŷ','����',91,436,39676,'D00042','P00000087');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (355,'2018-09-08','���̼Ҵٷ���ĵ','����',89,341,30349,'D00068','P00000132');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (356,'2018-09-09','���廩����','����',79,413,32627,'D00143','P00000119');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (357,'2018-09-09',' ī��������','����',60,655,39300,'D00017','P00000024');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (358,'2018-09-09','�����ζ���Ʈ','����',75,1844,138300,'D00099','P00000157');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (359,'2018-09-12','1000��','����',63,655,41265,'D00088','P00000051');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (360,'2018-09-12','(��)�̺�����','����',98,386,37828,'D00026','P00000046');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (361,'2018-09-12','�뷡������','����',77,1147,88319,'D00176','P00000111');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (362,'2018-09-13','����','����',72,1844,132768,'D00103','P00000253');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (363,'2018-09-14','����-���','����',58,622,36076,'D00099','P00000109');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (364,'2018-09-14','���̽�','����',86,1311,112746,'D00133','P00000252');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (365,'2018-09-16','īǪġ����','����',58,614,35612,'D00075','P00000323');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (366,'2018-09-17','�ƽ� �������� 20��','����',74,1803,133422,'D00098','P00000165');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (367,'2018-09-18','ī��Ÿ��','����',78,1183,92274,'D00128','P00000316');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (368,'2018-09-19','Ű������Ű��','����',59,1758,103722,'D00143','P00000349');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (369,'2018-09-19',' ������(�ٴҶ�)','����',60,655,39300,'D00205','P00000018');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (370,'2018-09-20','16000����','����',58,6557,380306,'D00133','P00000064');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (371,'2018-09-21','�ﰢ�� ��','����',86,13934,1198324,'D00024','P00000208');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (372,'2018-09-22',' ���ȳ���','����',57,1647,93879,'D00065','P00000021');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (404,'2018-10-07',' �ֹ���(������)','����',51,327,16677,'D00007','P00000022');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (405,'2018-10-07','�Ǹ鼼��-��ġ','����',77,651,50127,'D00184','P00000091');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (406,'2018-10-08','��ing(ũ���̹���)','����',86,983,84538,'D00227','P00000302');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (407,'2018-10-08','���Ҹ�','����',68,1639,111452,'D00064','P00000204');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (408,'2018-10-08','�ε��','����',94,1844,173336,'D00046','P00000281');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (409,'2018-10-09','���尩','����',71,409,29039,'D00162','P00000170');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (410,'2018-10-10','500��ĵ��','����',69,295,20355,'D00057','P00000080');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (411,'2018-10-11','���η��� ��ī(Ŀ��)','����',79,587,46373,'D00186','P00000356');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (412,'2018-10-14','��¡�� ���ͱ��� 40g','����',91,919,83629,'D00109','P00000267');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (413,'2018-10-16','ȫ���','����',99,491,48609,'D00201','P00000384');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (414,'2018-10-18',' �ֹ���(��.��)','����',98,274,26852,'D00142','P00000023');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (415,'2018-10-18','Ʈ�����̱�','����',83,524,43492,'D00054','P00000357');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (416,'2018-10-18','�������߰�','����',57,614,34998,'D00074','P00000226');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (417,'2018-10-18','�����׶���','����',99,341,33759,'D00118','P00000197');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (418,'2018-10-19','500��','����',84,327,27468,'D00093','P00000081');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (419,'2018-10-20','������ ����','����',80,368,29440,'D00194','P00000341');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (420,'2018-10-20','��û����(��)','����',55,1465,80575,'D00209','P00000294');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (421,'2018-10-22','�Ǹ鼼��-��ġ','����',71,651,46221,'D00036','P00000091');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (422,'2018-10-23','��Ÿ���� ������ġ��Ŀ��','����',69,1803,124407,'D00231','P00000230');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (423,'2018-10-24','Ŭ����','����',67,2213,148271,'D00162','P00000345');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (424,'2018-10-25','����-�˷ο�(180)','����',82,573,46986,'D00143','P00000114');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (425,'2018-10-25','����(��)','����',68,1696,115328,'D00183','P00000233');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (426,'2018-10-26','�ʹٸ�������','����',85,6557,557345,'D00213','P00000104');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (427,'2018-10-27','�ڴ�K123LA-1(��)','����',81,2459,199179,'D00097','P00000334');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (428,'2018-10-28','16000����','����',91,6557,596687,'D00120','P00000064');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (429,'2018-10-28','�����Ͼƽ��۽�����','����',57,2065,117705,'D00008','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (430,'2018-10-29',' ���Ͻô�(Ŀ��)','����',90,384,34560,'D00086','P00000008');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (431,'2018-10-29','Ų���̴�����','����',60,368,22080,'D00089','P00000351');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (432,'2018-11-01',' �� Ÿ ��(����)','����',98,549,53802,'D00228','P00000006');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (433,'2018-11-01','1000��Ĩ','����',86,591,50826,'D00235','P00000052');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (434,'2018-11-02','����(�Ǽ�)','����',58,1844,106952,'D00129','P00000126');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (435,'2018-11-02','�ڴ� ��ī AA','����',50,409,20450,'D00075','P00000331');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (436,'2018-11-03','�Ŷ��ū��߸�','����',99,555,54945,'D00205','P00000231');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (437,'2018-11-03','�ε��','����',87,1844,160428,'D00200','P00000281');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (438,'2018-11-03','����Ŀ��','����',56,8240,461440,'D00210','P00000195');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (439,'2018-11-05','13000����','����',68,5327,362236,'D00155','P00000058');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (477,'2018-12-16','���÷���(��)','����',98,1549,151802,'D00139','P00000137');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (478,'2018-12-16','500����','����',66,295,19470,'D00132','P00000078');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (479,'2018-12-17','������-����','����',69,327,22563,'D00159','P00000262');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (480,'2018-12-20','�̴���','����',88,311,27368,'D00211','P00000178');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (481,'2018-12-22','Ų���̴�','����',72,450,32400,'D00174','P00000350');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (482,'2018-12-22',' ��(�ٴҶ�)','����',84,524,44016,'D00123','P00000016');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (483,'2018-12-23','500 ���ƿ¿ղ�Ʋ��','����',69,311,21459,'D00158','P00000074');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (484,'2018-12-23','�ҽö��̳�','����',86,1721,148006,'D00211','P00000360');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (485,'2018-12-24','�������ν�Ʈ','����',65,1434,93210,'D00182','P00000130');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (486,'2018-12-25','���۶�10000','����',81,1885,152685,'D00146','P00000217');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (487,'2018-12-27','������������','����',87,515,44805,'D00032','P00000144');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (488,'2018-12-27','1000�عٶ�����ں�','����',93,591,54963,'D00202','P00000056');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (489,'2018-12-27','�Ｎ  P700','����',61,9016,549976,'D00035','P00000298');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (490,'2018-12-28','�Ұ���','����',96,491,47136,'D00040','P00000234');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (491,'2018-12-29','�����Ʈ','����',69,1639,113091,'D00186','P00000254');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (1,'2018-01-01',' ������(����)','����',51,500,25500,'D00172','P00000014');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (11,'2018-01-09',' ��������','����',91,1000,91000,'D00071','P00000031');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (12,'2018-01-09','�����۽��������μ�','����',86,1500,129000,'D00059','P00000372');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (27,'2018-01-23','ȯŸ������','����',87,1500,130500,'D00123','P00000387');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (28,'2018-01-23','����Ʈ����ĵ','����',74,2000,148000,'D00137','P00000376');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (29,'2018-01-24','���-�Ƶ�','����',58,1500,87000,'D00097','P00000271');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (30,'2018-01-24','�ƽ���īǪġ��ĵ','����',81,700,56700,'D00043','P00000164');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (36,'2018-01-28','��յ���','����',97,700,67900,'D00092','P00000169');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (37,'2018-01-29','���û�','����',60,2500,150000,'D00119','P00000149');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (38,'2018-02-02',' �������(������)','����',95,700,66500,'D00207','P00000002');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (39,'2018-02-03','���Ϳ���','����',66,1500,99000,'D00187','P00000191');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (50,'2018-02-09','����(��)','����',68,2500,170000,'D00082','P00000249');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (51,'2018-02-09','��ȸ������','����',98,500,49000,'D00163','P00000284');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (52,'2018-02-10','�����ݶ��','����',51,1500,76500,'D00052','P00000375');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (53,'2018-02-11','�ڴ���ȸ��(��)','����',75,12000,900000,'D00047','P00000337');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (54,'2018-02-11','�ڴ�KL2CR5-1','����',58,12000,696000,'D00083','P00000336');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (55,'2018-02-11','�������Ҵ� ������ĵ','����',55,800,44000,'D00230','P00000263');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (56,'2018-02-13','īī��76%','����',50,1000,50000,'D00212','P00000317');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (57,'2018-02-14','īǪġ�뺴','����',92,2500,230000,'D00148','P00000322');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (58,'2018-02-14','���߿�����','����',84,1000,84000,'D00053','P00000393');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (59,'2018-02-15','�ݵ� ����240','����',71,1200,85200,'D00119','P00000342');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (60,'2018-02-15','ĭŸŸ(����Ŀ��)','����',95,1800,171000,'D00175','P00000325');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (61,'2018-02-15','������','����',97,1500,145500,'D00066','P00000369');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (62,'2018-02-15','��Ƽ��Ÿ ��','����',63,700,44100,'D00231','P00000166');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (63,'2018-02-16','����ķ�������','����',52,1500,78000,'D00026','P00000297');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (64,'2018-02-16','����������Ĩ','����',59,1500,88500,'D00059','P00000311');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (65,'2018-02-17','�˻���Ĩ','����',50,500,25000,'D00039','P00000242');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (66,'2018-02-18','��յ���','����',67,700,46900,'D00081','P00000169');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (67,'2018-02-18','���ϵ弼��[�ڽ�]','����',81,2500,202500,'D00129','P00000152');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (93,'2018-03-12','2000��ĵ��','����',62,2000,124000,'D00048','P00000070');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (94,'2018-03-12','1500�ִ�Ÿ��','����',84,1500,126000,'D00204','P00000062');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (95,'2018-03-13','�ϴú���','����',90,1500,135000,'D00049','P00000374');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (96,'2018-03-14','������ӿ���','����',57,1000,57000,'D00129','P00000381');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (97,'2018-03-14','�Ŷ�� ��','����',61,1500,91500,'D00215','P00000329');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (98,'2018-03-14','���(��)-���','����',68,10000,680000,'D00222','P00000272');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (99,'2018-03-14','(��)������ū���','����',76,900,68400,'D00104','P00000040');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (100,'2018-03-16','ī���ī��','����',63,1500,94500,'D00196','P00000319');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (101,'2018-03-16','Ű����','����',70,3000,210000,'D00079','P00000347');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (102,'2018-03-16','��������̰ǻ�','����',68,3000,204000,'D00128','P00000173');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (103,'2018-03-16','������','����',50,2000,100000,'D00145','P00000259');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (104,'2018-03-18','��Ÿ �Ŀ�','����',85,700,59500,'D00195','P00000199');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (105,'2018-03-18','�����̴���','����',53,2000,106000,'D00121','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (106,'2018-03-19','����������','����',72,1500,108000,'D00174','P00000248');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (107,'2018-03-19','�Ҷ�������','����',69,1500,103500,'D00011','P00000222');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (132,'2018-04-12','500���Ͻ�����','����',99,500,49500,'D00048','P00000082');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (133,'2018-04-14','Ȩ��������(��)','����',73,1000,73000,'D00073','P00000383');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (134,'2018-04-14','��ī�ݶ�500ml','����',60,1500,90000,'D00196','P00000340');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (135,'2018-04-16','�׽�Ƽ','����',87,1500,130500,'D00203','P00000110');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (136,'2018-04-16','m&m''s �ǳ���ũ��','����',90,2000,180000,'D00146','P00000090');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (137,'2018-04-18','�����ζ���Ʈ','����',76,2500,190000,'D00130','P00000157');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (138,'2018-04-18','���ڲ���','����',69,1200,82800,'D00020','P00000277');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (139,'2018-04-18',' �� Ű ��','����',97,3000,291000,'D00226','P00000004');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (140,'2018-04-18',' ���Դ�(��)','����',57,5000,285000,'D00181','P00000028');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (141,'2018-04-20','�عٶ�����ں�','����',79,700,55300,'D00144','P00000378');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (142,'2018-04-20','������','����',62,1500,93000,'D00004','P00000377');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (143,'2018-04-21','m&m''s �ǳ���ũ��','����',87,2000,174000,'D00164','P00000090');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (144,'2018-04-22','��������-�߳�','����',60,4500,270000,'D00138','P00000101');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (145,'2018-04-22','Ÿ�Ӷ���Ʈ','����',95,2300,218500,'D00176','P00000352');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (146,'2018-04-23','�ڴ�100/36','����',78,4000,312000,'D00176','P00000332');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (147,'2018-04-24','Ű�����Ƹ��','����',63,3000,189000,'D00068','P00000348');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (148,'2018-04-24','�ε���','����',50,500,25000,'D00195','P00000282');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (149,'2018-04-25',' Ŀ�ǵ���','����',95,500,47500,'D00211','P00000025');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (150,'2018-04-26','��ũ��Ʈ���������̵�350','����',68,1500,102000,'D00010','P00000236');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (151,'2018-04-26','�Ǹ鼼��-��ġ','����',90,1100,99000,'D00080','P00000091');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (152,'2018-04-27',' ��(�ٴҶ�&Ŀ��)','����',70,1000,70000,'D00128','P00000015');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (153,'2018-04-28','���̽�(���Ͽ�)PET 200ML','����',95,1500,142500,'D00004','P00000305');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (154,'2018-04-28','500��','����',69,500,34500,'D00046','P00000081');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (155,'2018-05-01','����(��)','����',69,2300,158700,'D00057','P00000233');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (156,'2018-05-01','�ٿ�����','����',56,1500,84000,'D00077','P00000121');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (157,'2018-05-01','���۶�10000','����',95,10000,950000,'D00177','P00000217');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (158,'2018-05-02','��Ÿ�Ŀ� 210����(�ڽ�)','����',59,1300,76700,'D00004','P00000200');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (159,'2018-05-02','�Ҷ�','����',54,1500,81000,'D00083','P00000221');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (188,'2018-05-21','���尩','����',70,1000,70000,'D00107','P00000170');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (189,'2018-05-22','�ٴ���','����',93,1800,167400,'D00049','P00000353');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (190,'2018-05-23','500 ���人�����','����',69,500,34500,'D00198','P00000073');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (191,'2018-05-24','6000����','����',58,6000,348000,'D00055','P00000083');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (192,'2018-05-24','����(���)','����',65,500,32500,'D00191','P00000108');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (193,'2018-05-24','�����','����',78,2500,195000,'D00149','P00000251');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (194,'2018-05-26','�����Ͼƽ��۽�����','����',66,2800,184800,'D00129','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (195,'2018-05-27','��Ÿ���� ������ġ��Ŀ��','����',100,3800,380000,'D00085','P00000230');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (196,'2018-05-27','������','����',56,500,28000,'D00134','P00000094');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (197,'2018-05-27','����(0.5)','����',79,2500,197500,'D00053','P00000125');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (198,'2018-05-28','(��)k400/36','����',79,4000,316000,'D00012','P00000034');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (199,'2018-05-28','Ų���̴�����','����',99,800,79200,'D00097','P00000351');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (200,'2018-06-01','���ϵ弼���','����',81,2500,202500,'D00144','P00000155');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (201,'2018-06-03','�����ι̵��','����',77,2500,192500,'D00089','P00000159');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (202,'2018-06-03','1500�����ķ����ڸ�','����',60,1500,90000,'D00225','P00000061');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (203,'2018-06-03','���ϸ���3+','����',77,1500,115500,'D00113','P00000289');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (204,'2018-06-04','����������','����',53,700,37100,'D00206','P00000098');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (205,'2018-06-05','Ŀ�ǳ�','����',91,2000,182000,'D00232','P00000328');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (206,'2018-06-05','���߿�����','����',55,1000,55000,'D00055','P00000393');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (207,'2018-06-05','��������','����',67,1000,67000,'D00161','P00000211');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (208,'2018-06-05','����������Ĩ��Ű','����',66,700,46200,'D00188','P00000266');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (209,'2018-06-05','��ټ�����','����',53,1500,79500,'D00172','P00000209');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (210,'2018-06-05','����-������(180)','����',97,1000,97000,'D00001','P00000113');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (211,'2018-06-06','�ڴ���ȸ��(��)','����',65,12000,780000,'D00087','P00000337');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (212,'2018-06-07','���Ǿ�','����',67,1000,67000,'D00020','P00000203');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (213,'2018-06-07','����','����',89,500,44500,'D00126','P00000096');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (214,'2018-06-08','���ϰ�����','����',80,900,72000,'D00069','P00000161');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (223,'2018-06-14','�ڴ�200/24(��)','����',68,3000,204000,'D00178','P00000333');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (224,'2018-06-16','���������(����Ʈ)','����',60,1100,66000,'D00091','P00000216');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (225,'2018-06-16','�Ｎ �ν�Ź��','����',50,13000,650000,'D00205','P00000299');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (226,'2018-06-17','(��)�Ŷ��ū���','����',59,900,53100,'D00009','P00000041');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (227,'2018-06-17','�����̴���','����',52,2000,104000,'D00230','P00000193');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (228,'2018-06-18','����ƾƾ','����',54,1000,54000,'D00094','P00000309');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (229,'2018-06-19','�ٷα����������','����',78,1500,117000,'D00071','P00000180');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (230,'2018-06-19','�ִϵ����Ϲ�24','����',93,3000,279000,'D00002','P00000244');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (231,'2018-06-20','��ġ��߸�','����',54,800,43200,'D00137','P00000106');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (232,'2018-06-20',' ������','����',61,5000,305000,'D00102','P00000011');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (233,'2018-06-21','�����','����',75,1200,90000,'D00018','P00000183');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (234,'2018-06-22','(��)���ĸ�','����',70,800,56000,'D00068','P00000044');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (235,'2018-06-22','���','����',99,2500,247500,'D00203','P00000143');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (236,'2018-06-23','���ϵ���(LSS)ONE','����',72,2500,180000,'D00012','P00000156');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (237,'2018-06-23','�ԾȰ�������Ĩ','����',94,1500,141000,'D00217','P00000285');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (238,'2018-06-23','��ũ����','����',99,2500,247500,'D00041','P00000148');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (239,'2018-06-23','Ĩ������','����',100,1500,150000,'D00224','P00000313');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (240,'2018-06-24','������(����)','����',94,500,47000,'D00071','P00000150');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (241,'2018-06-25','Ű����','����',74,1000,74000,'D00216','P00000347');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (242,'2018-06-25','�����߶���','����',75,2500,187500,'D00024','P00000129');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (243,'2018-06-28','17��','����',93,1800,167400,'D00190','P00000065');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (251,'2018-07-06','����','����',87,1000,87000,'D00236','P00000213');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (252,'2018-07-08','�䷹�ημ�','����',52,9000,468000,'D00170','P00000361');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (253,'2018-07-09','���ᰭ��','����',64,2000,128000,'D00231','P00000141');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (254,'2018-07-09','(��)�˻���Ĩ','����',71,600,42600,'D00226','P00000043');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (255,'2018-07-09','ȯŸ������','����',78,1500,117000,'D00050','P00000387');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (256,'2018-07-12','����Ĩ','����',78,2000,156000,'D00133','P00000229');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (257,'2018-07-12','������','����',73,800,58400,'D00102','P00000310');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (258,'2018-07-13','����','����',73,1200,87600,'D00012','P00000107');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (259,'2018-07-14','���������ﳯ����18P','����',64,5500,352000,'D00135','P00000296');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (260,'2018-07-14',' ���ʺ�Ʋ','����',51,1000,51000,'D00095','P00000013');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (261,'2018-07-15','1000�̱�����������','����',61,1000,61000,'D00058','P00000054');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (262,'2018-07-17','��ī�ݶ� 1.5PET','����',90,2000,180000,'D00145','P00000339');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (263,'2018-07-18','�ξ��','����',86,800,68800,'D00140','P00000147');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (264,'2018-07-18','���ڲ���','����',51,1200,61200,'D00110','P00000277');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (265,'2018-07-18','�����Ͼƿ�Ʈ��','����',94,2800,263200,'D00047','P00000187');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (266,'2018-07-19','���(3����)','����',72,1000,72000,'D00081','P00000093');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (267,'2018-07-19','�������� �ﳯ����18P','����',71,5500,390500,'D00061','P00000295');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (268,'2018-07-20','(��)�Ŷ��ū���','����',93,900,83700,'D00090','P00000041');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (269,'2018-07-20','ī���ĵ(��ī)','����',79,1000,79000,'D00076','P00000318');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (270,'2018-07-20','���������Ĩ��Ű','����',97,2500,242500,'D00210','P00000174');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (271,'2018-07-20','8000����','����',72,8000,576000,'D00013','P00000088');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (272,'2018-07-21','ī��Ÿ��','����',73,2000,146000,'D00060','P00000316');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (273,'2018-07-21','ȭ��Ʈ����ťƼ','����',89,1500,133500,'D00201','P00000386');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (274,'2018-07-22','������Į��������','����',82,1800,147600,'D00172','P00000275');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (275,'2018-07-22',' ���ϵ�(�ٴҶ�)','����',61,500,30500,'D00055','P00000017');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (276,'2018-07-22','¯���� ������(����)','����',61,1200,73200,'D00191','P00000300');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (277,'2018-07-25','���ϵ弼�����Ʈ(��)','����',95,2500,237500,'D00149','P00000153');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (278,'2018-07-25','���ٸ�','����',70,600,42000,'D00133','P00000258');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (279,'2018-07-25','���ϵ弼��(��)','����',77,2500,192500,'D00114','P00000151');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (280,'2018-07-26','6000����','����',83,6000,498000,'D00056','P00000083');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (281,'2018-07-26','����-�Ѷ��(175)','����',72,700,50400,'D00072','P00000116');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (282,'2018-07-28','������','����',79,1000,79000,'D00048','P00000247');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (283,'2018-07-28','��������Ʈ(4��)','����',91,2500,227500,'D00233','P00000127');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (302,'2018-08-08','���ͱ��̿�¡��','����',70,3000,210000,'D00161','P00000188');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (303,'2018-08-08','����¡��','����',70,3000,210000,'D00006','P00000304');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (304,'2018-08-10','Ŭ����1mg','����',82,3000,246000,'D00234','P00000346');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (305,'2018-08-11','�޴��� 119','����',92,3000,276000,'D00184','P00000391');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (306,'2018-08-11','�̴Ͻ�(��)','����',85,600,51000,'D00100','P00000177');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (307,'2018-08-12','(��)�ٳ���ű','����',51,600,30600,'D00220','P00000038');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (308,'2018-08-12','����-������(180)','����',83,1000,83000,'D00057','P00000113');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (309,'2018-08-12','��������','����',90,2000,180000,'D00230','P00000312');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (310,'2018-08-13','���Ҽ���','����',83,1800,149400,'D00034','P00000303');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (311,'2018-08-13','������','����',70,1800,126000,'D00003','P00000201');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (312,'2018-08-15','�������ϵ� 175��ĵ','����',59,600,35400,'D00164','P00000145');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (313,'2018-08-15','���ϸ���1000��','����',57,1000,57000,'D00156','P00000288');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (314,'2018-08-15','�㽬�ʰپƸ��','����',82,500,41000,'D00201','P00000380');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (315,'2018-08-15','��īĨ','����',90,2000,180000,'D00063','P00000366');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (316,'2018-08-15','�ڴ�200/24(��)','����',86,3000,258000,'D00029','P00000333');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (317,'2018-08-16','��Ǫ����','����',80,300,24000,'D00181','P00000214');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (318,'2018-08-17','���۶�20000','����',75,20000,1500000,'D00019','P00000218');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (319,'2018-08-17','(��)�ڴ�KL2CR5-1','����',90,12000,1080000,'D00002','P00000047');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (320,'2018-08-17','1000 ����������','����',93,1000,93000,'D00204','P00000049');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (321,'2018-08-18',' ����(ĳ������)','����',53,5000,265000,'D00061','P00000020');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (322,'2018-08-18','���û�','����',93,2500,232500,'D00225','P00000149');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (323,'2018-08-18','���ĸ�','����',94,700,65800,'D00135','P00000246');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (324,'2018-08-20','(��)�㽬�帵ũ','����',50,800,40000,'D00169','P00000048');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (325,'2018-08-21','��������(������)','����',95,1500,142500,'D00230','P00000256');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (326,'2018-08-22','������������ġ','����',52,1000,52000,'D00185','P00000122');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (327,'2018-08-22',' ��Ű��ũ��','����',53,4000,212000,'D00051','P00000026');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (328,'2018-08-23','�����Ͼƽ��۽�����','����',83,2800,232400,'D00109','P00000186');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (329,'2018-08-24','���߲���','����',97,1200,116400,'D00084','P00000124');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (330,'2018-08-24','PREMIER','����',59,2500,147500,'D00042','P00000089');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (331,'2018-08-24','����-�Ѷ��(180)','����',61,1000,61000,'D00067','P00000117');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (332,'2018-08-24','��縶��ƾ','����',84,1500,126000,'D00152','P00000198');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (333,'2018-08-25','�������Ŀ�ǹͽ�','����',97,1000,97000,'D00169','P00000382');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (334,'2018-08-27','�̳�� ������ ������','����',95,1800,171000,'D00001','P00000175');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (335,'2018-08-27','�����θǼ�','����',64,2500,160000,'D00143','P00000158');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (336,'2018-08-28','500�����ڼ���','����',54,500,27000,'D00182','P00000079');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (337,'2018-08-28','1500Ģ��','����',75,1500,112500,'D00002','P00000063');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (338,'2018-08-28','���-����','����',59,1500,88500,'D00161','P00000343');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (339,'2018-09-01','(��)������','����',66,600,39600,'D00147','P00000035');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (373,'2018-09-22','�����ý��丮ü��','����',55,1800,99000,'D00069','P00000168');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (374,'2018-09-23',' Ƽ     ��','����',85,4000,340000,'D00080','P00000029');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (375,'2018-09-23','ĸ��������Ʈ����','����',85,1000,85000,'D00115','P00000327');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (376,'2018-09-23','������','����',85,700,59500,'D00162','P00000238');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (377,'2018-09-23','��Ű��Ʈ�����̵�240','����',50,800,40000,'D00015','P00000237');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (378,'2018-09-23','����.������ 240��ĵ','����',83,1000,83000,'D00088','P00000364');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (379,'2018-09-24','������','����',89,1500,133500,'D00123','P00000278');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (380,'2018-09-25','(��)������','����',72,600,43200,'D00168','P00000035');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (381,'2018-09-25','�㽬�ʰپƸ��','����',60,500,30000,'D00123','P00000380');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (382,'2018-09-25','����������','����',97,1500,145500,'D00081','P00000095');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (383,'2018-09-25','ĸ��������Ʈ����','����',72,1000,72000,'D00176','P00000327');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (384,'2018-09-26','�����̴̹����ݷ�','����',95,1200,114000,'D00046','P00000135');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (385,'2018-09-27','����������','����',96,2500,240000,'D00224','P00000293');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (386,'2018-09-27','����������ĵ','����',90,800,72000,'D00067','P00000139');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (387,'2018-09-28','õ�����(��)','����',93,500,46500,'D00062','P00000306');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (388,'2018-09-28','����(�Ǽ�)','����',53,2500,132500,'D00038','P00000126');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (389,'2018-09-28','���÷�(Ȩ)','����',86,1500,129000,'D00033','P00000270');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (390,'2018-09-28','������CRV3','����',57,18000,1026000,'D00122','P00000138');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (391,'2018-09-28','�ƹ̳������','����',94,800,75200,'D00209','P00000240');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (392,'2018-10-01','������','����',99,500,49500,'D00102','P00000094');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (393,'2018-10-01','��Ƣ��','����',96,1200,115200,'D00210','P00000205');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (394,'2018-10-02','�Ұ����Ѹ�����¡��','����',97,3000,291000,'D00044','P00000196');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (395,'2018-10-03','��������-�볯','����',57,5000,285000,'D00105','P00000099');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (396,'2018-10-03','700 ��������Ŷ','����',66,700,46200,'D00199','P00000087');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (397,'2018-10-03','�Ż�����','����',79,1300,102700,'D00069','P00000232');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (398,'2018-10-04','�͸���','����',95,3000,285000,'D00002','P00000105');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (399,'2018-10-04','�ڴ�KCR2-1','����',51,7000,357000,'D00182','P00000335');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (400,'2018-10-05','��������(ȥ��)','����',82,1500,123000,'D00236','P00000257');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (401,'2018-10-05','��������Ʈ-2','����',62,2500,155000,'D00091','P00000128');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (402,'2018-10-06','����-������(175)','����',63,700,44100,'D00005','P00000112');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (403,'2018-10-06','���ְ���180','����',55,1000,55000,'D00182','P00000292');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (440,'2018-11-08','���� �� 240��ĵ','����',50,1000,50000,'D00154','P00000224');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (441,'2018-11-08','������ġ��','����',70,1500,105000,'D00057','P00000102');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (442,'2018-11-09','�޴��� 119','����',59,3000,177000,'D00111','P00000391');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (443,'2018-11-10','Ȩ��������(��)','����',50,1000,50000,'D00233','P00000383');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (444,'2018-11-11','����������','����',90,800,72000,'D00021','P00000264');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (445,'2018-11-13','���ϸ����ֹ�','����',75,5000,375000,'D00141','P00000290');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (446,'2018-11-13','1000�����ѳ��ʰ�����','����',77,1000,77000,'D00155','P00000050');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (447,'2018-11-14','�Ŷ�� ��','����',81,1500,121500,'D00075','P00000329');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (448,'2018-11-15','(��)������ġ��','����',80,1500,120000,'D00077','P00000036');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (449,'2018-11-17','ĸ��������Ʈ���','����',97,1000,97000,'D00042','P00000326');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (450,'2018-11-17','�׽�Ƽ','����',100,1500,150000,'D00028','P00000110');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (451,'2018-11-17','���ٲ���','����',55,1200,66000,'D00196','P00000225');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (452,'2018-11-20','����CN120','����',82,2500,205000,'D00046','P00000390');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (453,'2018-11-20','������(��Ʈ)','����',62,1300,80600,'D00001','P00000212');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (454,'2018-11-20','(��)�˻���Ĩ','����',100,600,60000,'D00223','P00000043');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (455,'2018-11-20','īǪġ��','����',62,1500,93000,'D00032','P00000321');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (456,'2018-11-21','���ڼ���','����',67,500,33500,'D00141','P00000308');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (457,'2018-11-23',' �� �� ��','����',73,1500,109500,'D00006','P00000030');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (458,'2018-11-23','ī��ī��ġ����','����',57,1500,85500,'D00158','P00000320');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (459,'2018-11-23','�����Ͼƿ�Ʈ��','����',93,2800,260400,'D00136','P00000187');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (460,'2018-11-23','(��)������ġ��','����',93,1500,139500,'D00117','P00000036');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (461,'2018-11-25','����','����',95,1000,95000,'D00077','P00000194');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (462,'2018-11-28','�̳�� ������ ������','����',59,1800,106200,'D00140','P00000175');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (463,'2018-11-28','Ű����','����',78,1000,78000,'D00138','P00000347');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (464,'2018-12-01','���-�ڵ�','����',68,15000,1020000,'D00160','P00000274');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (465,'2018-12-02','1500�����ķ����ڸ�','����',74,1500,111000,'D00045','P00000061');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (466,'2018-12-02','���ϵ弼���','����',86,2500,215000,'D00229','P00000155');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (467,'2018-12-04','��Ÿ �Ŀ�','����',55,1200,66000,'D00106','P00000199');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (468,'2018-12-04','��������(100��)','����',54,1500,81000,'D00131','P00000363');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (469,'2018-12-08','���͸�','����',85,1000,85000,'D00105','P00000190');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (470,'2018-12-08','��������(100��)','����',87,1500,130500,'D00020','P00000363');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (471,'2018-12-09','�Ұ���','����',93,1200,111600,'D00165','P00000234');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (472,'2018-12-09','�ڻ����500','����',88,1000,88000,'D00087','P00000338');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (473,'2018-12-09','5000ȭ��','����',92,5000,460000,'D00172','P00000077');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (474,'2018-12-11','�㽬�ʰپƸ��','����',77,500,38500,'D00121','P00000380');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (475,'2018-12-11','�������½�¯','����',89,1500,133500,'D00147','P00000171');
Insert into MYMEM.TBL_IOLIST (IO_ID,IO_DATE,IO_CNAME,IO_INOUT,IO_QUAN,IO_PRICE,IO_TOTAL,IO_DCODE,IO_PCODE) values (476,'2018-12-13','����-���','����',77,1000,77000,'D00168','P00000109');
REM INSERTING into MYMEM.TBL_MYTABLE
SET DEFINE OFF;
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (1,'ȫ�浿','010-2487-9856',84,89);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (2,'�̸���','010-3487-9856',56,89);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (3,'������','010-4487-9856',83,72);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (4,'�̼���','010-5487-9856',76,69);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (5,'�̹��','010-6487-9856',97,52);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (6,'�庸��','010-7487-9856',82,70);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (7,'�Ӳ���','010-8487-9856',74,76);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (8,'�̼���','010-9487-9856',96,87);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (9,'������','010-1487-9856',73,81);
Insert into MYMEM.TBL_MYTABLE (P_ID,P_NAME,P_TEL,P_KOR,P_ENG) values (10,'���߱�','010-1087-9856',53,55);
REM INSERTING into MYMEM.TBL_PRIMARY
SET DEFINE OFF;
Insert into MYMEM.TBL_PRIMARY (P_ID,P_NAME,P_TEL) values (0,'ȫ�浿','0001');
Insert into MYMEM.TBL_PRIMARY (P_ID,P_NAME,P_TEL) values (49783,'������','0002');
Insert into MYMEM.TBL_PRIMARY (P_ID,P_NAME,P_TEL) values (44523,'������','0002');
REM INSERTING into MYMEM.TBL_PRODUCT
SET DEFINE OFF;
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000001',' �� �� ��(���)',384,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000002',' �������(������)',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000003',' ������Ʈ',2745,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000004',' �� Ű ��',1647,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000005',' ������Ƽ(ȣ��)',2196,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000006',' �� Ÿ ��(����)',549,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000007',' ����(��ũ��)',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000008',' ���Ͻô�(Ŀ��)',384,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000009',' ���Ͻô�(����)',384,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000010',' ������Ŀ�ǽ���ũ',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000011',' ������',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000012',' ��ũ��',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000013',' ���ʺ�Ʋ',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000014',' ������(����)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000015',' ��(�ٴҶ�&Ŀ��)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000016',' ��(�ٴҶ�)',524,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000017',' ���ϵ�(�ٴҶ�)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000018',' ������(�ٴҶ�)',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000019',' ��    ��(Ŀ��)',2745,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000020',' ����(ĳ������)',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000021',' ���ȳ���',1647,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000022',' �ֹ���(������)',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000023',' �ֹ���(��.��)',274,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000024',' ī��������',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000025',' Ŀ�ǵ���',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000026',' ��Ű��ũ��',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000027',' Ŭ����(����)',2196,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000028',' ���Դ�(��)',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000029',' Ƽ     ��',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000030',' �� �� ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000031',' ��������',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000032',' �� �� ��',549,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000033','(��)ABC���ݷ�',887,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000034','(��)k400/36',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000035','(��)������',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000036','(��)������ġ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000037','(��)����ʹ��',497,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000038','(��)�ٳ���ű',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000039','(��)�����',411,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000040','(��)������ū���',null,900);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000041','(��)�Ŷ��ū���',532,900);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000042','(��)�˻���ĥ�������',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000043','(��)�˻���Ĩ',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000044','(��)���ĸ�',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000045','(��)�ڰ�ġ',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000046','(��)�̺�����',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000047','(��)�ڴ�KL2CR5-1',null,12000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000048','(��)�㽬�帵ũ',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000049','1000 ����������',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000050','1000�����ѳ��ʰ�����',591,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000051','1000��',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000052','1000��Ĩ',591,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000053','1000����',650,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000054','1000�̱�����������',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000055','1000����Ĩ��Ű',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000056','1000�عٶ�����ں�',591,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000057','1200 ABC����',709,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000058','13000����',5327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000059','1500 ����',976,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000060','1500 ����Ĩ',976,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000061','1500�����ķ����ڸ�',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000062','1500�ִ�Ÿ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000063','1500Ģ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000064','16000����',6557,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000065','17��',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000066','1800���߿��ο�',1172,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000067','1800�ķ�������',1121,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000068','2%�����Ҷ�DBH������ 500����',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000069','2%�����Ҷ�pet(�����)',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000070','2000��ĵ��',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000071','22000����',9016,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000072','3000�帲īī��56%',1775,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000073','500 ���人�����',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000074','500 ���ƿ¿ղ�Ʋ��',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000075','500 ����',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000076','5000����',2049,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000077','5000ȭ��',860,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000078','500����',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000079','500�����ڼ���',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000080','500��ĵ��',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000081','500��',327,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000082','500���Ͻ�����',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000083','6000����',null,6000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000084','6000ī��',2049,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000085','7+8ĩ��',0,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000086','700 ��ҹ�',436,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000087','700 ��������Ŷ',436,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000088','8000����',null,8000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000089','PREMIER',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000090','m&m''s �ǳ���ũ��',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000091','�Ǹ鼼��-��ġ',651,1100);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000092','�Ǹ鼼��-�Ұ��',651,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000093','���(3����)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000094','������',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000095','����������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000096','����',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000097','��������õ',221,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000098','����������',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000099','��������-�볯',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000100','��������-����',2622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000101','��������-�߳�',null,4500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000102','������ġ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000103','���������',1180,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000104','�ʹٸ�������',6557,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000105','�͸���',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000106','��ġ��߸�',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000107','����',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000108','����(���)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000109','����-���',622,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000110','�׽�Ƽ',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000111','�뷡������',1147,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000112','����-������(175)',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000113','����-������(180)',655,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000114','����-�˷ο�(180)',573,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000115','����-���ְ���(180)',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000116','����-�Ѷ��(175)',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000117','����-�Ѷ��(180)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000118','����-ȫ��(180)',573,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000119','���廩����',413,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000120','��ũ���ؽ� ���ؼ� ĸ60��',2407,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000121','�ٿ�����',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000122','������������ġ',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000123','���Ϲ��',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000124','���߲���',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000125','����(0.5)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000126','����(�Ǽ�)',1844,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000127','��������Ʈ(4��)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000128','��������Ʈ-2',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000129','�����߶���',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000130','�������ν�Ʈ',1434,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000131','���̼Ҵٱ׷�����ĵ',341,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000132','���̼Ҵٷ���ĵ',341,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000133','���̼Ҵپ�����Ʈ',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000134','���̼Ҵٿ�������Ʈ',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000135','�����̴̹����ݷ�',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000136','��(��)',1475,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000137','���÷���(��)',1549,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000138','������CRV3',null,18000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000139','����������ĵ',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000140','���������',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000141','���ᰭ��',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000142','����׷�',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000143','���',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000144','������������',515,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000145','�������ϵ� 175��ĵ',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000146','�������',0,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000147','�ξ��',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000148','��ũ����',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000149','���û�',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000150','������(����)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000151','���ϵ弼��(��)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000152','���ϵ弼��[�ڽ�]',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000153','���ϵ弼�����Ʈ(��)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000154','���ϵ弼�콴�۶���Ʈ',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000155','���ϵ弼���',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000156','���ϵ���(LSS)ONE',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000157','�����ζ���Ʈ',1844,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000158','�����θǼ�',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000159','�����ι̵��',1844,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000160','�����������÷���',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000161','���ϰ�����',409,900);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000162','������-�߳�',2704,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000163','�ƽ����̱�ī��ĵ',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000164','�ƽ���īǪġ��ĵ',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000165','�ƽ� �������� 20��',1803,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000166','��Ƽ��Ÿ ��',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000167','��Ƽ��Ÿ ĵ',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000168','�����ý��丮ü��',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000169','��յ���',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000170','���尩',409,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000171','�������½�¯',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000172','���������Ĩ��Ű',1639,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000173','��������̰ǻ�',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000174','���������Ĩ��Ű',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000175','�̳�� ������ ������',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000176','�̳�� ������ ������180��ĵ',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000177','�̴Ͻ�(��)',null,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000178','�̴���',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000179','�̴ָ��̵�˷ο��÷���',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000180','�ٷα����������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000181','�ٷ�ī��8804751701023',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000182','���Ѹ�',7377,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000183','�����',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000184','��彺Ÿŷ',647,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000185','�����Ͼƽ��۽���',2065,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000186','�����Ͼƽ��۽�����',2065,2800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000187','�����Ͼƿ�Ʈ��',null,2800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000188','���ͱ��̿�¡��',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000189','���ͱ�������45g',896,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000190','���͸�',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000191','���Ϳ���',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000192','����aromeI',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000193','�����̴���',901,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000194','����',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000195','����Ŀ��',8240,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000196','�Ұ����Ѹ�����¡��',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000197','�����׶���',341,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000198','��縶��ƾ',491,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000199','��Ÿ �Ŀ�',204,950);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000200','��Ÿ�Ŀ� 210����(�ڽ�)',null,1300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000201','������',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000202','�������ڳ�',413,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000203','���Ǿ�',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000204','���Ҹ�',1639,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000205','��Ƣ��',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000206','�Ƕ�ġ��',1967,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000207','��Ҽ�',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000208','�ﰢ�� ��',13934,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000209','��ټ�����',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000210','�����',386,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000211','��������',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000212','������(��Ʈ)',491,1300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000213','����',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000214','��Ǫ����',null,300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000215','��������',295,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000216','���������(����Ʈ)',null,1100);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000217','���۶�10000',1885,10000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000218','���۶�20000',null,20000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000219','���۶�25000',1885,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000220','������',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000221','�Ҷ�',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000222','�Ҷ�������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000223','�Һ���',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000224','���� �� 240��ĵ',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000225','���ٲ���',491,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000226','�������߰�',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000227','����������',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000228','����������������ݸ�',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000229','����Ĩ',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000230','��Ÿ���� ������ġ��Ŀ��',1803,3800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000231','�Ŷ��ū��߸�',555,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000232','�Ż�����',null,1300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000233','����(��)',1696,2300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000234','�Ұ���',491,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000235','���Ʈ��ġ�Ƹ�� 35g',737,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000236','��ũ��Ʈ���������̵�350',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000237','��Ű��Ʈ�����̵�240',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000238','������',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000239','�Ƹ��',586,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000240','�ƹ̳������',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000241','���̼Ÿ���õ�ڹ�',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000242','�˻���Ĩ',322,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000243','�Ϲٻ�ĵ',352,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000244','�ִϵ����Ϲ�24',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000245','��äũ��Ŀ',413,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000246','���ĸ�',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000247','������',409,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000248','����������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000249','����(��)',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000250','����Ǽ�',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000251','�����',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000252','���̽�',1311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000253','����',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000254','�����Ʈ',1639,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000255','�������',180,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000256','��������(������)',614,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000257','��������(ȥ��)',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000258','���ٸ�',286,600);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000259','������',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000260','����ũ���Ҵ�',436.5,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000261','������-��������',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000262','������-����',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000263','�������Ҵ� ������ĵ',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000264','����������',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000265','�����¿��Ͻ� �����',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000266','����������Ĩ��Ű',null,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000267','��¡�� ���ͱ��� 40g',919,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000268','������������',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000269','�հ���',622,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000270','���÷�(Ȩ)',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000271','���-�Ƶ�',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000272','���(��)-���',null,10000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000273','���-7000',1885,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000274','���-�ڵ�',null,15000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000275','������Į��������',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000276','����ĳ���A',4918,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000277','���ڲ���',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000278','������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000279','�������߸�',426,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000280','�̿¿��̵�ĵ',344,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000281','�ε��',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000282','�ε���',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000283','��ȸ����',245,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000284','��ȸ������',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000285','�ԾȰ�������Ĩ',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000286','�ڱ��ȫ�����ָ���?',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000287','�����ð�',327,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000288','���ϸ���1000��',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000289','���ϸ���3+',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000290','���ϸ����ֹ�',null,5000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000291','����(j)',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000292','���ְ���180',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000293','����������',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000294','��û����(��)',1465,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000295','�������� �ﳯ����18P',null,5500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000296','���������ﳯ����18P',null,5500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000297','����ķ�������',737,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000298','�Ｎ  P700',9016,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000299','�Ｎ �ν�Ź��',7377,13000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000300','¯���� ������(����)',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000301','��ing(���ͷ���)',983,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000302','��ing(ũ���̹���)',983,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000303','���Ҽ���',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000304','����¡��',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000305','���̽�(���Ͽ�)PET 200ML',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000306','õ�����(��)',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000307','�ʷϸŽ� 500ML',655,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000308','���ڼ���',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000309','����ƾƾ',655,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000310','������',null,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000311','����������Ĩ',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000312','��������',1311,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000313','Ĩ������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000314','Ĩ������¬©(��)',586,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000315','ĩ��',409,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000316','ī��Ÿ��',1183,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000317','īī��76%',622,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000318','ī���ĵ(��ī)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000319','ī���ī��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000320','ī��ī��ġ����',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000321','īǪġ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000322','īǪġ�뺴',null,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000323','īǪġ����',614,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000324','ī������(������)',286,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000325','ĭŸŸ(����Ŀ��)',819,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000326','ĸ��������Ʈ���',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000327','ĸ��������Ʈ����',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000328','Ŀ�ǳ�',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000329','�Ŷ�� ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000330','�Ŷ�� ��',819,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000331','�ڴ� ��ī AA',409,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000332','�ڴ�100/36',null,4000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000333','�ڴ�200/24(��)',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000334','�ڴ�K123LA-1(��)',2459,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000335','�ڴ�KCR2-1',null,7000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000336','�ڴ�KL2CR5-1',null,12000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000337','�ڴ���ȸ��(��)',null,12000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000338','�ڻ����500',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000339','��ī�ݶ� 1.5PET',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000340','��ī�ݶ�500ml',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000341','������ ����',368,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000342','�ݵ� ����240',null,1200);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000343','���-����',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000344','ū������',272,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000345','Ŭ����',2213,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000346','Ŭ����1mg',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000347','Ű����',null,1666.66666666666);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000348','Ű�����Ƹ��',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000349','Ű������Ű��',1758,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000350','Ų���̴�',450,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000351','Ų���̴�����',368,800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000352','Ÿ�Ӷ���Ʈ',null,2300);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000353','�ٴ���',null,1800);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000354','��ũ',436,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000355','���Ͻ�',0,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000356','���η��� ��ī(Ŀ��)',587,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000357','Ʈ�����̱�',524,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000358','��Ÿ�ս�Ÿŷ',512,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000359','�ȸ��Ƹ�Ʈ��',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000360','�ҽö��̳�',1721,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000361','�䷹�ημ�',5778,9000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000362','����ݶ� 500����',450,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000363','��������(100��)',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000364','����.������ 240��ĵ',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000365','��õ�Ҹ��ɸ� 1.2L',901,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000366','��īĨ',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000367','����ġī��ī��Ḷ���߶�',901,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000368','����Ƽ��',1844,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000369','������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000370','�����̾� �丶��',450,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000371','����Ŭ����������',1803,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000372','�����۽��������μ�',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000373','�ϱ⽺������ƼƯ��(��)',1704,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000374','�ϴú���',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000375','�����ݶ��',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000376','����Ʈ����ĵ',null,2000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000377','������',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000378','�عٶ�����ں�',591,700);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000379','���Ÿ�Ӹ��',1696,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000380','�㽬�ʰپƸ��',null,500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000381','������ӿ���',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000382','�������Ŀ�ǹͽ�',286,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000383','Ȩ��������(��)',null,1000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000384','ȫ���',491,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000385','ȭ�̺�̴Ϻ�',311,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000386','ȭ��Ʈ����ťƼ',null,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000387','ȯŸ������',622,1500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000388','ȯŸ������ĵ',368,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000389','�ķ����ͽ�',573,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000390','����CN120',1475,2500);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000391','�޴��� 119',null,3000);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000392','���� ������ 300��ĳ������',409,null);
Insert into MYMEM.TBL_PRODUCT (P_CODE,P_NAME,P_IPRICE,P_OPRICE) values ('P00000393','���߿�����',null,1000);
REM INSERTING into MYMEM.TBL_SCORE
SET DEFINE OFF;
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (103,'����',88,'S0001','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (178,'����',67,'S0001','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (228,'����',100,'S0001','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (379,'����',100,'S0001','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (476,'�̼�',70,'S0001','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (532,'����',91,'S0001','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (34,'����',61,'S0002','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (56,'�̼�',58,'S0002','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (66,'����',76,'S0002','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (214,'����',63,'S0002','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (274,'����',96,'S0002','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (573,'����',84,'S0002','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (12,'�̼�',73,'S0003','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (40,'����',84,'S0003','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (134,'����',96,'S0003','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (156,'����',85,'S0003','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (242,'����',66,'S0003','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (352,'����',59,'S0003','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (3,'����',90,'S0004','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (290,'����',95,'S0004','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (353,'����',94,'S0004','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (380,'����',56,'S0004','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (530,'����',74,'S0004','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (544,'�̼�',82,'S0004','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (54,'����',59,'S0005','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (175,'�̼�',54,'S0005','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (285,'����',52,'S0005','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (472,'����',99,'S0005','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (542,'����',74,'S0005','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (563,'����',76,'S0005','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (39,'����',82,'S0006','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (171,'����',76,'S0006','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (294,'����',61,'S0006','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (347,'�̼�',68,'S0006','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (552,'����',54,'S0006','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (598,'����',72,'S0006','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (13,'����',83,'S0007','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (148,'����',69,'S0007','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (398,'����',77,'S0007','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (415,'�̼�',75,'S0007','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (536,'����',79,'S0007','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (548,'����',95,'S0007','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (107,'����',92,'S0008','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (207,'����',91,'S0008','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (232,'����',100,'S0008','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (261,'�̼�',67,'S0008','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (432,'����',86,'S0008','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (451,'����',54,'S0008','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (196,'����',91,'S0009','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (238,'����',91,'S0009','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (309,'����',72,'S0009','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (323,'����',56,'S0009','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (397,'�̼�',67,'S0009','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (458,'����',53,'S0009','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (59,'����',74,'S0010','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (262,'����',64,'S0010','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (312,'����',69,'S0010','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (337,'����',52,'S0010','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (427,'�̼�',81,'S0010','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (579,'����',85,'S0010','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (72,'����',95,'S0011','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (176,'�̼�',97,'S0011','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (182,'����',86,'S0011','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (248,'����',56,'S0011','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (335,'����',89,'S0011','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (392,'����',79,'S0011','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (96,'����',86,'S0012','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (272,'����',67,'S0012','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (328,'����',72,'S0012','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (428,'����',81,'S0012','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (498,'����',63,'S0012','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (517,'�̼�',95,'S0012','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (37,'����',95,'S0013','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (151,'����',64,'S0013','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (345,'����',90,'S0013','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (369,'����',68,'S0013','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (393,'����',90,'S0013','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (399,'�̼�',59,'S0013','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (15,'����',81,'S0014','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (277,'�̼�',82,'S0014','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (289,'����',97,'S0014','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (306,'����',98,'S0014','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (401,'����',56,'S0014','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (471,'����',71,'S0014','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (1,'����',86,'S0015','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (95,'����',70,'S0015','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (147,'����',99,'S0015','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (381,'����',95,'S0015','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (396,'�̼�',70,'S0015','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (516,'����',82,'S0015','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (183,'����',51,'S0016','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (190,'����',77,'S0016','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (237,'����',97,'S0016','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (404,'����',51,'S0016','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (443,'�̼�',100,'S0016','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (513,'����',56,'S0016','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (80,'����',59,'S0017','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (105,'����',71,'S0017','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (141,'����',65,'S0017','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (194,'�̼�',74,'S0017','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (316,'����',57,'S0017','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (430,'����',72,'S0017','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (44,'�̼�',61,'S0018','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (90,'����',96,'S0018','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (122,'����',55,'S0018','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (343,'����',83,'S0018','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (440,'����',76,'S0018','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (510,'����',98,'S0018','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (117,'����',99,'S0019','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (189,'����',52,'S0019','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (286,'�̼�',73,'S0019','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (505,'����',59,'S0019','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (521,'����',95,'S0019','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (577,'����',84,'S0019','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (210,'����',75,'S0020','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (255,'����',91,'S0020','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (336,'����',58,'S0020','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (364,'�̼�',81,'S0020','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (416,'����',59,'S0020','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (433,'����',52,'S0020','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (100,'����',58,'S0021','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (106,'����',100,'S0021','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (325,'����',69,'S0021','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (366,'�̼�',89,'S0021','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (492,'����',91,'S0021','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (511,'����',73,'S0021','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (197,'�̼�',59,'S0022','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (243,'����',60,'S0022','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (322,'����',65,'S0022','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (326,'����',77,'S0022','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (527,'����',89,'S0022','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (562,'����',90,'S0022','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (7,'����',55,'S0023','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (139,'����',83,'S0023','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (142,'����',67,'S0023','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (270,'�̼�',51,'S0023','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (515,'����',95,'S0023','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (42,'����',56,'S0024','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (160,'�̼�',81,'S0024','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (177,'����',73,'S0024','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (342,'����',66,'S0024','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (22,'����',65,'S0025','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (130,'����',68,'S0025','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (372,'����',61,'S0025','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (465,'����',87,'S0025','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (49,'����',75,'S0026','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (97,'�̼�',92,'S0026','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (113,'����',70,'S0026','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (531,'����',52,'S0026','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (4,'����',52,'S0027','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (386,'����',60,'S0027','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (402,'�̼�',90,'S0027','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (538,'����',66,'S0027','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (98,'����',59,'S0028','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (332,'����',89,'S0028','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (371,'����',67,'S0028','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (464,'�̼�',68,'S0028','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (116,'����',83,'S0029','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (165,'����',51,'S0029','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (236,'�̼�',57,'S0029','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (481,'����',66,'S0029','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (172,'����',65,'S0030','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (198,'����',66,'S0030','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (420,'�̼�',94,'S0030','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (537,'����',61,'S0030','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (557,'����',76,'S0030','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (186,'����',95,'S0031','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (221,'����',83,'S0031','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (499,'�̼�',56,'S0031','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (501,'����',83,'S0031','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (304,'����',100,'S0032','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (315,'����',55,'S0032','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (412,'����',91,'S0032','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (450,'����',77,'S0032','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (188,'����',93,'S0033','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (200,'����',72,'S0033','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (565,'����',63,'S0033','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (591,'�̼�',50,'S0033','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (17,'����',81,'S0034','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (193,'����',88,'S0034','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (258,'����',94,'S0034','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (376,'�̼�',71,'S0034','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (57,'�̼�',69,'S0035','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (264,'����',85,'S0035','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (320,'����',81,'S0035','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (528,'����',75,'S0035','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (9,'����',81,'S0036','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (32,'����',80,'S0036','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (152,'����',54,'S0036','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (509,'����',58,'S0036','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (48,'����',62,'S0037','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (69,'����',70,'S0037','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (184,'����',74,'S0037','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (469,'����',73,'S0037','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (76,'����',88,'S0038','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (191,'����',66,'S0038','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (295,'����',73,'S0038','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (560,'����',95,'S0038','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (70,'����',78,'S0039','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (168,'����',56,'S0039','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (442,'�̼�',73,'S0039','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (491,'����',51,'S0039','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (93,'����',57,'S0040','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (108,'�̼�',56,'S0040','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (163,'����',77,'S0040','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (357,'����',55,'S0040','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (18,'����',59,'S0041','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (73,'����',53,'S0041','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (374,'����',57,'S0041','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (558,'�̼�',97,'S0041','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (77,'����',82,'S0042','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (120,'����',95,'S0042','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (149,'����',61,'S0042','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (455,'����',91,'S0042','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (496,'����',98,'S0042','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (209,'�̼�',63,'S0043','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (410,'����',72,'S0043','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (529,'����',76,'S0043','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (576,'����',87,'S0043','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (121,'�̼�',75,'S0044','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (140,'����',72,'S0044','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (284,'����',94,'S0044','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (424,'����',90,'S0044','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (219,'����',80,'S0045','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (426,'����',57,'S0045','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (480,'�̼�',87,'S0045','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (504,'����',99,'S0045','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (257,'����',52,'S0046','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (378,'����',62,'S0046','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (585,'�̼�',78,'S0046','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (592,'����',58,'S0046','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (281,'����',75,'S0047','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (339,'����',72,'S0047','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (417,'����',50,'S0047','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (518,'����',82,'S0047','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (5,'����',60,'S0048','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (170,'�̼�',54,'S0048','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (407,'����',64,'S0048','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (567,'����',96,'S0048','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (27,'����',90,'S0049','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (132,'����',74,'S0049','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (296,'����',66,'S0049','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (553,'����',55,'S0049','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (203,'����',58,'S0050','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (260,'����',83,'S0050','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (305,'����',89,'S0050','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (484,'����',72,'S0050','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (166,'����',59,'S0051','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (362,'����',59,'S0051','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (425,'�̼�',80,'S0051','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (434,'����',85,'S0051','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (593,'����',89,'S0051','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (61,'����',81,'S0052','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (91,'����',68,'S0052','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (135,'����',63,'S0052','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (384,'����',93,'S0052','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (444,'����',85,'S0052','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (506,'�̼�',79,'S0052','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (204,'����',70,'S0053','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (249,'����',62,'S0053','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (276,'����',63,'S0053','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (279,'����',86,'S0053','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (299,'�̼�',99,'S0053','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (502,'����',99,'S0053','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (14,'����',58,'S0054','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (101,'����',72,'S0054','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (216,'�̼�',95,'S0054','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (409,'����',61,'S0054','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (421,'����',69,'S0054','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (561,'����',70,'S0054','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (174,'����',81,'S0055','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (288,'����',90,'S0055','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (341,'����',53,'S0055','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (382,'�̼�',86,'S0055','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (468,'����',66,'S0055','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (584,'����',77,'S0055','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (118,'����',54,'S0056','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (131,'����',99,'S0056','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (169,'����',94,'S0056','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (235,'�̼�',68,'S0056','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (292,'����',77,'S0056','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (367,'����',100,'S0056','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (159,'����',57,'S0057','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (246,'����',92,'S0057','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (324,'����',97,'S0057','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (437,'����',64,'S0057','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (445,'�̼�',60,'S0057','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (566,'����',88,'S0057','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (88,'�̼�',87,'S0058','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (133,'����',92,'S0058','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (301,'����',66,'S0058','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (456,'����',89,'S0058','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (474,'����',77,'S0058','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (508,'����',97,'S0058','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (2,'����',53,'S0059','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (28,'����',89,'S0059','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (212,'����',66,'S0059','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (375,'����',54,'S0059','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (385,'����',54,'S0059','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (459,'�̼�',69,'S0059','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (29,'����',87,'S0060','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (205,'�̼�',70,'S0060','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (223,'����',58,'S0060','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (446,'����',76,'S0060','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (555,'����',100,'S0060','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (600,'����',86,'S0060','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (41,'����',57,'S0061','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (154,'����',87,'S0061','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (482,'����',51,'S0061','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (523,'�̼�',52,'S0061','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (535,'����',93,'S0061','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (547,'����',54,'S0061','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (94,'����',50,'S0062','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (220,'�̼�',96,'S0062','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (319,'����',80,'S0062','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (405,'����',76,'S0062','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (507,'����',55,'S0062','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (522,'����',82,'S0062','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (65,'����',75,'S0063','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (126,'�̼�',65,'S0063','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (213,'����',96,'S0063','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (333,'����',91,'S0063','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (495,'����',96,'S0063','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (582,'����',83,'S0063','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (82,'����',55,'S0064','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (115,'����',73,'S0064','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (167,'����',95,'S0064','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (267,'����',74,'S0064','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (313,'�̼�',70,'S0064','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (485,'����',59,'S0064','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (50,'�̼�',68,'S0065','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (74,'����',87,'S0065','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (146,'����',61,'S0065','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (252,'����',98,'S0065','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (387,'����',58,'S0065','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (575,'����',69,'S0065','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (67,'����',99,'S0066','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (327,'����',62,'S0066','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (351,'����',72,'S0066','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (448,'����',95,'S0066','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (478,'����',80,'S0066','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (494,'�̼�',81,'S0066','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (137,'����',74,'S0067','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (231,'����',58,'S0067','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (239,'�̼�',82,'S0067','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (308,'����',87,'S0067','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (435,'����',91,'S0067','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (559,'����',50,'S0067','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (51,'����',97,'S0068','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (143,'�̼�',90,'S0068','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (293,'����',51,'S0068','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (365,'����',68,'S0068','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (533,'����',75,'S0068','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (581,'����',99,'S0068','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (109,'����',94,'S0069','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (161,'�̼�',90,'S0069','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (317,'����',59,'S0069','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (370,'����',98,'S0069','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (439,'����',71,'S0069','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (453,'����',56,'S0069','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (127,'����',89,'S0070','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (179,'����',84,'S0070','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (227,'����',85,'S0070','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (350,'����',83,'S0070','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (589,'����',89,'S0070','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (594,'�̼�',79,'S0070','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (136,'����',98,'S0071','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (247,'����',51,'S0071','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (303,'����',67,'S0071','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (429,'�̼�',54,'S0071','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (463,'����',71,'S0071','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (597,'����',81,'S0071','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (457,'����',58,'S0072','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (479,'�̼�',74,'S0072','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (490,'����',64,'S0072','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (545,'����',52,'S0072','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (569,'����',82,'S0072','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (596,'����',61,'S0072','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (229,'����',69,'S0073','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (348,'����',66,'S0073','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (431,'�̼�',87,'S0073','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (441,'����',93,'S0073','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (475,'����',56,'S0073','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (534,'����',62,'S0073','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (225,'�̼�',82,'S0074','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (233,'����',89,'S0074','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (360,'����',85,'S0074','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (413,'����',71,'S0074','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (520,'����',58,'S0074','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (123,'����',54,'S0075','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (263,'����',66,'S0075','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (414,'����',73,'S0075','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (587,'����',95,'S0075','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (125,'����',84,'S0076','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (129,'�̼�',69,'S0076','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (187,'����',54,'S0076','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (318,'����',56,'S0076','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (52,'����',100,'S0077','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (241,'����',68,'S0077','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (266,'����',58,'S0077','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (512,'����',90,'S0077','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (43,'����',95,'S0078','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (153,'����',62,'S0078','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (253,'����',73,'S0078','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (487,'����',100,'S0078','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (23,'����',58,'S0079','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (138,'����',94,'S0079','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (334,'����',50,'S0079','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (568,'�̼�',53,'S0079','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (144,'�̼�',73,'S0080','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (280,'����',66,'S0080','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (541,'����',63,'S0080','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (549,'����',61,'S0080','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (8,'����',90,'S0081','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (16,'�̼�',68,'S0081','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (206,'����',63,'S0081','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (462,'����',82,'S0081','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (6,'����',50,'S0082','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (180,'����',63,'S0082','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (224,'����',83,'S0082','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (564,'�̼�',78,'S0082','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (35,'����',71,'S0083','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (244,'����',86,'S0083','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (291,'�̼�',99,'S0083','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (408,'����',69,'S0083','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (590,'����',95,'S0083','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (436,'����',96,'S0084','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (452,'�̼�',100,'S0084','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (525,'����',83,'S0084','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (543,'����',70,'S0084','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (45,'�̼�',87,'S0085','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (81,'����',83,'S0085','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (349,'����',63,'S0085','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (514,'����',72,'S0085','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (58,'����',65,'S0086','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (64,'����',70,'S0086','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (99,'����',96,'S0086','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (419,'�̼�',50,'S0086','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (36,'����',76,'S0087','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (269,'����',70,'S0087','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (580,'����',57,'S0087','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (588,'�̼�',50,'S0087','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (85,'����',94,'S0088','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (128,'����',72,'S0088','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (438,'����',90,'S0088','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (572,'����',96,'S0088','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (173,'����',57,'S0089','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (218,'����',96,'S0089','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (340,'����',67,'S0089','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (550,'�̼�',76,'S0089','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (26,'����',65,'S0090','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (111,'�̼�',94,'S0090','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (208,'����',91,'S0090','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (411,'����',54,'S0090','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (145,'����',71,'S0091','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (321,'����',99,'S0091','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (391,'����',62,'S0091','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (578,'�̼�',69,'S0091','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (46,'����',66,'S0092','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (164,'����',59,'S0092','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (283,'����',99,'S0092','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (586,'����',81,'S0092','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (62,'����',89,'S0093','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (222,'����',79,'S0093','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (470,'����',92,'S0093','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (473,'�̼�',91,'S0093','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (25,'����',85,'S0094','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (185,'����',85,'S0094','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (256,'����',64,'S0094','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (346,'����',72,'S0094','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (24,'����',68,'S0095','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (314,'����',84,'S0095','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (395,'����',52,'S0095','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (423,'�̼�',75,'S0095','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (11,'����',65,'S0096','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (112,'����',80,'S0096','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (298,'�̼�',76,'S0096','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (383,'����',51,'S0096','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (454,'����',76,'S0096','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (271,'����',63,'S0097','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (300,'����',71,'S0097','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (361,'����',82,'S0097','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (390,'����',51,'S0097','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (158,'����',61,'S0098','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (245,'�̼�',92,'S0098','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (418,'����',77,'S0098','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (556,'����',87,'S0098','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (60,'����',80,'S0099','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (226,'����',85,'S0099','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (368,'�̼�',71,'S0099','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (477,'����',97,'S0099','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (329,'����',51,'S0100','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (344,'����',62,'S0100','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (489,'�̼�',96,'S0100','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (571,'����',82,'S0100','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (388,'����',50,'S0023','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (86,'����',74,'S0024','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (250,'����',65,'S0024','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (84,'����',80,'S0025','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (400,'�̼�',93,'S0025','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (71,'����',73,'S0026','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (389,'����',59,'S0026','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (217,'����',59,'S0027','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (583,'����',64,'S0027','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (338,'����',73,'S0028','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (488,'����',90,'S0028','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (211,'����',67,'S0029','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (519,'����',96,'S0029','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (358,'����',70,'S0030','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (155,'����',51,'S0031','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (497,'����',60,'S0031','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (114,'�̼�',60,'S0032','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (394,'����',69,'S0032','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (162,'����',74,'S0033','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (503,'����',93,'S0033','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (79,'����',61,'S0034','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (310,'����',52,'S0034','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (251,'����',79,'S0035','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (461,'����',84,'S0035','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (19,'�̼�',52,'S0036','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (466,'����',86,'S0036','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (68,'�̼�',51,'S0037','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (422,'����',81,'S0037','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (78,'����',61,'S0038','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (539,'�̼�',87,'S0038','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (273,'����',53,'S0039','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (551,'����',52,'S0039','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (157,'����',75,'S0040','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (460,'����',54,'S0040','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (230,'����',100,'S0041','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (595,'����',57,'S0041','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (192,'�̼�',87,'S0042','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (38,'����',70,'S0043','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (467,'����',81,'S0043','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (47,'����',60,'S0044','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (181,'����',52,'S0044','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (201,'����',93,'S0045','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (447,'����',92,'S0045','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (63,'����',78,'S0046','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (540,'����',100,'S0046','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (297,'����',80,'S0047','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (500,'�̼�',58,'S0047','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (30,'����',95,'S0048','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (546,'����',63,'S0048','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (89,'����',62,'S0049','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (406,'�̼�',62,'S0049','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (240,'����',92,'S0050','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (355,'�̼�',79,'S0050','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (275,'����',98,'S0051','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (373,'����',57,'S0074','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (110,'�̼�',95,'S0075','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (359,'����',72,'S0075','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (124,'����',93,'S0076','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (202,'����',64,'S0076','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (195,'����',61,'S0077','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (403,'�̼�',77,'S0077','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (119,'����',62,'S0078','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (254,'�̼�',54,'S0078','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (87,'����',58,'S0079','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (524,'����',75,'S0079','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (331,'����',75,'S0080','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (554,'����',54,'S0080','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (31,'����',100,'S0081','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (574,'����',98,'S0081','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (215,'����',68,'S0082','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (570,'����',83,'S0082','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (259,'����',59,'S0083','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (268,'����',58,'S0084','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (493,'����',80,'S0084','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (21,'����',65,'S0085','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (278,'����',74,'S0085','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (33,'����',72,'S0086','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (75,'����',53,'S0086','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (20,'����',74,'S0087','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (363,'����',80,'S0087','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (53,'����',96,'S0088','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (265,'�̼�',63,'S0088','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (10,'����',54,'S0089','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (311,'����',79,'S0089','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (92,'����',91,'S0090','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (282,'����',84,'S0090','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (307,'����',100,'S0091','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (526,'����',65,'S0091','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (150,'�̼�',50,'S0092','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (483,'����',71,'S0092','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (104,'����',89,'S0093','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (486,'����',92,'S0093','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (199,'����',63,'S0094','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (449,'�̼�',59,'S0094','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (356,'����',72,'S0095','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (599,'����',62,'S0095','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (234,'����',76,'S0096','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (102,'����',52,'S0097','B0002');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (330,'�̼�',69,'S0097','B0006');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (83,'����',53,'S0098','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (354,'����',54,'S0098','B0001');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (55,'����',50,'S0099','B0005');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (287,'����',72,'S0099','B0003');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (302,'����',91,'S0100','B0004');
Insert into MYMEM.TBL_SCORE (G_ID,G_SUBJECT,G_SCORE,G_STNUM,G_BCODE) values (377,'����',50,'S0100','B0002');
REM INSERTING into MYMEM.TBL_STUDENT
SET DEFINE OFF;
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0001','���Ѽ�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0002','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0003','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0004','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0005','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0006','��뿬');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0007','���ȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0008','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0009','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0010','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0011','���ÿ�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0012','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0013','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0014','�ܼ���');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0015','�㼺��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0016','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0017','����ȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0018','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0019','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0020','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0021','�ε�ȯ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0022','��ä��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0023','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0024','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0025','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0026','�ڼ���');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0027','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0028','��äȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0029','�輼��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0030','��äȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0031','����ȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0032','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0033','���ؿ�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0034','����ȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0035','����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0036','�缺��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0037','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0038','���ȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0039','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0040','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0041','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0042','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0043','�Ҵ��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0044','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0045','���뿵');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0046','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0047','����ȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0048','�Ƶ���');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0049','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0050','�絿��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0051','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0052','��α�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0053','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0054','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0055','���α�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0056','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0057','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0058','��ä��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0059','��ȿ��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0060','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0061','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0062','���α�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0063','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0064','����ȣ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0065','��ä��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0066','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0067','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0068','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0069','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0070','��������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0071','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0072','���α�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0073','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0074','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0075','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0076','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0077','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0078','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0079','���¿�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0080','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0081','����ȯ');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0082','�ʽù�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0083','�ʿ���');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0084','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0085','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0086','����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0087','���α�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0088','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0089','���Ѽ�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0090','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0091','ǳ����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0092','���¿�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0093','�ʿ���');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0094','������');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0095','�Թμ�');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0096','�ؼ���');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0097','�����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0098','Ȳ����');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0099','�ﵿ��');
Insert into MYMEM.TBL_STUDENT (ST_NUM,ST_NAME) values ('S0100','������');
REM INSERTING into MYMEM.TBL_SUBJECT
SET DEFINE OFF;
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0001','����');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0002','����');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0003','����');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0004','����');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0005','����');
Insert into MYMEM.TBL_SUBJECT (SB_NUM,SB_NAME) values ('B0006','�̼�');
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
