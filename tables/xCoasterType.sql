-- This table joins each rollercoaster with its manufacturer from the Make table, and specific model 
-- specification from the Model table.

CREATE TABLE "112FARROS"."XCOASTERTYPE"
( "COAST_NUM" NUMBER NOT NULL ENABLE,
"MAKE_NUM" NUMBER, "MOD_NUM" NUMBER,
CONSTRAINT "PK_CTNUM" PRIMARY KEY ("COAST_NUM") TABLESPACE "USERS" ) ENABLE,
CONSTRAINT "FK_MKNUM" FOREIGN KEY ("MAKE_NUM") REFERENCES "112FARROS"."XMAKE" ("MAKE_NUM") ENABLE,
CONSTRAINT "FK_MDNUM" FOREIGN KEY ("MOD_NUM") REFERENCES "112FARROS"."XMODEL" ("MOD_NUM") ENABLE
) SEGMENT CREATION IMMEDIATE;