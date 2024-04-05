-- This table lists each park in the database with its state location and it’s operating company if it is a part of a chain.

CREATE TABLE "112FARROS"."XPARK"
( "PARK_NUM" NUMBER NOT NULL ENABLE,
"PARK_NAME" VARCHAR2(40 BYTE), "PARK_LOC" VARCHAR2(20 BYTE), "PARK_CHAIN" VARCHAR2(20 BYTE),
CONSTRAINT "PK_PNUM" PRIMARY KEY ("PARK_NUM")