
-- create table
  CREATE TABLE "TSW"."CUSTOMER" 
   (	"CUSTOMERID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"COLUMN1" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("CUSTOMERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   );
   
-- 테이블 내용 삭제 및 시퀀스 생성, 시퀀스 1로 초기화
delete from customer;
drop sequence customer_idx_seq;
create sequence customer_idx_seq;