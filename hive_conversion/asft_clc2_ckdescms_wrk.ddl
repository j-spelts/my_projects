

-- * DDL HEADER: dev.asft_clc2_ckdescms_wrk ***
-- *************************** TABLE HEADER ******************************
-- *
-- *     NAME   :  asft_clc2_ckdescms_wrk.sql
-- *
-- *     PURPOSE:  Creates dev.asft_clc2_ckdescms_wrk table
-- *
-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION
-- *               ETLAdmin  2017-04-19      Table created
-- *
-- ***********************************************************************
USE dev;
CREATE TABLE dev.asft_clc2_ckdescms_wrk
(
    dscode          VARCHAR(1)       ,
    dskeym          VARCHAR(10)      ,
    dsdesc          VARCHAR(30)      ,
    dsrate          DECIMAL(9,4)                        ,
    dsxref          VARCHAR(10)      ,
    dsglac          VARCHAR(30)      ,
    dsacti          VARCHAR(1)       ,
    dssftl          DECIMAL(5,2)                        ,
    dsexfl          DECIMAL(2,0)                        ,
    dseout          DECIMAL(2,0)                        ,
    dstcr1          VARCHAR(10)      ,
    dstcr2          VARCHAR(10)      ,
    dstcrp          VARCHAR(5)       ,
    dstcs1          VARCHAR(10)      ,
    dstcs2          VARCHAR(10)      ,
    dstok1          VARCHAR(10)      ,
    dstok2          VARCHAR(10)      ,
    dstokp          VARCHAR(5)       ,
    dsex01          VARCHAR(1)       ,
    dsex02          VARCHAR(1)       ,
    dsex03          VARCHAR(5)       ,
    dsex04          VARCHAR(5)       ,
    dsex05          VARCHAR(10)      ,
    dsex06          VARCHAR(10)      ,
    dsex07          DECIMAL(9,4)                        ,
    dsex08          DECIMAL(9,4)                        ,
    dsex09          DECIMAL(10,0)                       ,
    dsex10          DECIMAL(10,0)                       ,
    dsex11          DECIMAL(5,2)                        ,
    dsex12          DECIMAL(5,2)                        ,
    dsex13          DECIMAL(5,0)                        ,
    dsex14          DECIMAL(5,0)                        ,
    dsex15          DECIMAL(8,0)                        ,
    dsex16          DECIMAL(8,0)                        ,
    dsex17          VARCHAR(10)      ,
    dsex18          VARCHAR(10)      ,
    dsex19          VARCHAR(10)      ,
    dsex20          VARCHAR(10)      ,
    dsex21          VARCHAR(10)      ,
    dsex22          VARCHAR(10)      ,
    dsex23          VARCHAR(10)      ,
    dsex24          VARCHAR(10)      ,
    dsex25          VARCHAR(10)      ,
    dsex26          VARCHAR(10)      ,
	RRN_FIELD			VARCHAR(10) ,
	SV_MANIP_TYPE       CHAR(1)     ,
	SV_TRANS_ID         BIGINT      ,
	SV_TRANS_ROW_SEQ    INT         ,
	SV_SENDING_TABLE    VARCHAR(25) ,
	SV_SENDING_DBMS     VARCHAR(25) ,
	SV_SENDING_SERVER   VARCHAR(25) ,
	SV_TRANS_TIMESTAMP  VARCHAR(20) ,
	SV_TRANS_USERNAME   VARCHAR(25) ,
	SV_PROGRAM_NAME     VARCHAR(25) ,
	SV_JOB_NAME         VARCHAR(25) ,
	SV_JOB_USER         VARCHAR(25) ,
	SV_JOB_NUMBER       VARCHAR(25) ,
	SV_OP_TIMESTAMP     VARCHAR(20) ,
	SV_FILE_MEMBER      VARCHAR(25) ,
	SV_RECEIVER_LIBRARY VARCHAR(25) ,
	SV_RECEIVER_NAME    VARCHAR(25) ,
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
'hdfs://swiftdev1/user/hive/warehouse/dev.db/asft_clc2_ckdescms_wrk';

