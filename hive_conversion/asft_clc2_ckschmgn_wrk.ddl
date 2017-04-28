

-- * DDL HEADER: dev.asft_clc2_ckschmgn_wrk ***
-- *************************** TABLE HEADER ******************************
-- *
-- *     NAME   :  asft_clc2_ckschmgn_wrk.sql
-- *
-- *     PURPOSE:  Creates dev.asft_clc2_ckschmgn_wrk table
-- *
-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION
-- *               ETLAdmin  2017-04-19      Table created
-- *
-- ***********************************************************************
USE dev;
CREATE TABLE dev.asft_clc2_ckschmgn_wrk
    
(
    smsced          VARCHAR(3)       ,
    smdesc          VARCHAR(30)     ,
    smerly          DECIMAL(4,2)                        ,
    smlate          DECIMAL(4,2)                        ,
    smmabs          DECIMAL(3,0)                        ,
    smmabl          DECIMAL(3,0)                        ,
    smmael          DECIMAL(3,0)                        ,
    smmaes          DECIMAL(3,0)                        ,
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
'hdfs://swiftdev1/user/hive/warehouse/dev.db/asft_clc2_ckschmgn_wrk'; 

