 -- This table lists awards from the Golden Ticket Awards given to
 -- parks and rollercoasters voted the best in each respective category.

CREATE TABLE "112FARROS"."XAWARD"
( "AWARD_ID" NUMBER NOT NULL ENABLE,
"AWARD_NAME" VARCHAR2(20 BYTE), "AWARD_YEAR" NUMBER,
CONSTRAINT "PK_AWID" PRIMARY KEY ("AWARD_ID");