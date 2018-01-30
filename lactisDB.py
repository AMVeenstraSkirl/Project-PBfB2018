#! /usr/bin/env python

#A python script for searches in an SQL database

#load the modules needed
import MySQLdb		#for the interactions with MySQL

#make a connection to the SQL server
MyConnection = MySQLdb.connect( host = "localhost", user = "root", passwd = "PBfB2018", db = "lactis")
MyCursor = MyConnection.cursor()

input = raw_input("Please enter your search string")		#Asks for an expression to search


#Execute an SQL command
SQL = "SELECT * FROM lactis WHERE owner LIKE '%s';" % (input)		#search command
print SQL							#prints the command as check
SQLresult=MyCursor.execute(SQL)					#executes the command

PrintResults=MyCursor.fetchall()				#Gets the search results
print PrintResults[1:][1:5]						#prints the search results

#close the conncection to the SQL server
MyCursor.close()
MyConnection.close()
