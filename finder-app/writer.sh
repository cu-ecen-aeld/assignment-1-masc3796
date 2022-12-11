#!/bin/bash

# Updated 12/10/2022
# $1 = Path to a filename "writefile"
# $2 = String to Write "writestr" 
# Ouputs = String containing number of files and lines in file with said string

#Exit with error 1 if either argument is unspecified
if [[ $# -lt 2 ]]
then 
    echo "Missing Argument(s), Exiting..."
    exit 1
fi 



#Attempt to create the file path, 
#no-op (:) if it works, exit with error 1 if it fails
#Attempt to Write the file

fpath=$(dirname $1)
mkdir -p $fpath
echo $2 > $1

#Check if the file was created successfilly
if [[ -f $1 ]];
then 
    :
else
    echo "Failed to Create/Write the file"
    exit 1
fi
