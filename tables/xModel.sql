-- This table describes the finer details of a rollercoaster’s statistics. The model name is usually 
-- manufacturer designated and specifies the major unique characteristics of the coaster. The model type 
-- refers to the support structure material, and also listed is the coaster’s maximum height, track length, and top speed.

CREATE TABLE "112FARROS"."XMODEL"
( "MOD_NUM" NUMBER NOT NULL ENABLE,
"MOD_NAME" VARCHAR2(40 BYTE), "MOD_TYPE" VARCHAR2(20 BYTE), "HEIGHT" NUMBER,
"LENGTH" NUMBER,
"SPEED" NUMBER,
CONSTRAINT "PK_MDNUM" PRIMARY KEY ("MOD_NUM")