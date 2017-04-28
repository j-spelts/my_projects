



-- * DDL HEADER: dev.asft_fadb_fapab_wrk ***
-- *************************** TABLE HEADER ******************************
-- *
-- *     NAME   :  asft_fadb_fapab_wrk.sql
-- *
-- *     PURPOSE:  Creates dev.asft_fadb_fapab_wrk table
-- *
-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION
-- *               ETLAdmin  2017-04-19      Table created
-- *
-- ***********************************************************************
USE dev;
CREATE TABLE dev.asft_fadb_fapab_wrk
   
(
    abassn          DECIMAL(9,0)                        ,
    abco            VARCHAR(3)       ,
    abassu          VARCHAR(13)      ,
    abassc          VARCHAR(3)       ,
    abdesc          VARCHAR(30)      ,
    abalcn          DECIMAL(9,0)                        ,
    abplcn          DECIMAL(9,0)                        ,
    abacq           VARCHAR(20)      ,
    abbas           DECIMAL(15,2)                       ,
    absern          VARCHAR(20)      ,
    abquan          DECIMAL(9,0)                        ,
    abdeh           DECIMAL(6,0)                        ,
    abde8           DECIMAL(8,0)                        ,
    abdee           VARCHAR(10)      ,
    abdepr          VARCHAR(1)       ,
    abstat          VARCHAR(1)       ,
    abaflg          VARCHAR(1)       ,
    abgflg          VARCHAR(1)       ,
    abseth          DECIMAL(6,0)                        ,
    abtime          DECIMAL(6,0)                        ,
    abwsid          VARCHAR(10)      ,
    abusid          VARCHAR(10)      ,
    abtxt           VARCHAR(1)       ,
    abuser          VARCHAR(1)       ,
    abcorp          VARCHAR(1)       ,
    aboth           VARCHAR(1)       ,
    ablse           VARCHAR(1)       ,
    abmain          VARCHAR(1)       ,
    abins           VARCHAR(1)       ,
    abcip           VARCHAR(1)       ,
    abret           VARCHAR(1)       ,
    abtasn          DECIMAL(9,0)                        ,
    abacyr          DECIMAL(4,0)                        ,
    abacsy          DECIMAL(1,0)                        ,
    abacmo          DECIMAL(2,0)                        ,
    abapf           VARCHAR(1)       ,
    abnbr           DECIMAL(9,0)                        ,
    abtco           VARCHAR(3)       ,
    abmodn          VARCHAR(13)      ,
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
'hdfs://swiftdev1/user/hive/warehouse/dev.db/asft_fadb_fapab_wrk';



