-- This table lists the several of the biggest rollercoaster manufacturers
-- in the industry along with each’s home country.

CREATE TABLE "112FARROS"."XMAKE"
( "MAKE_NUM" NUMBER NOT NULL ENABLE,
"MAKE_NAME" VARCHAR2(40 BYTE), "MAKE_LOC" VARCHAR2(20 BYTE),
CONSTRAINT "PK_MKNUM" PRIMARY KEY ("MAKE_NUM")