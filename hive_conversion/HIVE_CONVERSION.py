import datetime
import os
import glob
import string
import re
import fileinput

current_dt = datetime.datetime.now()
current_dt = current_dt.strftime('%Y-%m-%d')
print(current_dt)


class TeradataToSQLServer:
	def main(self, args=None):
		pass

	def reformatDDL(self):
		# path = 'Development/python_scripts/'s

		replacements = {'dSTAGE.dbo.':'',
					'USE dSTAGE;' : '',
					'Use dSTAGE;' : '',
					'Use dStage;' : '',
					'NOT NULL' : ''
					}


		for filename in glob.glob('*.sql'):
			table_name = filename.replace('.sql', '')
			tablename = table_name
			static_block = 	(')ROW FORMAT SERDE'
							'\norg.apache.hadoop.hive.contrib.serde2.MultiDelimitSerDe'
							'\nWITH SERDEPROPERTIES ('
							"\n'field.delim'='\",\"')"
							'\nSTORED AS INPUTFORMAT'
							'\norg.apache.hadoop.mapred.TextInputFormat'
							'\nOUTPUTFORMAT'
							'\norg.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
							'\nLOCATION'
							"\n'hdfs://swiftdev1/user/hive/warehouse/dev.db/" + table_name + ".csv';")


			header = ("-- * DDL HEADER: dev." + table_name + " ***"
					"\n-- *************************** TABLE HEADER ******************************"
					"\n-- *"
					"\n-- *     NAME   :  " + table_name + ".sql"
					"\n-- *"
					"\n-- *     PURPOSE:  Creates dev." + table_name + " table"
					"\n-- *"
					"\n-- *     HISTORY:  AUTHOR    DATE            DESCRIPTION"
					"\n-- *               ETLAdmin  " + current_dt + "      Table created"
					"\n-- *"
					"\n-- ***********************************************************************")

			column_comment = ''

			# print(header)

			# print(static_block)
			# print(table_name)
			print(tablename)


			with open(filename) as infile:
				infile = infile.readlines()

			with open(tablename + '_new' + '.sql' , 'w') as outfile:
				for line in infile:
					if line.startswith('**'):
						line = line.replace('**', '--')

					if line.startswith('/*'):
						line = re.sub(r'(?m)^\/.*\n?', '', line)


					if line.startswith(''):
						line = re.sub(r'(?m)^\-.*\n?', '', line)

					if line.startswith('CREATE TABLE '):
						line = line.replace('CREATE TABLE ', header + '\nUSE dev;\nCREATE TABLE dev.')

					if line.startswith('EXECUTE'):
						line = re.sub(".*EXECUTE.*\n?","",line)

					if line.startswith('    ETL_TS'):
						line = re.sub(".*ETL_TS.*\n?","",line)

					if line.startswith('	PRIMARY KEY'):
						line = re.sub(".*PRIMARY KEY.*\n?",static_block,line)

					elif 'INDEX' in line:
						line = re.sub(".*INDEX.*\n?",static_block,line)

					if 'SV_JOURNAL_SEQNO' in line:
						line = line.replace(',','')

					if line.startswith(');'):
						line = line.replace(');', '')

					for src, target in replacements.iteritems():
						line = line.replace(src, target)
					outfile.write(line)


def main(args=None):
    process = TeradataToSQLServer()
    process.reformatDDL()


if __name__ == '__main__':main()
