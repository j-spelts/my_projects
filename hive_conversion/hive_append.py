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
					}


		for filename in glob.glob('*.ddl'):
			table_name = filename.replace('.ddl', '')
			tablename = 'dSTAGE.dbo.' + table_name

			with open(filename) as infile:
				infile = infile.readlines()

			with open(tablename + '_new' + '.ddl' , 'w') as outfile:
				for line in infile:
					for src, target in replacements.iteritems():
						line = line.replace(src, target)


					outfile.write(line)


def main(args=None):
    process = TeradataToSQLServer()
    process.reformatDDL()


if __name__ == '__main__':main()