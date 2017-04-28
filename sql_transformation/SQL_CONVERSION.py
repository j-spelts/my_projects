import datetime
import os
import glob
import string
import re
# import pyodbc


current_dt = datetime.datetime.now()
current_dt = current_dt.strftime('%Y-%m-%d')
print(current_dt)


class TeradataToSQLServer:

	def main(self, args=None):
		pass

	def reformatDDL(self):

		replacements = {' SET':'',
					'dedw_stage': 'dSTAGE.dbo',
					'CHARACTER LATIN' : '',
					'aswift': 'asft_isr7',
					'TIMESTAMP(0)' : 'datetime2',
					'TIMESTAMP(3)' : 'datetime2',
					'TIMESTAMP(6)' : 'datetime2',
					'INTEGER' : 'INT'
					}


		for filename in glob.glob('*.ddl'):
			table_name = filename.replace('.ddl', '')
			tablename = 'dSTAGE.dbo.' + table_name
			# print(table_name)


			static_block = ("EXECUTE sp_addextendedproperty	'MS_Description', 'RRN_FIELD', 'user', dbo, 'table', "+ table_name + ", 'column', RRN_FIELD;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_MANIP_TYPE', 'user', dbo, 'table', "+ table_name + ", 'column', SV_MANIP_TYPE;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_TRANS_ID', 'user', dbo, 'table', "+ table_name + ", 'column', SV_TRANS_ID;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_TRANS_ROW_SEQ', 'user', dbo, 'table', "+ table_name + ", 'column', SV_TRANS_ROW_SEQ;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_SENDING_TABLE', 'user', dbo, 'table', "+ table_name + ", 'column', SV_SENDING_TABLE;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_SENDING_DBMS', 'user', dbo, 'table', "+ table_name + ", 'column', SV_SENDING_DBMS;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_SENDING_SERVER', 'user', dbo, 'table', "+ table_name + ", 'column', SV_SENDING_SERVER;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_TRANS_TIMESTAMP', 'user', dbo, 'table', "+ table_name + ", 'column', SV_TRANS_TIMESTAMP;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_TRANS_USERNAME', 'user', dbo, 'table', "+ table_name + ", 'column', SV_TRANS_USERNAME;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_PROGRAM_NAME', 'user', dbo, 'table', "+ table_name + ", 'column', SV_PROGRAM_NAME;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_JOB_NAME', 'user', dbo, 'table', "+ table_name + ", 'column', SV_JOB_NAME;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_JOB_USER', 'user', dbo, 'table', "+ table_name + ", 'column', SV_JOB_USER;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_JOB_NUMBER', 'user', dbo, 'table', "+ table_name + ", 'column', SV_JOB_NUMBER;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_OP_TIMESTAMP', 'user', dbo, 'table', "+ table_name + ", 'column', SV_OP_TIMESTAMP;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_FILE_MEMBER', 'user', dbo, 'table', "+ table_name + ", 'column', SV_FILE_MEMBER;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_RECEIVER_LIBRARY', 'user', dbo, 'table', "+ table_name + ", 'column', SV_RECEIVER_LIBRARY;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_RECEIVER_NAME', 'user', dbo, 'table', "+ table_name + ", 'column', SV_RECEIVER_NAME;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'SV_JOURNAL_SEQNO', 'user', dbo, 'table', "+ table_name + ", 'column', SV_JOURNAL_SEQNO;"
					"\nEXECUTE sp_addextendedproperty	'MS_Description', 'ETL_TS', 'user', dbo, 'table', "+ table_name + ", 'column', ETL_TS;")

			header_section = ("-- * DDL HEADER: dev." + table_name + " ***"
					"\n-- *************************** TABLE HEADER ******************************"
					"\n-- *"
					"\n-- *     NAME   :  " + table_name + ".sql"
					"\n-- *"
					"\n-- *     PURPOSE:  Creates dev." + table_name + " table"
					"\n-- *"
					"\n-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION"
					"\n-- *               ETLAdmin  " + current_dt + "		Teradata to SQL Server Conversion"
					"\n-- *"
					"\n-- ***********************************************************************")

			static_columns = ('    RRN_FIELD           VARCHAR(10),'
							'\n    SV_MANIP_TYPE       CHAR(1),'
							'\n    SV_TRANS_ID         BIGINT,'
							'\n    SV_TRANS_ROW_SEQ    INT,'
							'\n    SV_SENDING_TABLE    VARCHAR(25),'
							'\n    SV_SENDING_DBMS     VARCHAR(25),'
							'\n    SV_SENDING_SERVER   VARCHAR(25),'
							'\n    SV_TRANS_TIMESTAMP  VARCHAR(20),'
							'\n    SV_TRANS_USERNAME   VARCHAR(25),'
							'\n    SV_PROGRAM_NAME     VARCHAR(25),'
							'\n    SV_JOB_NAME         VARCHAR(25),'
							'\n    SV_JOB_USER         VARCHAR(25),'
							'\n    SV_JOB_NUMBER       VARCHAR(25),'
							'\n    SV_OP_TIMESTAMP     VARCHAR(20),'
							'\n    SV_FILE_MEMBER      VARCHAR(25),'
							'\n    SV_RECEIVER_LIBRARY VARCHAR(25),'
							'\n    SV_RECEIVER_NAME    VARCHAR(25),'
							'\n    SV_JOURNAL_SEQNO    BIGINT,'
							'\n    ETL_TS 				datetime2')


			with open(filename) as infile:
				infile = infile.readlines()

			with open(tablename + '_new' + '.ddl' , 'w') as outfile:
				for line in infile:
					for src, target in replacements.iteritems():
						line = line.replace(src, target)
					if line.startswith('**'):
						line = re.sub(r'(?m)^\*.*\n?', '', line)

					if 'etl_chk_sum' or 'etl_src_id' or 'etl_ins_id' or 'etl_upd_id' or 'etl_ins_ld_id' or 'etl_upd_ld_id' or 'etl_ins_ts' or 'etl_upd_ts' or 'rrnbr' in line:
						line = re.sub(".*etl_chk_sum.*\n?","",line)
						line = re.sub(".*etl_src_id.*\n?","",line)
						line = re.sub(".*etl_ins_id.*\n?","",line)
						line = re.sub(".*etl_upd_id.*\n?","",line)
						line = re.sub(".*etl_ins_ld_id.*\n?","",line)
						line = re.sub(".*etl_upd_ld_id.*\n?","",line)
						line = re.sub(".*etl_ins_ts.*\n?","",line)
						line = re.sub(".*etl_upd_ts.*\n?","",line)
						line = re.sub(".*rrnbr.*\n?","",line)

					if 'NO FALLBACK,' or 'NO BEFORE JOURNAL' or 'NO AFTER JOURNAL' or 'MAXIMUM DATABLOCKSIZE' in line:
						line = re.sub(".*NO FALLBACK.*\n?","",line)
						line = re.sub(".*NO BEFORE JOURNAL.*\n?","",line)
						line = re.sub(".*NO AFTER JOURNAL.*\n?","",line)
						line = re.sub(".*MAXIMUM DATABLOCKSIZE.*\n?","",line)

						#adds the use command necessary for SQL Server
					if line.startswith('CREATE TABLE'):
						line = line.replace('CREATE TABLE dSTAGE', header_section + 'use dSTAGE; \n\n\n'
												'CREATE TABLE dSTAGE').replace(',', '')

					if line.startswith('CALL'):
						line = re.sub(".*CALL.*\n?","",line)

					if line.startswith('/'):
						line = re.sub(r'(?m)^\/.*\n?', '', line)

					if line.startswith('CREATE  TABLE' or 'CREATE  TABLE'):
						line = line.replace(',', '')

					if line.startswith('    PRIMARY '):
						primary_key = re.findall(r'INDEX ([^|]*)', line)
						primary_key = ''.join(primary_key)
						primary_key = primary_key.replace('\n', '')
						final_primary_key = "PRIMARY INDEX " + primary_key
						line = final_primary_key.replace(final_primary_key, "INDEX " + primary_key + "\n);")

					if line.startswith('    UNIQUE '):
						primary_key = re.findall(r'UNIQUE PRIMARY INDEX ([^|]*)', line)
						primary_key = ''.join(primary_key)
						print(primary_key)
						primary_key = primary_key.replace('\n', '')
						final_primary_key = "PRIMARY INDEX " + primary_key
						# print(final_primary_key)
						line = final_primary_key.replace(final_primary_key, "PRIMARY KEY " + primary_key + "\n);")

					if line.startswith(';'):
						line = line.replace(';', '')

					if line.startswith(')'):
						line = line.replace(')', static_columns)

					if line.startswith('COMMENT ON TABLE'):
						comment = re.findall(r'IS ([^|]*)', line)
						comment = ''.join(comment).strip('\n')
						comment = comment.replace(';', '').strip()
						comment = comment.strip('\n')
						final_comment = "COMMENT ON TABLE dSTAGE." + table_name + "  IS " + comment
						line = final_comment.replace(final_comment, 
								"EXECUTE sp_addextendedproperty	'MS_Description', " + comment + ",'user', dbo, 'table', " + table_name + ", NULL, NULL;\n") + '\n\n\n' + static_block


					if line.startswith('COMMENT ON COLUMN'):
						comment = re.findall(r'IS ([^|]*)', line)
						comment = ''.join(comment).strip('\n')
						comment = comment.replace(';', '').strip()
						column_name = line.split('.')
						column_name = ''.join(column_name[3:4])
						column_name = column_name.split(' ')
						column_name = ''.join(column_name[:1]).strip()
						column_comment = "\nEXECUTE sp_addextendedproperty	'MS_Description', " + comment + ", 'user', dbo, 'table', " + table_name + ", 'column', " + column_name + ";	"
						if column_name in line:
							line = re.sub(".*" + column_name + ".*\n?","",line)
							line = line.replace('', column_comment).rstrip('	')

					if line.startswith('EXECUTE'):
						line = line.replace('dSTAGE', 'dbo')

					outfile.write(line)



def main(args=None):
    process = TeradataToSQLServer()
    process.reformatDDL()


if __name__ == '__main__':main()
