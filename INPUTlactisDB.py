#! /usr/bin/env python

#print an introduction to the script for the user
StartingPrompt='''This is a search engine for the database "lactis.sql"

You can search among the following fields:

* device\t*location\t*owner\t*species\t*strain
* plasmid\t*info\t*abm(antibiotic marker)\t*genotype\t*datum

Please choose only one field.
'''

print StartingPrompt
SearchField = raw_input("In which field do you want search?\n")		#get the search fields

SearchTerm = raw_input("Please enter your search term. You can use % as a wildcard.\n")

print "Do you want to sort the results?"
SortYN = raw_input("Yes/No\t")

if SortYN == "Yes":
	SearchSort = raw_input("According to what column do wou want to sort your results?")

