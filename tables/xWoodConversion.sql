-- This table lists all coasters which have undergone an RMC conversion with it’s former name and conversion year.

CREATE TABLE "112FARROS"."XWOODCONVERSION" ( "COAST_NUM" NUMBER NOT NULL ENABLE,
"FORM_NAME" VARCHAR2(20 BYTE), "CONVERS_YEAR" NUMBER,
CONSTRAINT "PK_WOODC" PRIMARY KEY ("COAST_NUM")