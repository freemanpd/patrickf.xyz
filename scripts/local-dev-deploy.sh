#!/bin/bash

# set x

export DBNAME='devdb'
export DBHOST='0.0.0.0'
export DBUSER='postgres'
export DBPASS='password123'
export DBPORT='5432'
export DBSECRETKEY='$2j=bhs+=-&sp=glzxka%thsaq%tmrjt@+my06y@q4osfnmkn)'
export DEBUGLOG="TRUE"
# Note: not used for PRODUCTION!!!! 

docker run --rm   --name devdb -e POSTGRES_PASSWORD=password123 -e POSTGRES_DB=devdb -e POSTGRES_USER=postgres -d -p 5432:5432 postgres