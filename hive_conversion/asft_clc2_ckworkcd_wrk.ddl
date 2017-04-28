


-- * DDL HEADER: dev.asft_clc2_ckworkcd_wrk ***
-- *************************** TABLE HEADER ******************************
-- *
-- *     NAME   :  asft_clc2_ckworkcd_wrk.sql
-- *
-- *     PURPOSE:  Creates dev.asft_clc2_ckworkcd_wrk table
-- *
-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION
-- *               ETLAdmin  2017-04-19      Table created
-- *
-- ***********************************************************************
USE dev;
CREATE TABLE dev.asft_clc2_ckworkcd_wrk
    
(
    wccode          VARCHAR(5)      ,
    wcdesc          VARCHAR(15)      ,
    wcover          VARCHAR(1)      ,
    wcnonw          VARCHAR(1)       ,
    wcnonp          VARCHAR(1)       ,
    wcdadj          VARCHAR(1)       ,
    wcaccr          VARCHAR(1)       ,
    wcapab          VARCHAR(1)      ,
    wcglac          VARCHAR(30)      ,
    wccall          VARCHAR(1)       ,
    wcovpr          VARCHAR(1)      ,
    wcmin1          DECIMAL(5,2)                        ,
    wcmin2          DECIMAL(5,2)                        ,
    wcmin3          DECIMAL(5,2)                        ,
    wcmin4          DECIMAL(5,2)                        ,
    wcaft1          DECIMAL(5,2)                        ,
    wcaft2          DECIMAL(5,2)                        ,
    wcaft3          DECIMAL(5,2)                        ,
    wcaft4          DECIMAL(5,2)                        ,
    wccpc1          VARCHAR(5)      ,
    wccpc2          VARCHAR(5)       ,
    wccpc3          VARCHAR(5)       ,
    wccpc4          VARCHAR(5)      ,
    wccpc5          VARCHAR(5)      ,
    wccov1          DECIMAL(5,2)                        ,
    wccov2          DECIMAL(5,2)                        ,
    wccov3          DECIMAL(5,2)                        ,
    wccov4          DECIMAL(5,2)                        ,
    wccpd1          VARCHAR(5)      ,
    wccpd2          VARCHAR(5)       ,
    wccpd3          VARCHAR(5)       ,
    wccpd4          VARCHAR(5)     ,
    wccpd5          VARCHAR(5)      ,
    wcapcd          VARCHAR(5)      ,
    wcaaoh          DECIMAL(5,2)                        ,
    wcamin          DECIMAL(5,2)                        ,
    wcreqc          VARCHAR(1)      ,
    wcrald          VARCHAR(1)       ,
    wcovra          VARCHAR(1)      ,
    wcdfap          VARCHAR(1)       ,
    wcactc          VARCHAR(2)       ,
    wcpiuf          VARCHAR(2)      ,
    wcpuf2          VARCHAR(10)      ,
    wcnegb          VARCHAR(2)      ,
    wcrate          DECIMAL(7,4)                        ,
    wctker          DECIMAL(5,2)                        ,
    wcmult          DECIMAL(7,4)                        ,
    wcdiff          DECIMAL(7,4)                        ,
    wcpiec          VARCHAR(10)      ,
    wcaapc          VARCHAR(5)       ,
    wcisac          VARCHAR(1)       ,
    wcamth          VARCHAR(1)      ,
    wcoteq          VARCHAR(1)      ,
    wcnsft          VARCHAR(1)      ,
    wcaltc          VARCHAR(5)      ,
    wcxx01          VARCHAR(1)    ,
    wcxx02          VARCHAR(1)       ,
    wcxx03          VARCHAR(1)       ,
    wcxx04          VARCHAR(1)       ,
    wcxx05          VARCHAR(5)       ,
    wcxx06          VARCHAR(2)      ,
    wcxx07          VARCHAR(2)       ,
    wcxx08          VARCHAR(2)       ,
    wcxx09          DECIMAL(5,2)                        ,
    wcxx10          DECIMAL(7,4)                        ,
    wcxx11          DECIMAL(5,2)                        ,
    wcxx12          DECIMAL(5,2)                        ,
    wcxx13          DECIMAL(7,4)                        ,
    wcxx14          DECIMAL(7,4)                        ,
    wcxx15          DECIMAL(6,0)                        ,
    wcxx16          DECIMAL(6,0)                        ,
    wcxx17          VARCHAR(10)      ,
    wcxx18          VARCHAR(10)      ,
    wcxx19          VARCHAR(10)      ,
    wcxx20          VARCHAR(10)     ,
    wcxx21          VARCHAR(1)      ,
    wcxx22          VARCHAR(1)       ,
    wcxx23          VARCHAR(1)       ,
    wcxx24          VARCHAR(1)       ,
    wcxx25          VARCHAR(2)      ,
    wcxx26          VARCHAR(2)       ,
    wcxx27          VARCHAR(2)       ,
    wcxx28          VARCHAR(2)       ,
    wcxx29          VARCHAR(5)       ,
    wcxx30          VARCHAR(5)       ,
    wcxx31          VARCHAR(5)      ,
    wcxx32          VARCHAR(5)      ,
    wcxx33          VARCHAR(10)     ,
    wcxx34          VARCHAR(10)      ,
    wcxx35          VARCHAR(10)     ,
    wcxx36          VARCHAR(10)      ,
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
'hdfs://swiftdev1/user/hive/warehouse/dev.db/asft_clc2_ckworkcd_wrk';

