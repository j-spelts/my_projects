

-- * DDL HEADER: dev.asft_clc2_cktimefl_wrk ***
-- *************************** TABLE HEADER ******************************
-- *
-- *     NAME   :  asft_clc2_cktimefl_wrk.sql
-- *
-- *     PURPOSE:  Creates dev.asft_clc2_cktimefl_wrk table
-- *
-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION
-- *               ETLAdmin  2017-04-19      Table created
-- *
-- ***********************************************************************
USE dev;
CREATE TABLE dev.asft_clc2_cktimefl_wrk
    
(
    ticono          DECIMAL(2,0)                        ,
    tiempn          DECIMAL(9,0)                        ,
    titime          DECIMAL(14,0)                       ,
    tiphst          VARCHAR(1)       ,
    tibadg          DECIMAL(9,0)                        ,
    tisec1          VARCHAR(10)      ,
    tisec2          VARCHAR(10)     ,
    tisec3          VARCHAR(10)     ,
    tisec4          VARCHAR(10)    ,
    tisec5          VARCHAR(10)     ,
    tisec6          VARCHAR(10)     ,
    tisec7          VARCHAR(10)    ,
    tiptyp          VARCHAR(1)       ,
    titcod          VARCHAR(5)       ,
    tisced          VARCHAR(3)       ,
    tishft          VARCHAR(1)      ,
    tigrup          VARCHAR(2)      ,
    tistts          VARCHAR(1)       ,
    tiprat          DECIMAL(9,4)                        ,
    tipra2          DECIMAL(9,4)                        ,
    tipra3          DECIMAL(9,4)                        ,
    tifreq          VARCHAR(1)       ,
    tirald          VARCHAR(1)       ,
    tiotra          DECIMAL(7,2)                        ,
    tiotby          VARCHAR(1)      ,
    tidown          DECIMAL(1,0)                        ,
    tidowl          VARCHAR(10)      ,
    ticomp          VARCHAR(1)       ,
    tidlnt          DECIMAL(5,2)                        ,
    tiatim          DECIMAL(14,0)                       ,
    tiatom          DECIMAL(14,0)                       ,
    tiaetm          DECIMAL(5,2)                        ,
    tirtim          DECIMAL(14,0)                       ,
    tirtom          DECIMAL(14,0)                       ,
    tiretm          DECIMAL(5,2)                        ,
    tistim          DECIMAL(14,0)                       ,
    tistom          DECIMAL(14,0)                       ,
    tisetm          DECIMAL(5,2)                        ,
    tidiff          DECIMAL(7,4)                        ,
    tisear          VARCHAR(20)     ,
    tigenr          VARCHAR(1)      ,
    tibhol          VARCHAR(1)     ,
    tiahol          VARCHAR(1)      ,
    tipc01          VARCHAR(5)      ,
    tipc02          VARCHAR(5)      ,
    tipc03          VARCHAR(5)      ,
    tipc04          VARCHAR(5)    ,
    tipc05          VARCHAR(5)      ,
    tipc06          VARCHAR(5)      ,
    tipc07          VARCHAR(5)      ,
    tipc08          VARCHAR(5)    ,
    tipc09          VARCHAR(5)       ,
    tipc10          VARCHAR(5)       ,
    tihr01          DECIMAL(5,2)                        ,
    tihr02          DECIMAL(5,2)                        ,
    tihr03          DECIMAL(5,2)                        ,
    tihr04          DECIMAL(5,2)                        ,
    tihr05          DECIMAL(5,2)                        ,
    tihr06          DECIMAL(5,2)                        ,
    tihr07          DECIMAL(5,2)                        ,
    tihr08          DECIMAL(5,2)                        ,
    tihr09          DECIMAL(5,2)                        ,
    tihr10          DECIMAL(5,2)                        ,
    tispec          DECIMAL(4,2)                        ,
    ticonf          VARCHAR(1)       ,
    ticlck          VARCHAR(10)     ,
    tihrs1          DECIMAL(5,2)                        ,
    tihrs2          DECIMAL(5,2)                        ,
    tihrs3          DECIMAL(5,2)                        ,
    tihrs4          DECIMAL(5,2)                        ,
    tihrs5          DECIMAL(5,2)                        ,
    tiovt1          DECIMAL(5,2)                        ,
    tiovt2          DECIMAL(5,2)                        ,
    tiovt3          DECIMAL(5,2)                        ,
    tiovt4          DECIMAL(5,2)                        ,
    tiprem          VARCHAR(1)      ,
    tiaddr          DECIMAL(5,2)                        ,
    tislun          VARCHAR(1)      ,
    tisovt          VARCHAR(1)      ,
    tisotm          VARCHAR(1)      ,
    timis1          VARCHAR(1)     ,
    timis2          VARCHAR(1)      ,
    timis3          VARCHAR(1)       ,
    timis4          VARCHAR(1)       ,
    timisc          VARCHAR(1)      ,
    tipost          VARCHAR(1)     ,
    tirdti          DECIMAL(8,0)                        ,
    tiprco          VARCHAR(10)      ,
    tiwkno          DECIMAL(2,0)                        ,
    tiscdt          VARCHAR(1)      ,
    ticall          VARCHAR(1)      ,
    tipral          VARCHAR(1)     ,
    titiob          VARCHAR(1)     ,
    timorb          VARCHAR(1)       ,
    tiscdi          VARCHAR(2)      ,
    tiscdo          VARCHAR(2)      ,
    tirapc          VARCHAR(5)      ,
    tiscpc          VARCHAR(5)      ,
    ticipc          VARCHAR(5)      ,
    tibsft          DECIMAL(14,0)                       ,
    tiorto          DECIMAL(14,0)                       ,
    tiseqn          DECIMAL(10,0)                       ,
    tishrs          DECIMAL(5,2)                        ,
    tipstr          DECIMAL(14,0)                       ,
    tipend          DECIMAL(14,0)                       ,
    titpol          VARCHAR(10)     ,
    tispev          VARCHAR(10)     ,
    tixc01          VARCHAR(1)       ,
    tixc02          VARCHAR(1)       ,
    tixc03          VARCHAR(1)       ,
    tixc04          VARCHAR(1)      ,
    tixc05          VARCHAR(1)      ,
    tixc06          VARCHAR(1)      ,
    tixc07          VARCHAR(1)      ,
    tixc08          VARCHAR(1)     ,
    tixc09          VARCHAR(1)      ,
    tixc10          VARCHAR(1)      ,
    tixc11          VARCHAR(1)       ,
    tixc12          VARCHAR(1)      ,
    tixc13          VARCHAR(1)      ,
    tixc14          VARCHAR(1)      ,
    tixc15          VARCHAR(1)       ,
    tixc16          VARCHAR(1)      ,
    tixc17          VARCHAR(1)       ,
    tixc18          VARCHAR(1)       ,
    tixc19          VARCHAR(1)      ,
    tixc20          VARCHAR(1)       ,
    tixc21          VARCHAR(1)       ,
    tixc22          VARCHAR(1)      ,
    tixc23          VARCHAR(1)      ,
    tixc24          VARCHAR(1)       ,
    tixc25          VARCHAR(1)      ,
    tixx01          VARCHAR(1)      ,
    tixx02          VARCHAR(1)      ,
    tixx03          VARCHAR(1)      ,
    tixx04          VARCHAR(1)      ,
    tixx05          VARCHAR(1)       ,
    tixx06          VARCHAR(2)      ,
    tixx07          VARCHAR(2)      ,
    tixx08          VARCHAR(2)       ,
    tixx09          VARCHAR(2)      ,
    tixx10          VARCHAR(2)      ,
    tixx11          VARCHAR(10)      ,
    tixx12          VARCHAR(10)      ,
    tixx13          VARCHAR(10)      ,
    tixx14          DECIMAL(14,0)                       ,
    tixx15          DECIMAL(10,0)                       ,
    tixx16          DECIMAL(10,0)                       ,
    tixx17          DECIMAL(6,0)                        ,
    tixx18          DECIMAL(6,0)                        ,
    tixx19          DECIMAL(6,0)                        ,
    tixx20          DECIMAL(5,2)                        ,
    tixx21          DECIMAL(5,2)                        ,
    tixx22          DECIMAL(5,2)                        ,
    tixx23          VARCHAR(1)      ,
    tixx24          VARCHAR(1)       ,
    tixx25          VARCHAR(1)       ,
    tixx26          VARCHAR(1)       ,
    tixx27          VARCHAR(1)      ,
    tixx28          VARCHAR(10)     ,
    tixx29          VARCHAR(10)     ,
    tixx30          VARCHAR(10)     ,
    tixx31          VARCHAR(10)     ,
    tixx32          VARCHAR(10)     ,
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
'hdfs://swiftdev1/user/hive/warehouse/dev.db/asft_clc2_cktimefl_wrk';
