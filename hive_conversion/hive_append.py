import datetime
import os
import glob
import string
import re


current_dt = datetime.datetime.now()
current_dt = current_dt.strftime('%Y-%m-%d')
print(current_dt)


class TeradataToSQLServer:

	def main(self, args=None):
		pass

	def reformatDDL(self):

		replacements = {}

		for filename in glob.glob('*.ddl'):
			table_name = filename.replace('.ddl', '')
			tablename = table_name.replace('_wrk', '_hst')
			print(table_name)

			repl_line = """'hdfs://swiftdev1/user/hive/warehouse/dev.db/""" + table_name + """';"""
			print(repl_line)


			with open(filename) as infile:
				infile = infile.readlines()

			with open(tablename + '.ddl' , 'w') as outfile:
				for line in infile:
					for src, target in replacements.iteritems():
						line = line.replace(src, target)
					if line.startswith(')'):
						line = line.replace(')', ')\nPARTITIONED BY (SV_PARTN_PERIOD INT)\n')

					if line.startswith(repl_line):
						line = line.replace(repl_line, 
							repl_line + """\ntblproperties("orc.compress"="zlib");""")


					outfile.write(line)



def main(args=None):
    process = TeradataToSQLServer()
    process.reformatDDL()


if __name__ == '__main__':main()
