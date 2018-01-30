#! /usr/bin/env python

#A python script for searches in an SQL database

#load the modules needed
import MySQLdb		#for the interactions with MySQL

#make a connection to the SQL server
MyConnection = MySQLdb.connect( host = "localhost", user = "root", passwd = "PBfB2018", db = "lactis")
MyCursor = MyConnection.cursor()

#input = raw_input("Please enter your search string")		#Asks for an expression to search


#Execute an SQL command
#SQL = "SELECT * FROM lactis WHERE owner LIKE '%s';" % (input)		#search command
SQL = "SELECT * FROM lactis WHERE owner LIKE '%Skirl';"		#Standard search during development
print "Your Search: ", SQL					#prints the command as check
SQLresult=MyCursor.execute(SQL)					#executes the command
print
print "Number of hits: %d " % SQLresult
print
print "-----------------------------------------------------------------------------------------------"
print "Device    \tLocation\towner\tspecies\tstrain\tplasmid\tinfo\tabm\tgenotype\tdatum"
print "-----------------------------------------------------------------------------------------------"
print


FirstResults=MyCursor.fetchall()                                #A tuple that contains the search results

#for loop like in the book:

for Index in range(SQLresult):
	#create a list with only relevant columns, resorted
	entry=[FirstResults[Index][0],FirstResults[Index][15],FirstResults[Index][12],FirstResults[Index][8],FirstResults[Index][5],FirstResults[Index][4],FirstResults[Index][11],FirstResults[Index][9],FirstResults[Index][10],FirstResults[Index][18]]
	#print the list
	print "{e[0]}\t{e[1]}\t{e[2]}\t{e[3]:15}\t{e[4]:15}\t{e[5]}\t{e[6]}\t{e[7]}\t{e[8]}\t{e[9]}".format(e=entry)

#example line
#'freezer_E', '13', 'G', '01', '', 'MG1363', 'none', 61588L, 'L. lactis', '', '', '', 'Anne-Marie Veenstra-Skirl', '', '', '13G01', 'workbox', '', '01-05-2017', 'N', 'N', '', '', '', '-', '', '', '', '', ''


#close the conncection to the SQL server
MyCursor.close()
MyConnection.close()
