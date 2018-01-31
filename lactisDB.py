#! /usr/bin/env python

#A python script for searches in an SQL database

#Preparations before the interactions with the user start
#--------------------------------------------------------

#load the modules needed
import MySQLdb		#for the interactions with MySQL

#make a connection to the SQL server
MyConnection = MySQLdb.connect( host = "localhost", user = "root", passwd = "PBfB2018", db = "lactis")
MyCursor = MyConnection.cursor()

#preparing to write the results in a file
ResultFileName = "SearchResults.txt"
ResultFile = open(ResultFileName, 'w')


#Interaction with the user - getting the variables for the search
#----------------------------------------------------------------

#print an introduction to the script for the user
StartingPrompt='''This is a search engine for the database "lactis.sql"

You can search among the following fields:

* device\t*location\t*owner\t*species\t*strain
* plasmid\t*info\t*abm(antibiotic marker)\t*genotype\t*datum

Please choose only one field. 
'''
print StartingPrompt

#save the search field
SearchField = raw_input("In which field do you want to search?\n")

#save the search term
SearchTerm = raw_input("Please enter your search term. You can use % as a wildcard.\n")

#Any sorting?
print "Do you want to sort the results?"
SortYN = raw_input("Yes/No\t")

#if sorting, ask for the column
if SortYN == "Yes":
        SearchSort = raw_input("According to what column do wou want to sort your results?")


#Doing the search and working with the results
#---------------------------------------------

#Execute an SQL command

if SortYN == "No":
	#mySQL command without sorting
	SQL = "SELECT device,location,owner,species,strain,plasmid,info,abm,genotype,datum FROM lactis WHERE %s LIKE '%s';" % (SearchField, SearchTerm)
else:
	#mySQL command with sorting
	SQL = "SELECT device,location,owner,species,strain,plasmid,info,abm,genotype,datum from lactis WHERE %s LIKE '%s' ORDER BY %s;" % (SearchField, SearchTerm, SearchSort)


print "Your SQL Search: ", SQL			#prints the command as check
SQLresult=MyCursor.execute(SQL)			#executes the command
print
print "Number of hits: %d " % SQLresult
print
print "-----------------------------------------------------------------------------------------------"
print "Device    \tLocation\towner\tspecies\tstrain\tplasmid\tinfo\tabm\tgenotype\tdatum"
print "-----------------------------------------------------------------------------------------------"
print

#The header of the file
ResultFile.write("""\n 
Your SQL Search: """)
ResultFile.write(SQL)
ResultFile.write("""\n
Number of hits: """)
ResultFile.write(str(SQLresult))
ResultFile.write("""\n
-----------------------------------------------------------------------------------------------
Device    \tLocation\towner\tspecies\tstrain\tplasmid\tinfo\tabm\tgenotype\tdatum
-----------------------------------------------------------------------------------------------

""")


FirstResults=MyCursor.fetchall()                #variable that contains the search results

#for loop like in the book:
for Index in range(SQLresult):
	#create a list with all entries
	entry=[FirstResults[Index][0],FirstResults[Index][1],FirstResults[Index][2],FirstResults[Index][3],FirstResults[Index][4],FirstResults[Index][5],FirstResults[Index][6],FirstResults[Index][7],FirstResults[Index][8],FirstResults[Index][9]]
	#print the list for the current line
	ResultLine = "{e[0]}\t{e[1]}\t{e[2]}\t{e[3]:15}\t{e[4]:15}\t{e[5]}\t{e[6]}\t{e[7]}\t{e[8]}\t{e[9]}".format(e=entry)
	print ResultLine
	#write the line to the destination file
	ResultFile.write(ResultLine+"\n")

#Print the Search results at the end, if there are more than 20 results
if SQLresult >20:
	print "--------------------------------------------------------------------------------------------------"
        print "Device    \tLocation\towner\tspecies\tstrain\tplasmid\tinfo\tabm\tgenotype\tdatum"
        print "--------------------------------------------------------------------------------------------------"
	print
	print "Your SQL Search: ", SQL                  #prints the command as check
	print
	print "Number of hits: %d " % SQLresult
	print
	print "--------------------------------------------------------------------------------------------------"


#close the written file
ResultFile.close()

#close the conncection to the SQL server
MyCursor.close()
MyConnection.close()
