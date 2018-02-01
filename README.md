# PBfB2018 project "SQL search engine"

*By Anne-Marie Veenstra-Skirl and Kiran Gurung*

This project's goal was to write a python script that would provide the user with a custom search in an SQL database. 

## Requirements for the script to be able to work

  * Installed software and software packages
    -My SQL Server (in Linux via Synaptic package manager)
    -Python 2.7 or higher

  * an SQL database-file (fakeDB.sql)

  * preparations before using the script
    -load the database into the mySQL Server

## Information on the fake database

The table structure of the fake database is identical to the one the script will be applied to. But there are only 36 entries, that were made up by the authors. The different columns contain the following information:
  * devices: freezer_R and freezer_Q
  * locations: 13P01 to 13P18, 20C01 to 20C06, 07B01 to 07B12
  * species: L. lactis, E.coli, B. subtilis
  * plasmid: no plasmid, plasmid 1 to plasmid 6
  * strains: MG1363 to MG1365
  * owners: Anita Skirl and Marianne Veenstra
  * datum: May, June, September 1612
  * info: random descriptional text, as well as empty entries
