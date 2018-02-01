# PBfB2018 project "SQL search engine"

*By Anne-Marie Veenstra-Skirl and Kiran Gurung*

This project's goal was to write a python script that would provide the user with a custom search in an SQL database.

## Contents of the Repository
  * README.md
  * lactisDB.py  - python script
  * fakeDB.sql   - fake database
  * SearchResults.txt - example file, written by a run of the script on the fake database

## Requirements for the script to be able to work

  * Installed software and software packages
    - My SQL Server (in Linux via Synaptic package manager)
    - Python 2.7 or higher
    
  * preparations before using the script
    - create an empty database in mysql
    - load the database fakeDB.sql into the mySQL Server from the shell with `mysql -u root -p fakeDB < fakeDB.sql` The script is already adjusted to use the database "fakeDB" and its table "lactis".

## Functionalities provided by the script

After executing the python-script, the user will be informed about the possible columns in which a search can be performed and asks for a choice. The input is checked and the script will only proceed if the input matches the exact spelling given at the beginning. A second input is requested which will be the search term that will be used. In a third question the user can decide whether he wants his results sorted according to a certain column, and can determine which one, if he likes so. The found results will be print to the screen, as well as written to a file, which will be overwritten everytime the script is run (room for improvement...).

## Information on the fake database

The table structure of the fake database is identical to the one the script will be applied to. There are 36 entries completely made up by the authors, instead of 33,000 confidential entries in the original database. The different columns of the fake database contain the following information, that can be used as test queries, together with % as a wildcard:
  * devices: freezer_R and freezer_Q
  * locations: 13P01 to 13P18, 20C01 to 20C06, 07B01 to 07B12
  * species: L. lactis, E.coli, B. subtilis
  * plasmid: no plasmid, plasmid 1 to plasmid 6
  * strains: MG1363 to MG1365
  * owners: Anita Skirl and Marianne Veenstra
  * datum: May, June, September 1612 (dd-mm-yyyy)
  * info: random descriptional text, as well as empty entries
