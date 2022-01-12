--------------------------------------------------------
--  DDL for Table SEP_REALTY_AUCTION
--------------------------------------------------------

  CREATE TABLE "SEP_REALTY_AUCTION"
   (	"AUCTION_INDEX" NUMBER, 
	"AUCTION_NAME" VARCHAR2(20 BYTE), 
	"AUCTION_PRICE" VARCHAR2(20 BYTE), 
	"AUCTION_DATE" DATE, 
	"AUCTION_USERID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_REALTY_BOARD
--------------------------------------------------------

  CREATE TABLE "SEP_REALTY_BOARD" 
   (	"BORDER_INDEX" NUMBER(*,0), 
	"BORDER_TITLE" VARCHAR2(20 BYTE), 
	"BORDER_USERID" VARCHAR2(20 BYTE), 
	"BORDER_CONTENT" VARCHAR2(20 BYTE), 
	"BORDER_DATE" DATE, 
	"BORDER_USERNAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_REALTY_REPLT
--------------------------------------------------------

  CREATE TABLE "SEP_REALTY_REPLT" 
   (	"BOARD_INDEX" NUMBER, 
	"REPLY_PARENT" NUMBER, 
	"REPLY_DEPTH" NUMBER, 
	"REPLY_USERID" VARCHAR2(20 BYTE), 
	"REPLY_USERNAME" VARCHAR2(20 BYTE), 
	"REPLY_REPLY" VARCHAR2(200 BYTE), 
	"REPLY_DATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_REALTY_TRADING
--------------------------------------------------------

  CREATE TABLE "SEP_REALTY_TRADING"
   (	"TRADING_INDEX" NUMBER, 
	"TRADING_TITLE" VARCHAR2(20 BYTE), 
	"TRADING_USERID" VARCHAR2(20 BYTE), 
	"TRADING_USERNAME" VARCHAR2(20 BYTE), 
	"TRADING_CONTEXT" VARCHAR2(20 BYTE), 
	"TRADING_DATE" DATE, 
	"TRADING_REPLY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_STOCK_BOARD
--------------------------------------------------------

  CREATE TABLE "SEP_STOCK_BOARD" 
   (	"BORDER_INDEX" NUMBER(*,0), 
	"BORDER_TITLE" VARCHAR2(20 BYTE), 
	"BORDER_USERID" VARCHAR2(20 BYTE), 
	"BORDER_CONTENT" VARCHAR2(20 BYTE), 
	"BORDER_DATE" DATE, 
	"BORDER_USERNAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_STOCK_NEWS
--------------------------------------------------------

  CREATE TABLE "SEP_STOCK_NEWS"  
   (	"NEWS_INDEX" NUMBER, 
	"NEWS_TITLE" VARCHAR2(20 BYTE), 
	"NEWS_CONTENT" VARCHAR2(20 BYTE), 
	"NEWS_DATE" DATE, 
	"NEWS_USERID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_STOCK_REPLT
--------------------------------------------------------

  CREATE TABLE "SEP_STOCK_REPLT" 
   (	"BOARD_INDEX" NUMBER, 
	"REPLY_PARENT" NUMBER, 
	"REPLY_DEPTH" NUMBER, 
	"REPLY_USERID" VARCHAR2(20 BYTE), 
	"REPLY_USERNAME" VARCHAR2(20 BYTE), 
	"REPLY_REPLY" VARCHAR2(200 BYTE), 
	"REPLY_DATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_STOCK_TALK
--------------------------------------------------------

  CREATE TABLE "SEP_STOCK_TALK" 
   (	"TALK_INDEX" NUMBER, 
	"TALK_TITLE" VARCHAR2(20 BYTE), 
	"TALK_USERID" VARCHAR2(20 BYTE), 
	"TALK_CONTENT" VARCHAR2(20 BYTE), 
	"TALK_DATE" DATE, 
	"TALK_REPLYID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEP_USER
--------------------------------------------------------

  CREATE TABLE "SEP_USER" 
   (	"USER_INDEX" NUMBER(*,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_PW" VARCHAR2(20 BYTE), 
	"USER_EMAILID" VARCHAR2(40 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"USER_EMAILWEB" VARCHAR2(20 BYTE), 
	"USER_PHONE_NUMBER_HEAD" NUMBER, 
	"USER_PHONE_NUMBER_MID" NUMBER, 
	"USER_PHONE_NUMBER_END" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEP_REALTY_AUCTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEP_REALTY_AUCTION_PK" ON "SEP_REALTY_AUCTION" ("AUCTION_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEP_REALTY_BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEP_REALTY_BOARD_PK" ON "SEP_REALTY_BOARD" ("BORDER_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEP_REALTY_TRADING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEP_REALTY_TRADING_PK" ON "SEP_REALTY_TRADING" ("TRADING_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEP_STOCK_BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEP_STOCK_BOARD_PK" ON "SEP_STOCK_BOARD" ("BORDER_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEP_STOCK_NEWS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX ."SEP_STOCK_NEWS_PK" ON "SEP_STOCK_NEWS" ("NEWS_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEP_STOCK_TALK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEP_STOCK_TALK_PK" ON "SEP_STOCK_TALK" ("TALK_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEP_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEP_USER_PK" ON "SEP_USER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SEP_REALTY_AUCTION
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_AUCTION" MODIFY ("AUCTION_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_REALTY_AUCTION" ADD CONSTRAINT "SEP_REALTY_AUCTION_PK" PRIMARY KEY ("AUCTION_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEP_REALTY_BOARD
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_BOARD" MODIFY ("BORDER_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_REALTY_BOARD" MODIFY ("BORDER_USERNAME" NOT NULL ENABLE);
  ALTER TABLE "SEP_REALTY_BOARD" ADD CONSTRAINT "SEP_REALTY_BOARD_PK" PRIMARY KEY ("BORDER_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEP_REALTY_REPLT
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_REPLT" MODIFY ("BOARD_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_REALTY_REPLT" MODIFY ("REPLY_REPLY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEP_REALTY_TRADING
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_TRADING" MODIFY ("TRADING_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_REALTY_TRADING" ADD CONSTRAINT "SEP_REALTY_TRADING_PK" PRIMARY KEY ("TRADING_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEP_STOCK_BOARD
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_BOARD" MODIFY ("BORDER_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_STOCK_BOARD" MODIFY ("BORDER_USERNAME" NOT NULL ENABLE);
  ALTER TABLE "SEP_STOCK_BOARD" ADD CONSTRAINT "SEP_STOCK_BOARD_PK" PRIMARY KEY ("BORDER_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEP_STOCK_NEWS
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_NEWS" MODIFY ("NEWS_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_STOCK_NEWS" ADD CONSTRAINT "SEP_STOCK_NEWS_PK" PRIMARY KEY ("NEWS_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEP_STOCK_REPLT
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_REPLT" MODIFY ("BOARD_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_STOCK_REPLT" MODIFY ("REPLY_REPLY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEP_STOCK_TALK
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_TALK" MODIFY ("TALK_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_STOCK_TALK" MODIFY ("TALK_REPLYID" NOT NULL ENABLE);
  ALTER TABLE "SEP_STOCK_TALK" ADD CONSTRAINT "SEP_STOCK_TALK_PK" PRIMARY KEY ("TALK_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEP_USER
--------------------------------------------------------

  ALTER TABLE "SEP_USER" MODIFY ("USER_INDEX" NOT NULL ENABLE);
  ALTER TABLE "SEP_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SEP_USER" MODIFY ("USER_PW" NOT NULL ENABLE);
  ALTER TABLE "SEP_USER" MODIFY ("USER_EMAILID" NOT NULL ENABLE);
  ALTER TABLE "SEP_USER" ADD CONSTRAINT "SEP_USER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_REALTY_AUCTION
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_AUCTION" ADD CONSTRAINT "SEP_REALTY_AUCTION_FK1" FOREIGN KEY ("AUCTION_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_REALTY_BOARD
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_BOARD" ADD CONSTRAINT "SEP_REALTY_BOARD_FK1" FOREIGN KEY ("BORDER_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_REALTY_REPLT
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_REPLT" ADD CONSTRAINT "SEP_REALTY_REPLT_FK1" FOREIGN KEY ("REPLY_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
  ALTER TABLE "SEP_REALTY_REPLT" ADD CONSTRAINT "SEP_REALTY_REPLT_FK2" FOREIGN KEY ("BOARD_INDEX")
	  REFERENCES "SEP_REALTY_TRADING" ("TRADING_INDEX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_REALTY_TRADING
--------------------------------------------------------

  ALTER TABLE "SEP_REALTY_TRADING" ADD CONSTRAINT "SEP_REALTY_TRADING_FK1" FOREIGN KEY ("TRADING_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_STOCK_BOARD
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_BOARD" ADD CONSTRAINT "SEP_STOCK_BOARD_FK1" FOREIGN KEY ("BORDER_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_STOCK_NEWS
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_NEWS" ADD CONSTRAINT "SEP_STOCK_NEWS_FK1" FOREIGN KEY ("NEWS_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_STOCK_REPLT
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_REPLT" ADD CONSTRAINT "SEP_STOCK_REPLT_FK1" FOREIGN KEY ("REPLY_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
  ALTER TABLE "SEP_STOCK_REPLT" ADD CONSTRAINT "SEP_STOCK_REPLT_FK2" FOREIGN KEY ("BOARD_INDEX")
	  REFERENCES "SEP_STOCK_TALK" ("TALK_INDEX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEP_STOCK_TALK
--------------------------------------------------------

  ALTER TABLE "SEP_STOCK_TALK" ADD CONSTRAINT "SEP_STOCK_TALK_FK1" FOREIGN KEY ("TALK_USERID")
	  REFERENCES "SEP_USER" ("USER_ID") ENABLE;
