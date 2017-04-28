


-- * DDL HEADER: dev.asft_clc2_ckstatus_wrk ***
-- *************************** TABLE HEADER ******************************
-- *
-- *     NAME   :  asft_clc2_ckstatus_wrk.sql
-- *
-- *     PURPOSE:  Creates dev.asft_clc2_ckstatus_wrk table
-- *
-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION
-- *               ETLAdmin  2017-04-19      Table created
-- *
-- ***********************************************************************
USE dev;
CREATE TABLE dev.asft_clc2_ckstatus_wrk
    
(
    stcode          VARCHAR(1)       ,
    stdesc          VARCHAR(15)     ,
    stclck          VARCHAR(1)       ,
    sttmds          VARCHAR(1)      ,
	RRN_FIELD           VARCHAR(10),
SV_MANIP_TYPE       CHAR(1),
SV_TRANS_ID         BIGINT,
SV_TRANS_ROW_SEQ    INT,
SV_SENDING_TABLE    VARCHAR(25),
SV_SENDING_DBMS     VARCHAR(25),
SV_SENDING_SERVER   VARCHAR(25),
SV_TRANS_TIMESTAMP  VARCHAR(20),
SV_TRANS_USERNAME   VARCHAR(25),
SV_PROGRAM_NAME     VARCHAR(25),
SV_JOB_NAME         VARCHAR(25),
SV_JOB_USER         VARCHAR(25),
SV_JOB_NUMBER       VARCHAR(25),
SV_OP_TIMESTAMP     VARCHAR(20),
SV_FILE_MEMBER      VARCHAR(25),
SV_RECEIVER_LIBRARY VARCHAR(25),
SV_RECEIVER_NAME    VARCHAR(25),
SV_JOURNAL_SEQNO    BIGINT
)ROW FORMAT SERDE
'org.apache.hadoop.hive.contrib.serde2.MultiDelimitSerDe'
WITH SERDEPROPERTIES (
'field.delim'='\",\"')
STORED AS INPUTFORMAT
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://swiftdev1/user/hive/warehouse/dev.db/asft_clc2_ckstatus_wrk';

